using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


namespace codeBaseTest2
{
    public delegate void calculator(int a, int b); class Program
    {
        public static void addition(int a, int b)
        {
            int res = a + b;
            Console.WriteLine($"Addition result is {res}");
        }
        public static void substraction(int a, int b)
        {
            int res = a - b;
            Console.WriteLine($"substraction result is {res}");
        }
        public static void multiplication(int a, int b)
        {
            int res = a * b;
            Console.WriteLine($" multiplicatio result is {res}");
        }
        
        static void Main(string[] args)
        {
            calculator obj = new calculator(Program.addition);
            obj.Invoke(10, 20);
            obj = substraction;
            obj(20, 10);
            obj = multiplication;
            obj(30, 40);
            
            Console.ReadLine();
        }
    }
}


