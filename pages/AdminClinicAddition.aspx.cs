using System;
using System.Data.SqlClient;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace HospitalWeb25
{
    public partial class AdminClinicAddition : Page
    {
        string connectionString = "Server=SENA;Database=sena2024;Trusted_Connection=True;";
        //connection
        protected void Page_Load(object sender, EventArgs e)
        {

         
        }

        protected void AddButton_Click(object sender, EventArgs e) //admin can add clinic with informations
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string query = "INSERT INTO AdminClinicAdd (hospitalName, clinicName, numberOfClinic, clinicID) " +
                               "VALUES (@HospitalName, @ClinicName, @NumberOfClinic,@ClinicID)";

                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    if (!int.TryParse(clinicID.Text, out int clinicIdValue))
                    {
                        Response.Write("<script>alert('Clinic ID geçerli bir sayı olmalıdır!');</script>");
                        return;
                    }

                    command.Parameters.AddWithValue("@HospitalName", hospitalName.Text);
                    command.Parameters.AddWithValue("@ClinicName", clinicName.Text);
                    command.Parameters.AddWithValue("@NumberOfClinic", numberOfClinic.Text);
                    command.Parameters.AddWithValue("@ClinicID", clinicID.Text);
                    connection.Open();
                    command.ExecuteNonQuery();
                    Response.Write("recorded");
                }
            }
        }

        protected void UpdateButton_Click(object sender, EventArgs e)  //admin can update
        {

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string query = "UPDATE AdminClinicAdd SET hospitalName = @HospitalName, clinicName = @ClinicName, numberOfClinic = @NumberOfClinic WHERE clinicId = @ClinicID";

                using (SqlCommand command = new SqlCommand(query, connection))
                {

                    if (!int.TryParse(clinicID.Text, out int clinicIdValue))
                    {
                        Response.Write("<script>alert('Clinic ID geçerli bir sayı olmalıdır!');</script>");
                        return;
                    }
                    command.Parameters.AddWithValue("@HospitalName", hospitalName.Text);
                    command.Parameters.AddWithValue("@ClinicName", clinicName.Text);
                    command.Parameters.AddWithValue("@NumberOfClinic", numberOfClinic.Text);
                    command.Parameters.AddWithValue("@ClinicID", clinicID.Text);
                    connection.Open();
                    command.ExecuteNonQuery();
                    Response.Write("updated");
                }
            }

        }

        protected void DeleteButton_Click(object sender, EventArgs e) //admin can delet through ClinicID
        {
            string connectionString = "Server=SENA;Database=sena2024;Trusted_Connection=True;";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string query = "DELETE FROM AdminClinicAdd WHERE clinicID = @ClinicID";

                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@ClinicID", clinicID.Text);

                    connection.Open();
                    command.ExecuteNonQuery();
                    Response.Write("deleted");

                }
            }
        }
        protected void BackButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("/AdminDashboard");  
        }
    }
}
