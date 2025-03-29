using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace HospitalWeb25
{
    public partial class Error : Page
    {
        string connectionString = "Server=SENA;Database=sena2024;Trusted_Connection=True;";

        protected void Page_Load(object sender, EventArgs e)
        {
            // Hata sayfası yüklendiğinde yapılacak işlemler
            var requestId = HttpContext.Current?.Request?.QueryString["RequestId"];

            // Eğer RequestId varsa, hata sayfasında göster
            if (!string.IsNullOrEmpty(requestId))
            {
                RequestIdLabel.Text = requestId;
                RequestIdPlaceHolder.Visible = true;
            }
            else
            {
                RequestIdPlaceHolder.Visible = false;
            }
        }
    }
}
