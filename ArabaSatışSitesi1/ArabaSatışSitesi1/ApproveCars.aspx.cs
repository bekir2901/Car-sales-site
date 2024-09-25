using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using ArabaSatışSitesi1.Classes1;

namespace ArabaSatışSitesi1
{
    public partial class ApproveCars : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int selectedID = Convert.ToInt32(Request.QueryString["carID"]);

            SqlCommand commandApprove = new SqlCommand("Update Tbl_Car set CarConfirmation=@pcon where CarID=@pid",SqlConnectionClass.connection);

            SqlConnectionClass.CheckConnection();

            commandApprove.Parameters.AddWithValue("@pcon",true);
            commandApprove.Parameters.AddWithValue("@pid",selectedID);

            commandApprove.ExecuteNonQuery();

            Response.Redirect("AdminAddCars.aspx");
                
        }
    }
}