using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;




namespace HospitalWeb25
{
    public partial class AdminPatientAddition : Page
    {
        string connectionString = "Server=SENA;Database=sena2024;Trusted_Connection=True;";

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void AddButton_Click(object sender, EventArgs e)
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string query = "INSERT INTO adminPatientAdd (Name, Surname,PatientTC, DateOfBirth, BloodType, Gender, Telephone, Mail, FatherName, MotherName,Address, UserName, Password,PatientID) " +
                              "VALUES (@Name, @Surname, @PatientTC, @DateOfBirth,  @BloodType, @Gender, @Telephone, @Mail, @FatherName, @MotherName,@Address, @UserName, @Password,@PatientID)";

                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@Name", Name.Text);
                    command.Parameters.AddWithValue("@Surname", Surname.Text);
                    command.Parameters.AddWithValue("@PatientTC", PatientTC.Text);
                    command.Parameters.AddWithValue("@DateOfBirth", DateOfBirth.Text);
                    command.Parameters.AddWithValue("@BloodType", BloodType.SelectedValue);
                    command.Parameters.AddWithValue("@Gender", Gender.SelectedValue);
                    command.Parameters.AddWithValue("@Telephone", Telephone.Text);
                    command.Parameters.AddWithValue("@Mail", mail.Text);
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

        protected void DeleteButton_Click(object sender, EventArgs e)
        {
            string connectionString = "Server=SENA;Database=sena2024;Trusted_Connection=True;";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                try
                {
                    connection.Open();

                    string deleteFromadminPatientAdd = "DELETE FROM adminPatientAdd WHERE PatientTC = @PatientTC";
                    using (SqlCommand command = new SqlCommand(deleteFromadminPatientAdd, connection))
                    {
                        command.Parameters.AddWithValue("@PatientTC", PatientTC.Text);
                        int rowsAffectedadminPatientAdd = command.ExecuteNonQuery();

                        if (rowsAffectedadminPatientAdd > 0)
                        {
                            Response.Write("<div class='alert alert-success'>Record deleted from adminPatientAdd table.</div>");
                        }
                        else
                        {
                            Response.Write("<div class='alert alert-warning'>No record found in adminPatientAdd table.</div>");
                        }
                    }

                    string deleteFromsignUp = "DELETE FROM signUp WHERE PatientTC = @PatientTC";
                    using (SqlCommand command = new SqlCommand(deleteFromsignUp, connection))
                    {
                        command.Parameters.AddWithValue("@PatientTC", PatientTC.Text);
                        int rowsAffectedsignUp = command.ExecuteNonQuery();

                        if (rowsAffectedsignUp > 0)
                        {
                            Response.Write("<div class='alert alert-success'>Record deleted from signUp table.</div>");
                        }
                        else
                        {
                            Response.Write("<div class='alert alert-warning'>No record found in signUp table.</div>");
                        }
                    }
                }
                catch (Exception ex)
                {
                    Response.Write($"<div class='alert alert-danger'>An error occurred: {ex.Message}</div>");
                }
            }
        }

        protected void UpdateButton_Click(object sender, EventArgs e)
        {
            string connectionString = "Server=SENA;Database=sena2024;Trusted_Connection=True;";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                try
                {
                    connection.Open();

                    string updateadminPatientAdd = @"
                UPDATE adminPatientAdd 
                SET Name = @Name, Surname = @Surname, PatientID = @PatientID, DateOfBirth = @DateOfBirth, 
                    BloodType = @BloodType, Gender = @Gender, Telephone = @Telephone, Mail = @Mail, 
                    FatherName = @FatherName, MotherName = @MotherName, Address = @Address, 
                    UserName = @UserName, Password = @Password 
                WHERE PatientTC = @PatientTC";

                    using (SqlCommand command = new SqlCommand(updateadminPatientAdd, connection))
                    {
                        command.Parameters.AddWithValue("@Name", Name.Text);
                        command.Parameters.AddWithValue("@Surname", Surname.Text);
                        command.Parameters.AddWithValue("@PatientTC", PatientTC.Text);
                        command.Parameters.AddWithValue("@DateOfBirth", DateOfBirth.Text);
                        command.Parameters.AddWithValue("@BloodType", BloodType.SelectedValue);
                        command.Parameters.AddWithValue("@Gender", Gender.SelectedValue);
                        command.Parameters.AddWithValue("@Telephone", Telephone.Text);
                        command.Parameters.AddWithValue("@Mail", mail.Text);
                        command.Parameters.AddWithValue("@FatherName", FatherName.Text);
                        command.Parameters.AddWithValue("@MotherName", MotherName.Text);
                        command.Parameters.AddWithValue("@Address", Address.Text);
                        command.Parameters.AddWithValue("@UserName", UserName.Text);
                        command.Parameters.AddWithValue("@Password", Password.Text);
                        command.Parameters.AddWithValue("@PatientID", PatientID.Text);

                        int rowsAffectedAdmin = command.ExecuteNonQuery();

                        if (rowsAffectedAdmin > 0)
                        {
                            Response.Write("<div class='alert alert-success'>adminPatientAdd table updated successfully for the given PatientTC.</div>");
                        }
                        else
                        {
                            Response.Write("<div class='alert alert-warning'>No record found in adminPatientAdd table for the given PatientTC.</div>");
                        }
                    }

                    string updateSignUp = @"
                UPDATE signUp 
               SET Name = @Name, Surname = @Surname, PatientID = @PatientID, DateOfBirth = @DateOfBirth, 
                    BloodType = @BloodType, Gender = @Gender, Telephone = @Telephone, Mail = @Mail, 
                    FatherName = @FatherName, MotherName = @MotherName, Address = @Address, 
                    UserName = @UserName, Password = @Password 
                WHERE PatientTC = @PatientTC";


                    using (SqlCommand command = new SqlCommand(updateSignUp, connection))
                    {
                        command.Parameters.AddWithValue("@Name", Name.Text);
                        command.Parameters.AddWithValue("@Surname", Surname.Text);
                        command.Parameters.AddWithValue("@PatientTC", PatientTC.Text);
                        command.Parameters.AddWithValue("@DateOfBirth", DateOfBirth.Text);
                        command.Parameters.AddWithValue("@BloodType", BloodType.SelectedValue);
                        command.Parameters.AddWithValue("@Gender", Gender.SelectedValue);
                        command.Parameters.AddWithValue("@Telephone", Telephone.Text);
                        command.Parameters.AddWithValue("@Mail", mail.Text);
                        command.Parameters.AddWithValue("@FatherName", FatherName.Text);
                        command.Parameters.AddWithValue("@MotherName", MotherName.Text);
                        command.Parameters.AddWithValue("@Address", Address.Text);
                        command.Parameters.AddWithValue("@UserName", UserName.Text);
                        command.Parameters.AddWithValue("@Password", Password.Text);
                        command.Parameters.AddWithValue("@PatientID", PatientID.Text);

                        int rowsAffectedSignUp = command.ExecuteNonQuery();

                        if (rowsAffectedSignUp > 0)
                        {
                            Response.Write("<div class='alert alert-success'>signUp table updated successfully for the given PatientTC.</div>");
                        }
                        else
                        {
                            Response.Write("<div class='alert alert-warning'>No record found in signUp table for the given PatientTC.</div>");
                        }
                    }
                }
                catch (Exception ex)
                {
                    Response.Write($"<div class='alert alert-danger'>An error occurred: {ex.Message}</div>");
                }
            }
        }


    



    protected void BackButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminPatientScreen.aspx");  // Index 
        }
    }
 }

    

    

