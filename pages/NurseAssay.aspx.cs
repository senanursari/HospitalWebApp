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
    public partial class NurseAssay : Page
    {
        string connectionString = "Server=SENA;Database=sena2024;Trusted_Connection=True;";

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void SaveButton_Click(object sender, EventArgs e) //nurse can add patient's medicine according to doctor's assay results
        {
            {
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    string query = "INSERT INTO  NurseMedicine (TC,Medicine,Date,nurseID) VALUES (@TC,@Medicine,@Date,@nurseID)";

                    using (SqlCommand command = new SqlCommand(query, connection))
                    {
                        command.Parameters.AddWithValue("@TC", TC.Text);
                        command.Parameters.AddWithValue("@Medicine", Medicine.Text);
                        command.Parameters.AddWithValue("@Date", Date.Text);
                        command.Parameters.AddWithValue("@nurseID", nurseID.Text);

                        connection.Open();
                        command.ExecuteNonQuery();
                        Response.Write("recorded");



                    }
                }
            }
        }
        protected void DeleteButton_Click(object sender, EventArgs e)
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string query = "DELETE FROM NurseMedicine WHERE TC = @TC";

                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@TC", TC.Text);  

                    connection.Open();
                    int rowsAffected = command.ExecuteNonQuery();
                    if (rowsAffected > 0)
                    {
                        Response.Write("All medicines for the patient with TC " + TC.Text + " have been deleted.");
                    }
                    else
                    {
                        Response.Write("No records found for the provided TC.");
                    }
                }
            }
        }

        protected void ShowAssay_Click(object sender, EventArgs e) //by entering patient TC, the patient shows the results of the assay.
        {
            string patientTC = PatientTC.Text;

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string query = "SELECT AssayName, AssayState, AssayValue, DateOfAssay FROM patientAssayDoctor WHERE PatientTC = @PatientTC";

                using (SqlCommand command = new SqlCommand(query, connection))
                {
                        command.Parameters.AddWithValue("@PatientTC", PatientTC.Text);
                        connection.Open();
                        SqlDataAdapter da = new SqlDataAdapter(command);
                        DataTable dt = new DataTable();
                        da.Fill(dt);

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
        protected void ShowAllMedicinesButton_Click(object sender, EventArgs e)
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string query = "SELECT * FROM dbo.GetAllMedicines()";

                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    connection.Open();
                    SqlDataReader reader = command.ExecuteReader();
                    DataTable dataTable = new DataTable();
                    dataTable.Load(reader);

                    AllMedicinesGridView.DataSource = dataTable;
                    AllMedicinesGridView.DataBind();
                }
            }
        }


    }
}


    
  

