using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Firsatlar : System.Web.UI.Page
{
    SqlBaglantisi baglanti = new SqlBaglantisi();
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlCommand cmdL = new SqlCommand("Select * from Urun where urunFiyat<=15", baglanti.baglan());

        SqlDataReader drU = cmdL.ExecuteReader();

        dlFirsatlar.DataSource = drU;
        dlFirsatlar.DataBind();
    }
}