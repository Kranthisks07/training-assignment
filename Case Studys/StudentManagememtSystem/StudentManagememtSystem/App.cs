using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StudentManagementSystem
{
    public class Student
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string DOB { get; set; }

        public Student(int id, string name, string dob)
        {
            Id = id;
            Name = name;
            DOB = dob;
        }

    }

    public class Course
    {
        public int Id;
        public string Name;
        public int duration;
        public float fees;


        public Course(int id, string name, int dura, float fee)
        {
            this.Id = id;
            this.Name = name;
            this.duration = dura;
            this.fees = fee;
        }

    }
    class App
    {
        Info info = new Info();
        public void Scenerio1()
        {
            Student student = new Student(101, "kranthi", "1/10/1999");
            Student student1 = new Student(102, "shekar", "2/11/1998");

            info.display(student);
            info.display(student1);
        }

        public void Scenerio2()
        {
            Student[] students = new Student[2];
            students[0] = new Student(10, "mani", "12/4/1998");
            students[1] = new Student(20, "pradeep","18/01/1999");
            for (int i = 0; i < students.Length; i++)
            {
                info.display(students[i]);

            }
        }

        public void Scenerio3()
        {
            Console.WriteLine("Enter the no.of students you want");
            int n = Convert.ToInt32(Console.ReadLine());
            Student[] student = new Student[n];
            for (int i = 0; i < student.Length; i++)
            {
                Console.WriteLine("Enter Student Id,Name and Date of Birth");
                student[i] = new Student(Convert.ToInt32(Console.ReadLine()), Console.ReadLine(), Console.ReadLine());
            }
            for (int i = 0; i < student.Length; i++)
            {
                info.display(student[i]);
            }



        }
        static void Main(string[] args)
        {
            App app = new App();
            //app.Scenerio1();
            //app.Scenerio2();
            //app.Scenerio3();

             Student student1 = new Student(1, "kranthi", "01/10/1999");
             Student student2 = new Student(2, "Shekar", "02/11/1998");
             Student student3 = new Student(3, "manoj", "03/12/1997");
             Course course1 = new Course(101, "Java", 30, 1200.00f);
             Course course2 = new Course(102, "DotNet", 60, 6000.00f);
             Course course3 = new Course(103, "Python", 30, 50000.00f);
            
            AppEngine engine = new AppEngine();
            Console.WriteLine("Display the details using Arrays : ");
            Console.WriteLine();
            Console.WriteLine("The register Student Details is :");
            engine.register(student1);
            engine.register(student2);
            engine.register(student3);
            Console.WriteLine("-------------------------------------------");
            Console.WriteLine();
            Console.WriteLine("The Course details is :");
            engine.introduce(course1);
            engine.introduce(course2);
            engine.introduce(course3);
            Console.WriteLine("--------------------------------------------");
            Console.WriteLine();
            AppEngine appEngine = new AppEngine();
            Console.WriteLine("The list of students is :");
            Student[] students = appEngine.listOfStudents();
            foreach (Student s in students)
            {
                Console.WriteLine($"{s.Id}, {s.Name}, {s.DOB}");
            }
            Console.WriteLine("--------------------------------------------");
            Console.WriteLine();
            Console.WriteLine("The list of courses is :");
            Course[] courses = appEngine.listOfCourses();
            foreach (Course c in courses)
            {
                Console.WriteLine($"{c.Id}, {c.Name}, {c.duration},{c.fees}");
            }
            Console.WriteLine("--------------------------------------------");
            Console.WriteLine();
            Console.WriteLine("the list of enrolls students and courses :");
            appEngine.enroll(student1, course1);
            appEngine.enroll(student2, course2);
            appEngine.enroll(student3, course3);
            Console.WriteLine("--------------------------------------------");
            Console.WriteLine();
            Enroll[] enrolls = appEngine.listOfEnrollments();
            foreach (Enroll e in enrolls)
            {
                Info info = new Info();
                info.displayEnrolldetails(e);
            } 

            
            Console.WriteLine("Display the details using collections : ");
            Console.WriteLine();
            foreach(Student studentslist in engine.listOfStudents())
            {
                Console.WriteLine(studentslist.Id+" "+studentslist.Name+" "+studentslist.DOB);
            }
            Console.WriteLine();
            Console.WriteLine("-------------------------------------------------------------------");
            foreach (Course courselist in engine.listOfCourses())
            {
                Console.WriteLine(courselist.Id + " " + courselist.Name + " " + courselist.duration+" "+courselist.fees);
            }
            Console.WriteLine();
            Console.WriteLine("---------------------------------------------------------------------");
            var lists = from li in engine.listOfEnrollments()
                        select li;
            foreach (var s in lists)
            {
                Console.WriteLine(s._student.Id + " " + s._student.Name + " " + s._student.DOB);
                Console.WriteLine(s._course.Id + " " + s._course.Name + " " + s._course.duration + " " + s._course.fees);
                Console.WriteLine(s._dateTime);
            }
            
            //new UserInterFace().showFirstScreen();

            Console.Read();
        }
    }
}
