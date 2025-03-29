using System;

namespace HospitalWeb25
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Redirect("~/pages/Index.aspx");

        }
    }
}
