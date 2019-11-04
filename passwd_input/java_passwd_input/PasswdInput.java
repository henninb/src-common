public class PasswdInput {
  public static void main(String[] args) throws Exception {
    if( args.length != 0 ) {
      System.err.println( "Usage: java -jar PasswdInput.jar <noargs>");
      System.exit(1);
    }
    java.io.Console console = System.console();
    String username = console.readLine("Username: ");
    String password = new String(console.readPassword("Password: "));
    System.out.println(username+"/"+password);
  }
}
