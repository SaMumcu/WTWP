using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Yeni : System.Web.UI.Page
{
    SqlBaglantisi baglanti = new SqlBaglantisi();
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlCommand cmdK = new SqlCommand("Select TOP 6 * from Urun order by urunID desc", baglanti.baglan());

        SqlDataReader drU = cmdK.ExecuteReader();

        dlYeni.DataSource = drU;
        dlYeni.DataBind();
    }
}