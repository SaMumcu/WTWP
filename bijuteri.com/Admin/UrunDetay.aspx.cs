using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class Admin_UrunDetay : System.Web.UI.Page
{
    SqlBaglantisi baglanti = new SqlBaglantisi();
    protected void Page_Load(object sender, EventArgs e)
    {
        //dropdownlist secim icin kapali
        ddlIlan.Enabled = false;

        //Urun tablosuna eklenen son urunu getirmek icin
        SqlCommand cmdU = new SqlCommand("Select TOP 1 * from Urun order by UrunID desc",baglanti.baglan());

        SqlDataReader drU = cmdU.ExecuteReader();

        ddlIlan.DataTextField = "urunAdi";
        ddlIlan.DataValueField = "urunID";

        ddlIlan.DataSource = drU;
        ddlIlan.DataBind();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand cmdDE = new SqlCommand("insert into UrunDetay (UrunDetay,urunID) values ('"+txtDetay.Text+"','"+ddlIlan.SelectedValue+"')",baglanti.baglan());
        cmdDE.ExecuteNonQuery();

        Response.Redirect("../Panel.aspx");
    }
}