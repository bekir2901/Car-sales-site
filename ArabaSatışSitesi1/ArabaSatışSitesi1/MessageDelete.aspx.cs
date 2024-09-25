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
    public partial class MessageDelete : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Convert.ToBoolean(Session["IsUserAdmmin"]) == true)
            {
                int selectedID = Convert.ToInt32(Request.QueryString["id"]);

                SqlCommand commandDelete = new SqlCommand("Delete from Tbl_Contact where ContactID=@pid", SqlConnectionClass.connection);

                SqlConnectionClass.CheckConnection();

                commandDelete.Parameters.AddWithValue("@pid", selectedID);

                commandDelete.ExecuteNonQuery();

                Response.Redirect("Message.aspx");
            }
             else
            {
                Response.Redirect("Login.aspx");
            }
               

        }
    }
}