using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HospitalWeb25
{
    public partial class AdminPatientScreen : Page
    {
        string connectionString = "Server=SENA;Database=sena2024;Trusted_Connection=True;";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                PatientGridView.DataSource = null;
                PatientGridView.DataBind();
            }
        }
        protected void ListPatientsButton_Click(object sender, EventArgs e)
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand("dbo.GetAllPatients", connection))
                {
                    command.CommandType = CommandType.StoredProcedure;

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
                using (SqlCommand command = new SqlCommand("dbo.GetPatientInfoByTC", connection))
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


        protected void AddDeleteUpdatePatientButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminPatientAddition.aspx");
        }

        protected void ShowAssayButton_Click(object sender, EventArgs e)
        {
            string patientTC = PatientTC.Text;
            if (string.IsNullOrEmpty(patientTC))
            {
                Response.Write("<script>alert('Please enter a valid Patient TC.');</script>");
                return;
            }

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string query = "SELECT DISTINCT AssayName, AssayState, AssayValue, DateOfAssay FROM patientAssayDoctor WHERE PatientTC = @PatientTC";

                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    try
                    {
                        command.Parameters.AddWithValue("@PatientTC", Convert.ToInt64(PatientTC.Text));
                        connection.Open();

                        SqlDataAdapter da = new SqlDataAdapter(command);
                        DataTable dt = new DataTable();
                        da.Fill(dt);

                        if (dt.Rows.Count > 0)
                        {
                            AssayGridView.DataSource = null;
                            AssayGridView.DataBind();

                            AssayGridView.DataSource = dt;
                            AssayGridView.DataBind();
                            AssayGridView.Visible = true;
                        }
                        else
                        {
                            AssayGridView.Visible = false;
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