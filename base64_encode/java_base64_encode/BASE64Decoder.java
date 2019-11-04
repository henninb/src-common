/**
 * Utility class to do Base64 decoding, as defined by RFC 2045,
 * section 6.8 (http://www.ietf.org/rfc/rfc2045.txt)
 * Uses the same class and function names as Sun's implementation from
 * sun.misc
 */
public class BASE64Decoder {
/**
 * Bit mask for one byte worth of bits in Base64 encoding.
 * Equivalent to binary value 11111111b.
 */
private static final int EIGHT_BIT_MASK = 0xFF;

public static void main( String[] args ) {
  //new ExampleMain();
  //Class c = new ClassFileLoader().loadClass((args[0]));

  if( args.length != 0 ) {
    //try {
    //  Class.forName(args[0]);
    //  System.out.println(Class.forName(args[0]));
    //} catch( Exception e ) {

    //}
    System.err.println( "Usage: java -jar BASE64Decoder.jar <no_args>" );
    System.exit(1);
  }
  //new Example();
  System.out.println( "main" );
}

/**
 * Decode an input String using Base64
 * @param data The String to be decoded
 * @return The appropriate byte array
 */
public byte[] decodeBuffer( String data ) {
  // Create a wrapper around the input to screen out non-Base64 characters
  StringWrapper wrapper = new StringWrapper( data );
  // A Base64 byte array is 75% the size of its String representation
  int length = wrapper.getUsefulLength() * 3 / 4;

  byte byteArray[] = new byte[length];

  int byteTriplet = 0;
  int index = 0;

  // Continue until we have less than 4 full characters left to
  // decode in the input.
  while( index + 2 < length ) {
    index = processByteArray(
      wrapper,
      byteArray,
      index );
  }

  checkIfWeHave1ByteLeft(
    index,
    length,
    wrapper, byteArray );

  checkIfWeHave2BytesLeft( index,
                           length,
                           wrapper,
                           byteArray );

  return byteArray;
}

private void checkIfWeHave2BytesLeft( int index, int length, StringWrapper wrapper, byte[] byteArray ) {
  int byteTriplet;
  if( index == length - 2 ) {
    // Take out the last three characters from the String
    byteTriplet = charToInt( wrapper.getNextUsefulChar());
    byteTriplet <<= 6;
    byteTriplet |= charToInt( wrapper.getNextUsefulChar());
    byteTriplet <<= 6;
    byteTriplet |= charToInt( wrapper.getNextUsefulChar());

    // Remove the padded zeros
    byteTriplet >>= 2;
    byteArray[index + 1] = (byte)(byteTriplet & EIGHT_BIT_MASK);
    byteTriplet >>= 8;
    byteArray[index] = (byte)(byteTriplet & EIGHT_BIT_MASK);
  }
}

private void checkIfWeHave1ByteLeft( int byteIndex, int byteArrayLength, StringWrapper wrapper, byte[] result ) {
  int byteTriplet;
  if( byteIndex == byteArrayLength - 1 ) {
    // Take out the last two characters from the String
    byteTriplet = charToInt( wrapper.getNextUsefulChar());
    byteTriplet <<= 6;
    byteTriplet |= charToInt( wrapper.getNextUsefulChar());

    // Remove the padded zeros
    byteTriplet >>= 4;
    result[byteIndex] = (byte)(byteTriplet & EIGHT_BIT_MASK);
  }
}

private int processByteArray( StringWrapper wrapper, byte[] result, int byteIndex ) {
  int byteTriplet;
  // Package a set of four characters into a byte triplet
  // Each character contributes 6 bits of useful information
  byteTriplet = charToInt( wrapper.getNextUsefulChar());
  byteTriplet <<= 6;
  byteTriplet |= charToInt( wrapper.getNextUsefulChar());
  byteTriplet <<= 6;
  byteTriplet |= charToInt( wrapper.getNextUsefulChar());
  byteTriplet <<= 6;
  byteTriplet |= charToInt( wrapper.getNextUsefulChar());

  // Grab a normal byte (eight bits) out of the byte triplet
  // and put it in the byte array
  result[byteIndex + 2] = (byte)(byteTriplet & EIGHT_BIT_MASK);
  byteTriplet >>= 8;
  result[byteIndex + 1] = (byte)(byteTriplet & EIGHT_BIT_MASK);
  byteTriplet >>= 8;
  result[byteIndex] = (byte)(byteTriplet & EIGHT_BIT_MASK);
  byteIndex += 3;
  return byteIndex;
}

/**
 * Convert a Base64 character to its 6 bit value as defined by the mapping.
 * @param c Base64 character to decode
 * @return int representation of 6 bit value
 */
private int charToInt( char c ) {
  if( c >= 'A' && c <= 'Z' ) {
    return c - 'A';
  }

  if( c >= 'a' && c <= 'z' ) {
    return (c - 'a') + Constants.LOWER_CASE_A_VALUE;
  }

  if( c >= '0' && c <= '9' ) {
    return (c - '0') + Constants.ZERO_VALUE;
  }

  if( c == '+' ) {
    return Constants.PLUS_VALUE;
  }

  if( c == '/' ) {
    return Constants.SLASH_VALUE;
  }

  throw new IllegalArgumentException( c + " is not a valid Base64 character." );
}

/**
 * Simple class to wrap around the String input to ignore all of the
 * non-Base64 characters in the input.  Note that although '=' is
 * a valid character, it does not contribute to the total number
 * of output bytes, and is therefore ignored
 */
private class StringWrapper {
/**
 * The input String to be decoded
 */
private String mString;

/**
 * Current position in the String
 */
private int mIndex = 0;

/**
 * Total number of Base64 characters in the input
 */
private int mUsefulLength;

/**
 * @param c Character to be examined
 * @return Whether or not the character is a Base64 character
 */
private boolean isUsefulChar( char c ) {
  return (c >= 'A' && c <= 'Z') ||
         (c >= 'a' && c <= 'z') ||
         (c >= '0' && c <= '9') ||
         (c == '+') ||
         (c == '/');
}

/**
 * Create the wrapper and determine the number of Base64 characters in
 * the input
 * @param s Input String to be decoded
 */
public StringWrapper( String s ) {
  mString = s;
  mUsefulLength = 0;
  int length = mString.length();
  for( int i = 0; i < length; i++ ) {
    if( isUsefulChar( mString.charAt( i ))) {
      mUsefulLength++;
    }
  }
}

/**
 * @return Total number of Base64 characters in the input.  Does
 * not include '='
 */
public int getUsefulLength() {
  return mUsefulLength;
}

/**
 * Traverse the String until hitting the next Base64 character.
 * Assumes that there is still another valid Base64 character
 * left in the String.
 */
public char getNextUsefulChar() {
  char result = '_';      // Start with a non-Base64 character
  while( !isUsefulChar( result )) {
    result = mString.charAt( mIndex++ );
  }

  return result;
}
}
}
