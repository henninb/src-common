using System;
using System.IO;
using System.Text;

public class Base64Encode {
  private const string cb64 = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/";
  private const string cd64 = "|$$$}rstuvwxyz{$$$$$$$>?@ABCDEFGHIJKLMNOPQRSTUVW$$$$$$XYZ[\\]^_`abcdefghijklmnopq";

  public static void Main( string[] args ) {
    if( args.Length != 0 ) {
      Console.Error.WriteLine( "Usage: " + Environment.GetCommandLineArgs()[0] + " <noargs>" );
      Environment.Exit( 1 );
    }

    byte[] bytes = readFileBinary("input.txt");
    b64_encode(bytes, 72);
    Console.WriteLine(b64Encode(bytes));

    b64_decode(Encoding.ASCII.GetBytes("SGVsbG8gV29ybGQuCg=="));
    Console.WriteLine("Complete");

    //b64("input.txt", "input.b64", 72 );
  }

  //public static char[] stringToChars( string str ) {
  //  char[] myChars = new char[str.Length];
  //  for (int idx_i = 0; idx_i < str.Length; idx_i++) {
  //    myChars[idx_i] = str[idx_i];
  //  }
  //
  //  return myChars;
  //}

  public static string b64Encode( byte[] bytes ) {
    string b64_string = null;

    try {
      b64_string = Convert.ToBase64String(bytes, 0, bytes.Length);
    }
    catch( Exception ex ) {
      Console.WriteLine( ex.Message );
    }
    return b64_string;
  }

  public static char[] b64_decode_block( char[] in1 ) {
    char[] out1 = new char[3];

    out1[0] = (char)(in1[0] << 2 | in1[1] >> 4);
    out1[1] = (char)(in1[1] << 4 | in1[2] >> 2);
    out1[2] = (char)(((in1[2] << 6) & 0xc0) | in1[3]);

    Console.Write(out1[0] + "" + out1[1] + "" + out1[2] + "|");
    return out1;
  }

  //in 3 out 4
  public static char[] b64_encode_block( char[] in1, int length ) {
    char[] out1 = new char[4];

    out1[0] = cb64[in1[0] >> 2];
    out1[1] = cb64[ ((in1[0] & 0x03) << 4) | ((in1[1] & 0xf0) >> 4) ];
    out1[2] = (char)(length > 1 ? cb64[ ((in1[1] & 0x0f) << 2) | ((in1[2] & 0xc0) >> 6) ] : '=');
    out1[3] = (char)(length > 2 ? cb64[ in1[2] & 0x3f ] : '=');
    //Console.Write(out1[0] + "" + out1[1] + "" + out1[2] + "" + out1[3]);
    return out1;
  }


  public static void b64_decode( byte[] bytes ) {
    char[] in1 = new char[4];
    char[] out1;
    char v = '\0';
    int idx_i = 0;
    int idx_j = 0;
    int len = 0;

    while( idx_j < bytes.Length ) {
      for( len = 0, idx_i = 0; idx_i < 4 && idx_j < bytes.Length; idx_i++ ) {
        v = '\0';
        while( idx_j < bytes.Length && v == 0 ) {
          v = (char)bytes[idx_j];
          idx_j++;
          v = (char)((v < 43 || v > 122) ? 0 : cd64[ v - 43 ]);
          if( v > 0 ) {
            v = (char)((v == '$') ? 0 : v - 61);
          }
        }
        if( idx_j < bytes.Length ) {
          len++;
          if( v > 0) {
            in1[ idx_i ] = (char)(v - 1);
          }
        } else {
          in1[idx_i] = '\0';
        }
      }
      if( len > 0 ) {
        out1 = b64_decode_block(in1);
        for( idx_i = 0; idx_i < len - 1; idx_i++ ) {
          //putc( out1[idx_i], outfile );
        }
      }

    }
  }

  public static void b64_encode( byte[] bytes, int line_size ) {
    char[] in1 = new char[3];
    char[] out1;

    int idx_i = 0;
    int idx_j = 0;
    int length = 0;
    int blocksout = 0;

    try {
      while( idx_j < bytes.Length ) {
        length = 0;
        for( idx_i = 0; idx_i < 3; idx_i++ ) {
          if( idx_j < bytes.Length ) {
            in1[idx_i] = (char)bytes[idx_j];
            idx_j++;
            length++;
          } else {
            in1[idx_i] = '\0';
          }
        }
        if( length > 0 ) {
          out1 = b64_encode_block( in1, length );
          Console.Write(out1[0] + "" + out1[1] + "" + out1[2] + "" + out1[3]);
          //for( idx_i = 0; idx_i < 4; idx_i++ ) {
            //putc( out1[idx_i], outfile );
          //}
          blocksout++;
        }
        //if( blocksout >= (line_size / 4) || (idx_j == bytes.Length) ) {
        //  if( blocksout > 0 ) {
        //    //fprintf( outfile, "\r\n" );
        //  }
        //  blocksout = 0;
        //}
      }
      Console.WriteLine(string.Empty);
    }
    catch( Exception e ) {
      Console.WriteLine(e.Message);
    }
  }

  public static byte[] readFileBinary( string fname ) {
    byte[] byteArray = null;
    Stream stream = null;
    FileInfo fileInfo = null;

    try {
      fileInfo = new FileInfo( fname );
      stream = fileInfo.OpenRead();

      byteArray = new byte[stream.Length];
      stream.Read( byteArray, 0, (int)stream.Length );
      stream.Close();
    }
    catch( Exception e ) {
      Console.WriteLine( "ABORT: " + e.Message );
      stream.Close();
      byteArray = null;
    }
    return byteArray;
  }
}
