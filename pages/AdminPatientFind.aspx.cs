using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;



namespace HospitalWeb25
{
    public partial class AdminPatientFind : Page
    {
        string connectionString = "Server=SENA;Database=sena2024;Trusted_Connection=True;";

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void BackToDashboardButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("/AdminDashboard");
        }
    }
}
