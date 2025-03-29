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
    public partial class DoctorDashboard : Page
    {
        string connectionString = "Server=SENA;Database=sena2024;Trusted_Connection=True;";

        protected void Page_Load(object sender, EventArgs e)
        {
        }
        protected void ListPatientsButton_Click(object sender, EventArgs e)
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string query = "SELECT * FROM DoctorPatientView ORDER BY DateOfBirth ASC, Gender DESC"; // Küçükten büyüğe sıralama

                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    try
                    {
                        connection.Open();

                        SqlDataAdapter da = new SqlDataAdapter(command);
                        DataTable dt = new DataTable();
                        da.Fill(dt);

                        if (dt.Rows.Count > 0)
                        {
                            PatientGridView.DataSource = dt;
                            PatientGridView.DataBind();
                            PatientGridView.Visible = true; // GridView
                        }
                        else
                        {
                            PatientGridView.Visible = false; 
                            Response.Write("<script>alert('No patient records found.');</script>");
                        }
                    }
                    catch (Exception ex)
                    {
                        Response.Write("<script>alert('Error: " + ex.Message + "');</script>");
                    }
                }
            }
        

    }


    protected void FindPatientButton_Click(object sender, EventArgs e)
        {
            string patientTC = SearchPatientTC.Text;

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand("dbo.GetPatientInfo", connection))
                {
                    command.CommandType = CommandType.StoredProcedure;

                    try
                    {
                        command.Parameters.AddWithValue("@PatientTC", Convert.ToInt64(patientTC));
                        connection.Open();
                        SqlDataAdapter da = new SqlDataAdapter(command);
                        DataTable dt = new DataTable();
                        da.Fill(dt);

                        if (dt.Rows.Count > 0)
                        {
                            PatientGridView.DataSource = dt;
                            PatientGridView.DataBind();
                            PatientGridView.Visible = true;
                        }
                        else
                        {
                            PatientGridView.Visible = false;
                            Response.Write("<script>alert('No patient found with this TC.');</script>");
                        }
                    }
                    catch (Exception ex)
                    {
                        Response.Write("<script>alert('Error: " + ex.Message + "');</script>");
                    }
                }
            }
        }


        protected void ViewComplaintsButton_Click(object sender, EventArgs e)
        {
        }

        protected void WritePrescriptionButton_Click(object sender, EventArgs e)
        {
        }

        

        protected void AssaysButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("PatientAssayDoctor.aspx");
        }

        protected void PatientCountButton_Click(object sender, EventArgs e)
        {
           
        }
        protected void BackButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("DoctorLogin.aspx");  // Index 
        }
    }
}
