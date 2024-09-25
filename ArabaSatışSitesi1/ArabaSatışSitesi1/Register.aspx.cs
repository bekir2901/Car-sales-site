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
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            SqlCommand commandRegister = new SqlCommand("Insert into Tbl_User (UserMail,USerPassword) values (@pmail,@ppass)", SqlConnectionClass.connection);

            SqlConnectionClass.CheckConnection();

            string newPass = Sha256Converter.ComputeSha256Hash(tboxPassword.Text);

            commandRegister.Parameters.AddWithValue("@pmail",tboxMail.Text);
            commandRegister.Parameters.AddWithValue("@ppass",newPass);

            commandRegister.ExecuteNonQuery();
        }
    }
}