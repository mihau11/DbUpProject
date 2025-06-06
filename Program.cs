// See https://aka.ms/new-console-template for more information
using DbUp;
using System.Reflection;

Console.WriteLine("Hello, World!");
static int Main(string[] args)
{
    var connectionString = "Server=(localdb)\\MSSQLLocalDB;Database=MyApp;Trusted_Connection=True;";
    EnsureDatabase.For.SqlDatabase(connectionString);

    var upgrader =
        DeployChanges.To
            .SqlDatabase(connectionString)
            .WithScriptsEmbeddedInAssembly(Assembly.GetExecutingAssembly())
            .LogToConsole()
            .Build();
    Assembly assembly = Assembly.GetExecutingAssembly();
    assembly.GetFiles().ToList().ForEach(file =>
    {
        Console.WriteLine($"File: {file.Name} - Size: {file.Length} bytes");
    });

    var result = upgrader.PerformUpgrade();

    if (!result.Successful)
    {
        Console.ForegroundColor = ConsoleColor.Red;
        Console.WriteLine(result.Error);
        Console.ResetColor();
#if DEBUG
        Console.ReadLine();
#endif                
        return -1;
    }

    Console.ForegroundColor = ConsoleColor.Green;
    Console.WriteLine("Success!");
    Console.ResetColor();
    return 0;
}
Main(args); // Call the Main method to execute the program