using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class Admin_UrunEkle3 : System.Web.UI.Page
{
    SqlBaglantisi baglanti = new SqlBaglantisi();
    protected void Page_Load(object sender, EventArgs e)
    {
        //postback kapalı olmalı ilk degerin donmemesi icin.
        if (IsPostBack == false)
        {
            //UrunKategori tablosundan kategorileri ceker.
            SqlCommand cmd = new SqlCommand("Select * from UrunKategori", baglanti.baglan());
            SqlDataReader dr = cmd.ExecuteReader();

            kategori.DataTextField = "KategoriAdi";
            kategori.DataValueField = "KategoriID";

            kategori.DataSource = dr;
            kategori.DataBind();
        }

    }

    protected void btnEkle_Click(object sender, EventArgs e)
    {
        if (fuResim.HasFile)
        {
            fuResim.SaveAs(Server.MapPath("/fuResim/" + fuResim.FileName));

            SqlCommand cmdUE = new SqlCommand("Insert into Urun (urunAdi,Kategori,urunResim,urunFiyat) values ('" + txtUrunAdi.Text + "','" + kategori.Text + "','/fuResim/" + fuResim.FileName + "','" + txtFiyat.Text + "')", baglanti.baglan());
            cmdUE.ExecuteNonQuery();

            Response.Redirect("UrunDetay2.aspx");
        }
        else
        {
            //resimsiz bir urun olmamasini sagliyoruz.
            btnEkle.Text = "Resim Ekle";
        }

    }
}