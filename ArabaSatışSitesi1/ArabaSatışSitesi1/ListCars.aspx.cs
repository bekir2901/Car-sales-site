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
    public partial class ListCars : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand commandList = new SqlCommand("Select CarID,CarModel,CarBrandID,CarFuelType,CarDescription,CarContact,CarSeller,CarPhoto,CarPrice,CarConfirmation,BrandID,BrandName from Tbl_Car inner join Tbl_Brand on Tbl_Car.CarBrandID=Tbl_Brand.BrandID where CarConfirmation=@pcon",SqlConnectionClass.connection);

            SqlConnectionClass.CheckConnection();

            commandList.Parameters.AddWithValue("@pcon", true);

            SqlDataReader dr = commandList.ExecuteReader();

            DataList1.DataSource = dr;

            DataList1.DataBind();

            dr.Close();

        }
    }
}