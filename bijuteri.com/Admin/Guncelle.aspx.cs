using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Guncelle : System.Web.UI.Page
{
    SqlBaglantisi baglanti = new SqlBaglantisi();
    string urunID = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        //UrunGuncelle sayfasindan gelen parametre cekiliyor.
        urunID = Request.QueryString["urunID"];

        //postback kapalı olmalı ilk degerin donmemesi icin.
        if (IsPostBack == false)
        {
            SqlCommand cmd = new SqlCommand("Select * from Urun where urunID='"+urunID+"'", baglanti.baglan());
            SqlDataReader dr = cmd.ExecuteReader();

            DataTable dtyGtr = new DataTable("tablo");

            dtyGtr.Load(dr);

            //1 satir bilgi cekiliyor.
            DataRow row = dtyGtr.Rows[0];
            txtUrunAd.Text = row["urunAdi"].ToString();
            txtUrunFiyat.Text = row["urunFiyat"].ToString();



            SqlCommand cmdB = new SqlCommand("Select * from UrunDetay where urunID='" + urunID + "'", baglanti.baglan());
            SqlDataReader drB = cmdB.ExecuteReader();

            DataTable dtyGtr2 = new DataTable("tablo");
            dtyGtr2.Load(drB);

            DataRow row2 = dtyGtr2.Rows[0];
            txtDetay.Text = row2["UrunDetay"].ToString();

        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand cmdUP = new SqlCommand("Update Urun Set urunAdi='"+txtUrunAd.Text+"',urunFiyat='"+txtUrunFiyat.Text+"' where urunID='"+urunID+"'", baglanti.baglan());
        SqlCommand cmdUP2 = new SqlCommand("Update UrunDetay Set UrunDetay='" + txtDetay.Text + "' where urunID='" + urunID + "'", baglanti.baglan());
        cmdUP.ExecuteNonQuery();
        cmdUP2.ExecuteNonQuery();

        Response.Redirect("/Panel.aspx");
    }
}