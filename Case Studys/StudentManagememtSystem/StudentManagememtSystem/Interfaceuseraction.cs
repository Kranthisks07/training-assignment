using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StudentManagementSystem
{
	interface Interfaceuseraction
	{
		void showFirstScreen();
		void showStudentScreen();
		void showAdminScreen();
		void showAllStudentsScreen();
		void showStudentRegistrationScreen(); 
		void introduceNewCourseScreen();
		void showAllCoursesScreen();
	}
}