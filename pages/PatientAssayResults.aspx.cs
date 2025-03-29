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
    public partial class PatientAssayResults : Page
    {
        string connectionString = "Server=SENA;Database=sena2024;Trusted_Connection=True;";

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }



        protected void ShowAssay_Click(object sender, EventArgs e)
        {
            string patientTC = PatientTC.Text;

            // Get the test information from the database according to the TC number
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                // Stored Procedure's name
                using (SqlCommand command = new SqlCommand("GetPatientAssayDoctor", connection))
                {
                    // CommandType is set to Stored Procedure
                    command.CommandType = CommandType.StoredProcedure;

                    // add parameter in Stored Procedure
                    command.Parameters.AddWithValue("@PatientTC", patientTC);

                    connection.Open();
                    SqlDataAdapter da = new SqlDataAdapter(command);
                    DataTable dt = new DataTable();
                    da.Fill(dt);

                    // If there is analysis data, show it in the GridView
                    if (dt.Rows.Count > 0)
                    {
                        AssayGridView.DataSource = dt;
                        AssayGridView.DataBind();
                        AssayGridView.Visible = true;
                    }
                    else
                    {
                        AssayGridView.Visible = false;
                    }
                }
            }
        }


    }
}

    

        
   
