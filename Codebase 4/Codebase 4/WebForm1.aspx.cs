using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                string[] str = new string[] { "Select", "Tata", "Bajaj", "Scooty", "Bullet" };
                for (int i = 0; i < str.Length; i++)
                {
                    DropDownList1.Items.Add(str[i]);
                }
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string str = DropDownList1.Text;
            Image1.ImageUrl = "~/Pics/" + str + ".jfif";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            TextBox1.Text = DropDownList1.SelectedIndex.ToString();
            if (DropDownList1.Text == "Tvs")
            {
                TextBox1.Text = "Rs. 60,000";
            }
            else if (DropDownList1.Text == "Bjaj")
            {
                TextBox1.Text = "Rs. 1,00,000";
            }
            else if (DropDownList1.Text == "Scooty")
            {
                TextBox1.Text = "Rs.80,000";
            }
            else if (DropDownList1.Text == "Bullet")
            {
                TextBox1.Text = "Rs. 2,00,000";
            }
            else
            {
                TextBox1.Text = " ";
            }
        }
    }
}