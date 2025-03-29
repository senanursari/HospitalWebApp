using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;



namespace HospitalWeb25
{
    public partial class NursePatientAppointment : Page
    {
        string connectionString = "Server=SENA;Database=sena2024;Trusted_Connection=True;";


        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void FindAppointmentsButton_Click(object sender, EventArgs e)
        {
            string patientTC = PatientTC.Text;

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand("dbo.GetAppointmentsByPatientTC", connection))
                {
                    command.CommandType = CommandType.StoredProcedure;

                    try
                    {
                        command.Parameters.AddWithValue("@PatientTC", patientTC);
                        connection.Open();
                        SqlDataAdapter da = new SqlDataAdapter(command);
                        DataTable dt = new DataTable();
                        da.Fill(dt);

                        if (dt.Rows.Count > 0)
                        {
                            AppointmentGridView.DataSource = dt;
                            AppointmentGridView.DataBind();
                            AppointmentGridView.Visible = true; 
                        }
                        else
                        {
                            AppointmentGridView.Visible = false; 
                            Response.Write("<script>alert('No appointment records found for this Patient TC.');</script>");
                        }
                    }
                    catch (Exception ex)
                    {
                        Response.Write("<script>alert('Error: " + ex.Message + "');</script>");
                    }
                }
            }
        }

    }
}

