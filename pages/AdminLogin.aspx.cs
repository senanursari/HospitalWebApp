using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;



namespace HospitalWeb25
{
    public partial class AdminLogin : Page
    {
        string connectionString = "Server=SENA;Database=sena2024;Trusted_Connection=True;";

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void LoginButton_Click(object sender, EventArgs e)
        {
            string username = UserName.Text;
            string password = Password.Text;

            if (username == "admin" && password == "12345") 
            {
                Response.Redirect("/AdminDashboard");
            }
            else
            {
                Response.Write("<script>alert('Geçersiz kullanıcı adı veya şifre.');</script>");
            }
        }
        protected void BackButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Index");  // Index 
        }
    }
}
