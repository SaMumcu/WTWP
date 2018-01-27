using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class SubMenu_Bileklik : System.Web.UI.Page
{
    SqlBaglantisi baglanti = new SqlBaglantisi();
    protected void Page_Load(object sender, EventArgs e)
    {


        SqlCommand cmdK = new SqlCommand("Select * from Urun left join UrunKategori on Kategori=KategoriID where KategoriAdi='Bileklik'", baglanti.baglan());

        SqlDataReader drU = cmdK.ExecuteReader();

        dlBileklik.DataSource = drU;
        dlBileklik.DataBind();
    }
}