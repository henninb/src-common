//import needed for user input only
//import java.util.Scanner;
import java.lang.*;

public class nqueens {
  public static void main( String args[] ) {
    if( args.length != 1 ) {
      System.err.println( "Usage: java -jar nqueens.jar <noargs>");
      System.exit(1);
    }

    createBoard(5);
  }

  public static void createBoard( int sizeOfBoard ) {
    //System.out.println( "Please enter the size of the chessboard: " );
    //Scanner stdin = new Scanner( System.in );
    //int sizeOfBoard = stdin.nextInt();
    //int sizeOfBoard = new Integer(args[0]);

    //Create the board to the given size.  If this program does not allow
    //for varying board sizes, simply initialize this array with numbers.
    char[][] board = new char[sizeOfBoard][sizeOfBoard];

    //fill board with hyphens
    for( int row = 0; row < sizeOfBoard; row++ ) {
      for( int col = 0; col < sizeOfBoard; col++ ) {
        board[row][col] = '-';
      }
    }

    //Call the method which attempts to solve the problem
    if( solve( sizeOfBoard, board, 0 )) { //if true, we know that the board array contains a solution
      printBoard( sizeOfBoard, board );
    } else {    //if false, we know that no solutions exist on this size of board
      System.out.println( "No solutions are possible with this board size." );
    }
  }

  public static boolean solve( int sizeOfBoard, char[][] board, int row ){
    //If all rows have been filled, we have a solution
    if( row >= sizeOfBoard ) {
      return true;
    }

    //For each column(space) on the given row
    for( int col = 0; col < sizeOfBoard; col++ ) {
      //If placing a queen in this column(space) does not cause a conflict
      if( !checkConflict( sizeOfBoard, board, row, col )) {
        //place a queen here
        board[row][col] = 'Q';
        //then call this same function on the next row
        boolean success = solve( sizeOfBoard, board, row + 1 );
        //if every function in this recursive path returns true
        if( success ) {
          //then we return true also
          return true;
        }
        //If there is no possible solution with this queen placement,
        //then we relace the queen with an empty and attempt
        //to place a queen in the next column(space).
        else{
          board[row][col] = '-';
        }
      }
    }
    //If we ever get this far, then we know that no solutions exist on the
    //array passed to this function.
    return false;
  }

  public static boolean checkConflict( int sizeOfBoard, char[][] board, int rowCheck, int colCheck ){
    //Check for queens placed directly above this position
    for( int row = rowCheck - 1; row >= 0; row-- ) {
      if( board[row][colCheck] == 'Q' ) {
        return true;
      }
    }

    //Check for queens placed on the diagonal
    //above and to the right of this position
    int col = colCheck + 1;
    for( int row = rowCheck - 1; row >= 0; row-- ) {
      if( col >= sizeOfBoard ) {
        break;
      }
      if( board[row][col] == 'Q' ) {
        return true;
      }
      col++;
    }

    //Check for queens placed on the diagonal
    //above and to the left of this position
    col = colCheck - 1;
    for( int row = rowCheck - 1; row >= 0; row-- ) {
      if( col < 0 ) {
        break;
      }

      if( board[row][col] == 'Q' ) {
        return true;
      }
      col--;
    }
    //We know that no conflicts are caused by this position, so return false
    return false;
  }

  public static void printBoard( int sizeOfBoard, char[][] board ){
    for( int row = 0; row < sizeOfBoard; row++ ) {
      for( int col = 0; col < sizeOfBoard; col++ ) {
        System.out.print( board[row][col] );
      }
      System.out.print("\n");
    }
  }
}
