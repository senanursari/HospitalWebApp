using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;



namespace HospitalWeb25
{
    public partial class PatientAppointment : Page
    {
        string connectionString = "Server=SENA;Database=sena2024;Trusted_Connection=True;";
        //sql connection
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void MakeAppointmentButton_Click(object sender, EventArgs e) //add new patient
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string query = "INSERT INTO patientAppointment (dateOfAppointment, hour,ChooseHospital,ChoosePoliclinic,ChooseDoctor,PatientTC ) " +
                               "VALUES (@DateOfAppointment, @Hour, @ChooseHospital, @ChoosePoliclinic,@ChooseDoctor , @PatientTC)";

                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@DateOfAppointment", dateOfAppointment.Text);
                    command.Parameters.AddWithValue("@Hour", hour.Text);
                    command.Parameters.AddWithValue("@ChooseHospital", ChooseHospital.Text);
                    command.Parameters.AddWithValue("@ChoosePoliclinic", ChoosePoliclinic.Text);
                    command.Parameters.AddWithValue("@ChooseDoctor", ChooseDoctor.Text);
                    command.Parameters.AddWithValue("@PatientTC", patientTC.Text);
                    connection.Open();
                    command.ExecuteNonQuery();
                    Response.Write("recorded");

                }
            }
        }

        protected void UpdateAppointmentButton_Click(object sender, EventArgs e)  //can update patient's informations
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string query = "UPDATE patientAppointment SET dateOfAppointment=@DateOfAppointment , hour=@Hour, ChooseHospital=@ChooseHospital, ChoosePoliclinic=@ChoosePoliclinic, ChooseDoctor=@ChooseDoctor WHERE PatientTC=@PatientTC";

                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@DateOfAppointment", dateOfAppointment.Text);
                    command.Parameters.AddWithValue("@Hour", hour.Text);
                    command.Parameters.AddWithValue("@ChooseHospital", ChooseHospital.Text);
                    command.Parameters.AddWithValue("@ChoosePoliclinic", ChoosePoliclinic.Text);
                    command.Parameters.AddWithValue("@ChooseDoctor", ChooseDoctor.Text);
                    command.Parameters.AddWithValue("@PatientTC", patientTC.Text);
                    connection.Open();
                    command.ExecuteNonQuery();
                    Response.Write("updated");
                }
            }
        }



        protected void DeleteAppointmentButton_Click(object sender, EventArgs e)
        {
            //delete patient appointment
            string connectionString = "Server=SENA;Database=sena2024;Trusted_Connection=True;";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string query = "DELETE FROM patientAppointment WHERE patientTC = @PatientTC";

                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@PatientTC", patientTC.Text);
                    connection.Open();
                    int rowsAffected = command.ExecuteNonQuery();

                    if (rowsAffected > 0)
                    {
                        Response.Write("Appointment has been deleted successfully.");
                    }
                    else
                    {
                        Response.Write("No appointment found with the provided TC number.");
                    }
                   
                    
                }
            }
        }
        protected void GetAppointmentCountButton_Click(object sender, EventArgs e) //use function here
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string query = "SELECT COUNT(*) FROM patientAppointment WHERE dateOfAppointment = @DateOfAppointment";

                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@DateOfAppointment", dateOfAppointment.Text);

                    connection.Open();
                    int appointmentCount = (int)command.ExecuteScalar();

                    AppointmentCountLabel.Text = $"Total number of appointments on the specified date: {appointmentCount}";
                }
            }
        }
    }
}
