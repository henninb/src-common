import java.util.Arrays;

/**
 * Utility class to do Base64 encoding, as defined by RFC 2045,
 * section 6.8 (http://www.ietf.org/rfc/rfc2045.txt)
 * Uses the same class and function names as Sun's implementation from
 * sun.misc
 */
public class BASE64Encoder {
/**
 * Convert a byte to an integer.  Needed because in Java bytes
 * are signed, and for Base64 purposes they are not.  If not done
 * this way, when converted to an int, 0xFF will become -127
 * @param b Byte value to be converted
 * @return Value as an integer, as if byte was unsigned
 */
private int uByteToInt( byte b ) {
  if( b >= 0 ) {
    return (int)b;
  }

  return 256 + b;
}

/**
 * Encode an array of bytes using Base64
 * @param data[] The bytes to be encoded
 * @return A valid Base64 representation of the input
 */
public String encode( byte data[] ) {
  // Base64 encoding yields a String that is 33% longer than the byte array
  int charCount = ((data.length * 4) / 3) + 4;

  // New lines will also be needed for every 76 charactesr, so allocate a
  // StringBuffer that is long enough to hold the full result without
  // having to expand later
  StringBuffer result = new StringBuffer(
    (charCount * 77) / 76 );

  int byteArrayLength = data.length;
  int byteArrayIndex = 0;
  int byteTriplet = 0;
  while( byteArrayIndex < byteArrayLength - 2 ) {
    byteArrayIndex = processData(
      data, byteArrayIndex, result );
  }

  byteArrayIndex = checkIfWeHave1ByteLeftOver(
    byteArrayIndex, byteArrayLength, data, result );
  checkIfWeHaveTwoBytesLeftOver(
    byteArrayIndex, byteArrayLength, data, result );

  return result.toString();
}

private int processData( byte[] data, int index, StringBuffer result ) {
  int byteTriplet;
  // Build the 24 bit byte triplet from the input data
  byteTriplet = uByteToInt( data[index++] );
  // Each input byte contributes 8 bits to the triplet
  byteTriplet <<= 8;
  byteTriplet |= uByteToInt( data[index++] );
  byteTriplet <<= 8;
  byteTriplet |= uByteToInt( data[index++] );

  // Look at the lowest order six bits and remember them
  byte b4 = (byte)(Constants.SIX_BIT_MASK & byteTriplet);
  // Move the byte triplet to get the next 6 bit value
  byteTriplet >>= 6;
  byte b3 = (byte)(Constants.SIX_BIT_MASK & byteTriplet);
  byteTriplet >>= 6;
  byte b2 = (byte)(Constants.SIX_BIT_MASK & byteTriplet);
  byteTriplet >>= 6;
  byte b1 = (byte)(Constants.SIX_BIT_MASK & byteTriplet);

  // Add the Base64 encoded character to the result String
  result.append( byteToChar( b1 ));
  result.append( byteToChar( b2 ));
  result.append( byteToChar( b3 ));
  result.append( byteToChar( b4 ));

  // There are 57 bytes for every 76 characters, so wrap the line when needed
  if( index % 57 == 0 ) {
    result.append( "\n" );
  }
  return index;
}

private void checkIfWeHaveTwoBytesLeftOver( int index, int length, byte[] byteArray, StringBuffer sb ) {
  int byteTriplet;
  if( index == length - 2 ) {
    // Convert our two bytes to an int
    byteTriplet = twoBytesToInt( byteArray, index );
    // Right pad the third 6 bit value with zeros
    byteTriplet <<= 2;

    byte b3 = (byte)(Constants.SIX_BIT_MASK & byteTriplet);
    byteTriplet >>= 6;
    byte b2 = (byte)(Constants.SIX_BIT_MASK & byteTriplet);
    byteTriplet >>= 6;
    byte b1 = (byte)(Constants.SIX_BIT_MASK & byteTriplet);

    sb.append( byteToChar( b1 ));
    sb.append( byteToChar( b2 ));
    sb.append( byteToChar( b3 ));

    // Add "==" to the output to make it a multiple of 4 Base64 characters
    sb.append( "=" );
  }
}

private int checkIfWeHave1ByteLeftOver( int index, int length, byte[] byteArray, StringBuffer sb ) {
  int byteTriplet;
  if( index == length - 1 ) {
    // Convert our one byte to an int
    byteTriplet = uByteToInt( byteArray[index++] );
    // Right pad the second 6 bit value with zeros
    byteTriplet <<= 4;

    byte b2 = (byte)(Constants.SIX_BIT_MASK & byteTriplet);
    byteTriplet >>= 6;
    byte b1 = (byte)(Constants.SIX_BIT_MASK & byteTriplet);

    sb.append( byteToChar( b1 ));
    sb.append( byteToChar( b2 ));

    // Add "==" to the output to make it a multiple of 4 Base64 characters
    sb.append( "==" );
  }
  return index;
}

private int twoBytesToInt( byte[] data, int byteArrayIndex ) {
  int byteTriplet;
  byteTriplet =
    uByteToInt( data[byteArrayIndex++] );
  byteTriplet <<= 8;
  byteTriplet |= uByteToInt( data[byteArrayIndex++] );
  return byteTriplet;
}

/**
 * Convert a byte between 0 and 63 to its Base64 character equivalent
 * @param b Byte value to be converted
 * @return Base64 char value
 */
private char byteToChar( byte b ) {
  if( b < Constants.LOWER_CASE_A_VALUE ) {
    return (char)('A' + b);
  }

  if( b < Constants.ZERO_VALUE ) {
    return (char)('a' + (b - Constants.LOWER_CASE_A_VALUE));
  }

  if( b < Constants.PLUS_VALUE ) {
    return (char)('0' + (b - Constants.ZERO_VALUE));
  }

  if( b == Constants.PLUS_VALUE ) {
    return '+';
  }

  if( b == Constants.SLASH_VALUE ) {
    return '/';
  }

  throw
  new IllegalArgumentException(
    "Byte "
    new Integer( b )
    " is not a valid Base64 value" );
}

/**
 * Simple test method to make sure everything works correctly
 * Creates 100 randomly sized arrays of random bytes, encodes them,
 * decodes them, and checks to make sure the result matches the input
 */
public static void main( String args[] ) throws Exception {
  String plaintext = "";
  String encodedtext = "";

  //testCodec();
  BASE64Encoder b64encoder = new BASE64Encoder();

  plaintext = "hello world";
  encodedtext = b64encoder.encode( plaintext.getBytes());
  System.out.println( plaintext + "=" + encodedtext );
}

private static void testCodec() {
//      sun.misc.BASE64Encoder encoder = new sun.misc.BASE64Encoder();
//      sun.misc.BASE64Decoder decoder = new sun.misc.BASE64Decoder();

  for( int j = 0; j < 100; j++ ) {
    test( new BASE64Encoder(), new BASE64Decoder());
  }
}

private static void test( BASE64Encoder encoder, BASE64Decoder decoder ) {
  byte test[] = new byte[(int)(100000 * Math.random())];
  for( int i = 0; i < test.length; i++ ) {
    test[i] = (byte)(256 * Math.random());
  }

  String string = encoder.encode( test );
  byte result[] = decoder.decodeBuffer( string );

  if( !Arrays.equals( test, result ) || test.length != result.length ) {
    System.out.println( "ARRAYS DO NOT MATCH!" );
  }
}
}
