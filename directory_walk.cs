using System;
using System.IO;
using System.Collections;

public class StackBasedIteration {
  public static void Main(string[] args) {
    TraverseTree("C:\\Users\\z037640\\projects\\howto\\src\\common");

    //Console.WriteLine("Press any key");
    //Console.ReadKey();
  }

  public static void TraverseTree( string root ) {
    // Data structure to hold names of subfolders to be
    // examined for files.
    //Stack<string> dirs = new Stack<string>(20);
    Stack dirs = new Stack(50);

    if (!Directory.Exists(root)) {
      throw new ArgumentException();
    }
    dirs.Push(root);

    while (dirs.Count > 0) {
      string currentDir = (string)dirs.Pop();
      string[] subDirs;

      try {
        subDirs = System.IO.Directory.GetDirectories(currentDir);
      }
      // An UnauthorizedAccessException exception will be thrown if we do not have
      // discovery permission on a folder or file. It may or may not be acceptable 
      // to ignore the exception and continue enumerating the remaining files and 
      // folders. It is also possible (but unlikely) that a DirectoryNotFound exception 
      // will be raised. This will happen if currentDir has been deleted by
      // another application or thread after our call to Directory.Exists. The 
      // choice of which exceptions to catch depends entirely on the specific task 
      // you are intending to perform and also on how much you know with certainty 
      // about the systems on which this code will run.
      catch (UnauthorizedAccessException e) {          
        Console.WriteLine(e.Message);
        continue;
      }
      catch (DirectoryNotFoundException e)
      {
        Console.WriteLine(e.Message);
        continue;
      }

      string[] files = null;
      try {
        files = System.IO.Directory.GetFiles(currentDir);
      }

      catch (UnauthorizedAccessException e) {
        Console.WriteLine(e.Message);
        continue;
      }

      catch (DirectoryNotFoundException e) {
        Console.WriteLine(e.Message);
        continue;
      }
      // Perform the required action on each file here.
      // Modify this block to perform your required task.
      foreach (string file in files) {
        try {
          // Perform whatever action is required in your scenario.
          if( currentDir.Contains("\\java_") == true ) {
            FileInfo fi = new FileInfo(file);
            if( fi.Name == "manifest.mf" ) {
              //Console.WriteLine("{0}: {1}, {2}", fi.Name, currentDir, fi.CreationTime);
            }
//Console.WriteLine("fi.Name.ToString() != manifest.mf" = fi.Name != "manifest.mf");
//Console.WriteLine("fi.Name.Contains(.mf) == true" = fi.Name.Contains(".mf") == true);
if( fi.Name.ToString().Equals("manifest.mf") == false ) {
Console.WriteLine("*** " + fi.Name);
            if( (fi.Name.ToString().Contains(".mf") == true) ) {
              Console.WriteLine("{0}: {1}, {2}", fi.Name, currentDir, fi.CreationTime);
              File.Copy(currentDir + "\\" + fi.Name.ToString(), currentDir + "\\" + "manifest.mf", true);
            }
}
            //Console.WriteLine(fi.Name);
            if( fi.Name.Contains(".jar") == true || fi.Name.Contains(".class") == true ) {
              Console.WriteLine("delete: " + fi.Name);
              //File.Delete(currentDir + "\\" +  fi.Name, false);
            }
          }
        }
        catch (FileNotFoundException e) {
          // If file was deleted by a separate application
          //  or thread since the call to TraverseTree()
          // then just continue.
          Console.WriteLine(e.Message);
          continue;
        }
      }

      // Push the subdirectories onto the stack for traversal.
      // This could also be done before handing the files.
      foreach (string str in subDirs)
        dirs.Push(str);
    }
  }
}
