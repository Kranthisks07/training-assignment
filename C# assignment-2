using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace assignment_2
{
    internal class Program
    {
        static void Main(string[] args)
        {
            // Average

            int[] arr = { 2, 4, 6, 8, 10 };
            int i = 0;
            int sum = 0;
            float average = 0.0F;
            for (i = 0; i < arr.Length; i++)
            {
                sum += arr[i];
            }
            average = (float)sum / arr.Length;
            Console.WriteLine("Average of array elements: " + average);
            int[] arr1 = { 2, 4, 6, 8, 10 };

            // min and max 

            Console.WriteLine("Minimum number is " + arr.Min());
            //Console.WriteLine("Maximum number is " + arr.Max());
            //Console.Read();

            // palidrome


            string s, revs = "";
            Console.WriteLine(" Enter string");
            s = Console.ReadLine();
            for (int j = s.Length - 1; j >= 0; j--)
            {
                revs += s[j].ToString();
            }
            if (revs == s)
            {
                Console.WriteLine("String is Palindrome \n Entered String Was {0} and reverse string is {1}", s, revs);
            }
            else
            {
                //Console.WriteLine("String is not Palindrome \n Entered String Was {0} and reverse string is {1}", s, revs);
            }
            //Console.Read();


            string str = "Kranthi";

            Console.WriteLine("String: " + str);
            Console.WriteLine("String Length: " + str.Length);
            Console.Read();

            // reverse string

            string Str, rev;
            Str = "Kranthi";
            rev = "";
            Console.WriteLine("Value of the given String is: {0}", Str);
            int a;
            a = Str.Length - 1;
            while (a >= 0)
            {
                rev = rev + Str[a];
                a--;
            }
            Console.WriteLine("Reverse d string is : {0}", rev);
            Console.Read();

            // two strings are same or not 

            string str1 = "Kranthi";
            string str2 = "Kranthi";
            char[] ch1 = str1.ToLower().ToCharArray();
            char[] ch2 = str2.ToLower().ToCharArray();
            Array.Sort(ch1);
            Array.Sort(ch2);
            string val1 = new string(ch1);
            string val2 = new string(ch2);

            if (val1 == val2)
            {
                Console.WriteLine("Both are same");
            }
            else
            {
                Console.WriteLine("Both are not same");




                //find min,max & avg

                Console.WriteLine("Enter array size");
                int[] ar = new int[Convert.ToInt32(Console.ReadLine())];
                for (int j = 0; j < ar.Length; j++)
                {
                    Console.WriteLine("the elements at " + j);
                    ar[j] = Convert.ToInt32(Console.ReadLine());
                }
                Console.WriteLine("the elements are");
                for (int j = 0; j < ar.Length; j++)
                {
                    Console.Write(ar[j] + " ");
                }
                Console.WriteLine("the average of elements: " + ar.Average());
                Console.WriteLine("the min element: " + ar.Min() + " " + "and " + "the max element: " + ar.Max());

                //marks

                Console.WriteLine("\nEnter marks");
                int[] arr2 = new int[Convert.ToInt32(Console.ReadLine())];
                for (int j = 0; j < arr.Length; i++)
                {
                    Console.WriteLine("the elements at " + i);
                    arr[i] = Convert.ToInt32(Console.ReadLine());
                }
                Console.WriteLine("the elements are");
                for (int j = 0; j < arr.Length; j++)
                {
                    Console.Write(arr[j] + " ");
                }
                //asscending 
                Array.Sort(arr);
                Console.WriteLine("\narray after sort in ascending order...");
                foreach (int j in arr)
                {
                    Console.Write(j + " ");
                }
                //descending
                Array.Reverse(arr);
                Console.WriteLine("\narray after sort in descending order...");
                foreach (int j in arr)
                {
                    Console.Write(j + " ");
                }
                Console.WriteLine("\nthe sum of elements: " + arr.Sum() + " " + "and " + "the average of element: " + arr.Average());
                Console.WriteLine("\nthe min element: " + arr.Min() + " " + "and " + "the max element: " + arr.Max());



            }
        }
    }
}
    




        
            
