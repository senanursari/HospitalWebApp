using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;



namespace HospitalWeb25
{
    public partial class NurseLogin : Page
    {
        string connectionString = "Server=SENA;Database=sena2024;Trusted_Connection=True;";

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void LoginButton_Click(object sender, EventArgs e)
        {
            string username = UserName.Value;
            string password = Password.Value;
            if (IsValidLogin(username, password))
            {
                if (username == "admin" && password == "12345")
                {
                    Response.Redirect("/NurseDashboard"); 
                }
                else
                {
                    
                    Response.Redirect("/NurseLogin"); 
                }
            }
            else
            {
                Response.Write("<script>alert('Kullanıcı adı veya şifre hatalı.');</script>");
            }
        }

        private bool IsValidLogin(string userName, string password)
        {
            return (userName == "admin" && password == "12345") || (userName == "doctor" && password == "123");
        }
        protected void BackButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Index"); 
        }
    }
}


