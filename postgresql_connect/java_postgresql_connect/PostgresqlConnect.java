import java.lang.*;
import java.sql.*;

public class PostgresqlConnect {
  private static final String url = "jdbc:postgresql://localhost/finance_db";
  private static final String user = "henninb";
  private static final String password = "monday1";

  public PostgresqlConnect() {
  }

  public static Connection connect() {
    Connection connection = null;
    Statement stmt = null;
    ResultSet rs = null;
    String sql = "SELECT * FROM t_transaction";
    try {
      connection = DriverManager.getConnection(url, user, password);
      stmt = connection.createStatement();
      System.out.println("Connected to the PostgreSQL server successfully.");
      rs = stmt.executeQuery(sql);
      while( rs.next() ) {

        //guid, transaction_date, description, category, amount, is_cleared, notes, date_updated, date_added, account_name_owner
        // //Retrieve by column name
         String guid  = rs.getString("guid");
         System.out.println(guid);
         String description = rs.getString("description");
         String category = rs.getString("category");
         String notes = rs.getString("notes");
         String accountNameOwner = rs.getString("account_name_owner");
        // String first = rs.getString("first");
        // String last = rs.getString("last");
        //
        // //Display values
        // System.out.print("ID: " + id);
        // System.out.print(", Age: " + age);
        // System.out.print(", First: " + first);
        // System.out.println(", Last: " + last);
      }
      rs.close();
    } catch (SQLException e) {
      System.out.println(e.getMessage());
    }

    //try{
    //     if(conn!=null)
    //        conn.close();
    //  }catch(SQLException se){
    //     se.printStackTrace();
    //  }
    return connection;
  }

  public static void main( String[] args ) {
    if( args.length != 0 ) {
      System.err.println( "Usage: java -jar PostgresqlConnect.jar <noargs>");
      System.exit(1);
    }

    Connection connection = connect();
  }
}
