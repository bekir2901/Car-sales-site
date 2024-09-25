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
    public partial class AdminAddCars : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Convert.ToBoolean(Session["IsUserAdmmin"]) == true) 
            {
                SqlCommand commandList = new SqlCommand("Select * from Tbl_Car where CarConfirmation = @pcon", SqlConnectionClass.connection);

                SqlConnectionClass.CheckConnection();

                commandList.Parameters.AddWithValue("@pcon", false);

                SqlDataReader dr = commandList.ExecuteReader();

                DataList1.DataSource = dr;

                DataList1.DataBind();

                dr.Close();
            }
            else 
            {
                Response.Redirect("Login.aspx");
            }

           
             
            
          
        }

        protected void btnApprove_Click(object sender, EventArgs e)
        {

        }
    }
}