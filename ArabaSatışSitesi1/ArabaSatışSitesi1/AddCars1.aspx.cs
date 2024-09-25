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
    public partial class AddCars1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Convert.ToBoolean(Session["IsUserOnline"]) == true)
            {
                if (Page.IsPostBack == false)
                {

                    SqlCommand commandListBrands = new SqlCommand("Select * from Tbl_Brand", SqlConnectionClass.connection);

                    SqlConnectionClass.CheckConnection();

                    SqlDataReader dr = commandListBrands.ExecuteReader();

                    combobox.DataTextField = "BrandName";

                    combobox.DataValueField = "BrandID";

                    combobox.DataSource = dr;

                    combobox.DataBind();

                    dr.Close();
                }

            }
            else 
            {
                Response.Redirect("Login.aspx");
            }

        }
        protected void btnSend_Click2(object sender, EventArgs e)
        {
            SqlCommand commandAdd = new SqlCommand("Insert into Tbl_Car(CarModel,CarBrandID,CarFuelType,CarDescription,CarContact,CarSeller,CarPhoto,CarPrice) values(@pmodel,@pbrand,@pfuel,@pdes,@pcontact,@pseller,@pphoto,@pprice)", SqlConnectionClass.connection);

            SqlConnectionClass.CheckConnection();

            commandAdd.Parameters.AddWithValue("@pmodel", tboxModel.Text);
            commandAdd.Parameters.AddWithValue("@pbrand", Convert.ToInt32(combobox.SelectedValue));
            commandAdd.Parameters.AddWithValue("@pfuel", tboxFuel.Text);
            commandAdd.Parameters.AddWithValue("@pdes", tboxDescription.Text);
            commandAdd.Parameters.AddWithValue("@pcontact", tboxContact.Text);
            commandAdd.Parameters.AddWithValue("@pseller", tboxSeller.Text);
            commandAdd.Parameters.AddWithValue("@pphoto", tboxPhoto.Text);
            commandAdd.Parameters.AddWithValue("@pprice", tboxPrice.Text);

            commandAdd.ExecuteNonQuery();

        }

    }
}