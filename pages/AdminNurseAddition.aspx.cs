using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;



namespace HospitalWeb25
{

    public partial class AdminNurseAddition : Page
    {
        string connectionString = "Server=SENA;Database=sena2024;Trusted_Connection=True;";

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void AddButton_Click(object sender, EventArgs e)
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string query = "INSERT INTO AdminNurseAdd (Name, Surname ,NurseID, DateOfBirth,Gender,Telephone,Email, Address, Hospital, Username, Password) " +
                               "VALUES (@Name, @Surname,@nurseID, @DateOfBirth, @Gender,@telephone,@email,  @address, @hospital, @username, @password)";

                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@name", Name.Text);
                    command.Parameters.AddWithValue("@surname", Surname.Text);
                    command.Parameters.AddWithValue("@nurseID", NurseID.Text);
                    command.Parameters.AddWithValue("@dateOfBirth", DateOfBirth.Text);
                    command.Parameters.AddWithValue("@gender", Gender.SelectedValue);
                    command.Parameters.AddWithValue("@telephone", Telephone.Text);
                    command.Parameters.AddWithValue("@email", Email.Text);
                    command.Parameters.AddWithValue("@address", Address.Text);
                    command.Parameters.AddWithValue("@hospital", Hospital.Text);
                    command.Parameters.AddWithValue("@username", Username.Text);
                    command.Parameters.AddWithValue("@password", Password.Text);

                    connection.Open();
                    command.ExecuteNonQuery();
                    Response.Write("recorded");

                }
            }
        }




        protected void DeleteButton_Click(object sender, EventArgs e)
        {
            string nurseId = NurseID.Text;

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string query = "DELETE FROM AdminNurseAdd WHERE NurseID = @nurseId";

                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@nurseId", nurseId);

                    try
                    {
                        connection.Open();
                        command.ExecuteNonQuery();

                        Response.Write("<script>alert('deleted');</script>");
                    }
                    catch (Exception ex)
                    {
                        Response.Write("<script>alert('mistake " + ex.Message + "');</script>");
                    }
                }
            }
        }
        protected void BackButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("/AdminDashboard");  // Index 
        }
    }

 }

    


