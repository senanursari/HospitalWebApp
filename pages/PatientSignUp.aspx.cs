using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Xml.Linq;

namespace HospitalWeb25
{
    public partial class PatientSignUp : Page
    {
        string connectionString = "Server=SENA;Database=sena2024;Trusted_Connection=True;";
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void SignUpButton_Click(object sender, EventArgs e)
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string query = "INSERT INTO signUp (Name, Surname,PatientTC, DateOfBirth, BloodType, Gender, Telephone, Mail, FatherName, MotherName,Address, UserName, Password,PatientID) " +
                              "VALUES (@Name, @Surname,@PatientTC  ,@DateOfBirth,  @BloodType, @Gender, @Telephone, @Mail, @FatherName, @MotherName,@Address ,@UserName, @Password,@PatientID)";
                //insert patient informations.
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@Name", Name.Text);
                    command.Parameters.AddWithValue("@Surname", Surname.Text);
                    command.Parameters.AddWithValue("@PatientTC", PatientTC.Text);
                    command.Parameters.AddWithValue("@DateOfBirth", DateOfBirth.Text);
                    command.Parameters.AddWithValue("@BloodType", BloodType.SelectedValue);
                    command.Parameters.AddWithValue("@Gender", Gender.SelectedValue);
                    command.Parameters.AddWithValue("@Telephone", Telephone.Text);
                    command.Parameters.AddWithValue("@Mail", Mail.Text);
                    command.Parameters.AddWithValue("@FatherName", FatherName.Text);
                    command.Parameters.AddWithValue("@MotherName", MotherName.Text);
                    command.Parameters.AddWithValue("@Address", Address.Text);
                    command.Parameters.AddWithValue("@UserName", UserName.Text);
                    command.Parameters.AddWithValue("@Password", Password.Text);
                    command.Parameters.AddWithValue("@PatientID", PatientID.Text);
                    connection.Open();
                    command.ExecuteNonQuery();
                    Response.Write("recorded");



                }
            }
        }
    }
}
