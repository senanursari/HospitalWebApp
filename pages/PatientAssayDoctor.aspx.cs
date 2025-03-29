using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HospitalWeb25
{
    public partial class PatientAssayDoctor : Page
    {
        string connectionString = "Server=SENA;Database=sena2024;Trusted_Connection=True;";

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void AddButton_Click(object sender, EventArgs e)
        {
            {
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    string query = "INSERT INTO patientAssayDoctor (AssayName, AssayState, AssayValue, DateOfAssay,PatientTC,DoctorID) " +
                                   "VALUES (@AssayName, @AssayState, @AssayValue, @DateOfAssay,@PatientTC,@DoctorID)";

                    using (SqlCommand command = new SqlCommand(query, connection))
                    {
                        // Assignment of parameters
                        command.Parameters.AddWithValue("@AssayName", AssayName.Text);
                        command.Parameters.AddWithValue("@AssayState", AssayState.Text);
                        command.Parameters.AddWithValue("@AssayValue", AssayValue.Text);
                        command.Parameters.AddWithValue("@DateOfAssay", DateOfAssay.Text);
                        command.Parameters.AddWithValue("@PatientTC", PatientTC.Text);
                        command.Parameters.AddWithValue("@DoctorID", DoctorID.Text);

                        connection.Open();
                        command.ExecuteNonQuery();
                        Response.Write("recorded");



                    }
                }
            }
        }
        protected void CountAssayButton_Click(object sender, EventArgs e)
        {
            // We are creating a list to store the results
            List<string> doctorAssayCounts = new List<string>();

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                // SQL query
                string query = "SELECT DoctorID, COUNT(*) AS TotalAssays FROM patientAssayDoctor GROUP BY DoctorID";

                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    connection.Open();

                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            // We read the DoctorID and TotalAssays values and add them to the list
                            string doctorID = reader["DoctorID"].ToString();
                            string totalAssays = reader["TotalAssays"].ToString();
                            doctorAssayCounts.Add($"DoctorID: {doctorID}, Total Assays: {totalAssays}");
                        }
                    }
                }
            }

            // We are creating text to show the results in a Label control
            AssayCountLabel.Text = string.Join("<br/>", doctorAssayCounts);
        }




        protected void DeleteButton_Click(object sender, EventArgs e)
        {
            string connectionString = "Server=SENA;Database=sena2024;Trusted_Connection=True;";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string query = "DELETE FROM patientAssayDoctor WHERE patientTC = @PatientTC";

                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@PatientTC", PatientTC.Text);

                    connection.Open();
                    command.ExecuteNonQuery();

                    // Silme işlemi sonrası, log tablosuna veri otomatik olarak eklenecektir.
                    Response.Write("deleted");
                }
            }
        }


        protected void BackButton_Click(object sender, EventArgs e)
        {
            // Geri butonuna basıldığında Index sayfasına yönlendirme
            Response.Redirect("DoctorDashboard.aspx");  // Index sayfasına yönlendiriyoruz
        }
    }
}

