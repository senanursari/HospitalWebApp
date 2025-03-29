using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;




namespace HospitalWeb25
{
    public partial class DoctorLogin : Page
    {
        string connectionString = "Server=SENA;Database=sena2024;Trusted_Connection=True;";

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void LoginButton_Click(object sender, EventArgs e)
        {
            string userName = UserNameTextBox.Text;
            string password = PasswordTextBox.Text;

            if (IsValidLogin(userName, password))
            {
                if (userName == "admin" && password == "12345")
                {
                    Response.Redirect("/DoctorDashboard"); // Admin dashboard
                }
                else
                {
                    
                    Response.Redirect("/DoctorLogin"); // DoCtor dashboard
                }
            }
            else
            {
                // Giriş başarısızsa, hata mesajı göster
                Response.Write("<script>alert('Kullanıcı adı veya şifre hatalı.');</script>");
            }
        }

        private bool IsValidLogin(string userName, string password)
        {
            return (userName == "admin" && password == "12345") || (userName == "doctor" && password == "123");
        }
        protected void BackButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Index");  // Index 
        }
    }
}

