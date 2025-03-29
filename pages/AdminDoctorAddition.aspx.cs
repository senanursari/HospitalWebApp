using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;




namespace HospitalWeb25
{
    public partial class AdminDoctorAddition : Page
    {
        string connectionString = "Server=localhost;Database=sena2024;Trusted_Connection=True;";

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void AddDoctor(object sender, EventArgs e) //can add doctor
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string query = "INSERT INTO adminDoctorAdd (doctorID, Name, Surname, Title, Major,TCNumber, Telephone, Gender, DateOfBirth, Address, Hospital, Clinic, Username, Password) " +
                               "VALUES (@DoctorID,@Name, @Surname, @Title, @Major,@TCNumber,  @Telephone, @Gender, @DateOfBirth, @Address, @Hospital, @Clinic, @Username, @Password)";

                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@DoctorID", doctorID.Text);
                    command.Parameters.AddWithValue("@Name", name.Text);
                    command.Parameters.AddWithValue("@Surname", surname.Text);
                    command.Parameters.AddWithValue("@Title", title.Text);
                    command.Parameters.AddWithValue("@Major", major.Text);
                    command.Parameters.AddWithValue("@TCNumber", TCNumber.Text);
                    command.Parameters.AddWithValue("@Telephone", telephone.Text);
                    command.Parameters.AddWithValue("@Gender", gender.SelectedValue);
                    command.Parameters.AddWithValue("@DateOfBirth", dob.Text);
                    command.Parameters.AddWithValue("@Address", address.Text);
                    command.Parameters.AddWithValue("@Hospital", hospital.Text);
                    command.Parameters.AddWithValue("@Clinic", clinic.Text);
                    command.Parameters.AddWithValue("@Username", username.Text);
                    command.Parameters.AddWithValue("@Password", password.Text);
                    connection.Open();
                    command.ExecuteNonQuery();
                    Response.Write("recorded");

                }
            }
        }


        protected void UpdateDoctor(object sender, EventArgs e)
        {

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string query = "UPDATE adminDoctorAdd SET  Name = @Name, Surname = @Surname, Title = @Title, Major = @Major, TCNumber=@TCNumber,Telephone = @Telephone, " +
                        "Gender = @Gender, DateOfBirth = @DateOfBirth, Address = @Address, Hospital = @Hospital, Clinic = @Clinic, Username = @Username, Password = @Password WHERE doctorID=@DoctorID";

                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@DoctorID",doctorID.Text);
                    command.Parameters.AddWithValue("@Name", name.Text);
                    command.Parameters.AddWithValue("@Surname", surname.Text);
                    command.Parameters.AddWithValue("@Title", title.Text);
                    command.Parameters.AddWithValue("@Major", major.Text);
                    command.Parameters.AddWithValue("@TCNumber", TCNumber.Text);
                    command.Parameters.AddWithValue("@Telephone", telephone.Text);
                    command.Parameters.AddWithValue("@Gender", gender.SelectedValue);
                    command.Parameters.AddWithValue("@DateOfBirth", dob.Text);
                    command.Parameters.AddWithValue("@Address", address.Text);
                    command.Parameters.AddWithValue("@Hospital", hospital.Text);
                    command.Parameters.AddWithValue("@Clinic", clinic.Text);
                    command.Parameters.AddWithValue("@Username", username.Text);
                    command.Parameters.AddWithValue("@Password", password.Text);
                 

                    try
                    {
                        connection.Open();
                        int rowsAffected = command.ExecuteNonQuery();
                        if (rowsAffected > 0)
                        {
                            Response.Write("updated.");
                        }
                        else
                        {
                            Response.Write("No record found to update in the database.");
                        }
                    }
                    catch (Exception ex)
                    {
                        Response.Write("Hata: " + ex.Message);
                    }
                }
            }
        }

        protected void DeleteDoctor(object sender, EventArgs e) 
        {
            string connectionString = "Server=SENA;Database=sena2024;Trusted_Connection=True;";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string query = "DELETE FROM adminDoctorAdd WHERE doctorID=@DoctorID";

                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@DoctorID", doctorID.Text);

                    connection.Open();
                    command.ExecuteNonQuery();
                    Response.Write("deleted");

                }
            }
        }
    }
}
