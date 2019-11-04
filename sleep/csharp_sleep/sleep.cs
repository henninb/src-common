using System;
using System.Threading;

class Program
{
    static void Main(string[] args)
    {
        Console.WriteLine("Sleeping...");
        Thread.Sleep(5000); //milliseconds
        Console.WriteLine("Awake!");
    }
}
