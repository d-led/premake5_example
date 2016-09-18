using System;
using System.Runtime.InteropServices;

static class NativeMethods
{
    [DllImport("my_lib.dll")]
    internal static extern int my_add(int a,int b);

    [DllImport("my_lib.dll")]
    internal static extern int my_version();
}

public static class Test
{
    public static void Main()
    {
        Console.WriteLine("Adding 2+2 -> {0} using version: {1}",
            NativeMethods.my_add(2,2),
            NativeMethods.my_version()
        );
    }
}
