using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HospitalWeb25
{
    public partial class AdminAppointments : System.Web.UI.Page
    {
        string connectionString = "Server=SENA;Database=sena2024;Trusted_Connection=True;";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
            }
        }

        protected void UpdateAppointment_Click(object sender, EventArgs e) //admin can update patient's appointment.
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string query = "UPDATE patientAppointment SET DateOfAppointment = @DateOfAppointment, Hour = @Hour ,ChooseHospital = @ChooseHospital ,ChoosePoliclinic = @ChoosePoliclinic,ChooseDoctor = @ChooseDoctor WHERE patientTC = @PatientTC"; 

                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@DateOfAppointment", DateOfAppointment.Text);
                    command.Parameters.AddWithValue("@Hour", Hour.Text);
                    command.Parameters.AddWithValue("@ChooseHospital", ChooseHospital.SelectedValue);
                    command.Parameters.AddWithValue("@ChoosePoliclinic", ChoosePoliclinic.SelectedValue);
                    command.Parameters.AddWithValue("@ChooseDoctor", ChooseDoctor.SelectedValue);
                    command.Parameters.AddWithValue("@PatientTC", patientTC.Text); 

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
    protected void DeleteAppointment_Click(object sender, EventArgs e) //admin can delete
        {
            string connectionString = "Server=SENA;Database=sena2024;Trusted_Connection=True;";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string query = "DELETE FROM patientAppointment WHERE patientTC = @PatientTC";

                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@PatientTC", patientTC.Text);
                    connection.Open();
                    command.ExecuteNonQuery();
                    Response.Write("deleted.");
                }
            }
        }


        protected void BackButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("/AdminDashboard"); 
        }
    }
}
