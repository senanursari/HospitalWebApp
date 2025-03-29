using System;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HospitalWeb25
{
    public partial class PatientLogin : Page
    {
        string connectionString = "Server=SENA;Database=sena2024;Trusted_Connection=True;";

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void LoginButton_Click(object sender, EventArgs e)
        {
            string username = Request.Form["UserName"];
            string password = Request.Form["Password"];

            bool loginSuccess = ValidateUser(username, password);
            if (!loginSuccess)
            {
                ErrorMessageLabel.Text = "Invalid username or password.";
                ErrorMessageLabel.Visible = true;
            }
            else
            {
                Response.Redirect("PatientDashboard.aspx"); 
            }
        }

        private bool ValidateUser(string UserName, string Password)
        {
            bool isValid = false;

            string querySignUp = "SELECT COUNT(1) FROM signUp WHERE UserName = @UserName AND Password = @Password";
            string queryAdminPatientAdd = "SELECT COUNT(1) FROM adminPatientAdd WHERE UserName = @UserName AND Password = @Password";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand commandSignUp = new SqlCommand(querySignUp, connection))
                {
                    commandSignUp.Parameters.AddWithValue("@UserName", UserName);
                    commandSignUp.Parameters.AddWithValue("@Password", Password); 

                    try
                    {
                        connection.Open();
                        int userCountSignUp = (int)commandSignUp.ExecuteScalar();
                        if (userCountSignUp > 0)
                        {
                            isValid = true; 
                        }
                        else
                        {
                            using (SqlCommand commandAdminPatientAdd = new SqlCommand(queryAdminPatientAdd, connection))
                            {
                                commandAdminPatientAdd.Parameters.AddWithValue("@UserName", UserName);
                                commandAdminPatientAdd.Parameters.AddWithValue("@Password", Password); 

                                int userCountAdminPatientAdd = (int)commandAdminPatientAdd.ExecuteScalar();
                                if (userCountAdminPatientAdd > 0)
                                {
                                    isValid = true; 
                                }
                            }
                        }
                    }
                    catch (Exception ex)
                    {
                        ErrorMessageLabel.Text = "Error occurred: " + ex.Message;
                        ErrorMessageLabel.Visible = true;
                    }
                }
            }
            return isValid; 
        }

        protected void BackButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Index");  // Index 
        }

        protected void SignUpButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("/SignUp");  // SignUp 
        }
    }
}
