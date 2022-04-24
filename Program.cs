using System ;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Assignment_3   
    // student marks
{
    internal class student
    {
        public int Id { get; set; }
    }
       
        
    
            int rollno;
            String name;
            String branch;
            String sem;
            String clas;

            static public void displayResult()
            {
                int[] marks = new int[5];
                marks[0] = 10;
                marks[1] = 20;
                marks[2] = 30;
                marks[3] = 50;
                marks[4] = 40;

                for (int i = 0; i < marks.Length; i++)
                {
                    Console.WriteLine("the marks of " + i + " subs are: " + marks[i]);
                }

                double average = marks.Average();

                for (int i = 0; i < marks.Length; i++)
                {
                    if (marks[i] < 35)
                    {
                        Console.WriteLine("FAILED");
                    }
                    else if (marks[i] > 35 && average < 50)
                    {
                        Console.WriteLine("FAILED");
                    }
                    else if (average > 50)
                    {
                        Console.WriteLine("PASSED");
                    }
                    else
                    {
                        Console.WriteLine("INVALID");
                    }
                }
            }
            public student(int rollno, String name, String branch, String sem, String clas)
            {
                this.rollno = rollno;
                this.name = name;
                this.branch = branch;
                this.sem = sem;
                this.clas = clas;
                Console.WriteLine($"\nRollno is: {rollno}, Name is {name},Student class is {clas}, Sem is {sem},Branch is : {branch}");
            }
            static public void displayData()
            {
                Console.WriteLine("\nthe marks: ");
            Console.Read();
            }
        }
    }
        

            

                
            
            
        
    
    

