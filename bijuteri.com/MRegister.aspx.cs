using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class MRegister : System.Web.UI.Page
{
    SqlBaglantisi baglanti = new SqlBaglantisi();
    protected void Page_Load(object sender, EventArgs e)
    {
        
        Hata.Text = "";
        //kullanıcı adı ve mail icin kontroller olmalı
    }

    protected void Kayit_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("Select * from Musteri where musteriMail='" + MMail.Text + "' or musteriKullaniciAdi='" + kullaniciAdi.Text + "'", baglanti.baglan());

        SqlDataReader dr = cmd.ExecuteReader();


        if (dr.Read())
        {
            Hata.Text = "Baska bir mail yada kullanici adi giriniz.";
            MMail.Text = "";
            kullaniciAdi.Text = "";

        }
        else
        {
            SqlCommand cmdM = new SqlCommand("Insert into Musteri (musteriAdSoyad,musteriMail,musteriSifre,musteriAdres,musteriTel,musteriKullaniciAdi) values ('" + MAdSoyad.Text + "','" + MMail.Text + "','"+MPassword.Text+"','" + MAdres.Text + "','"+MTel.Text+"','"+kullaniciAdi.Text+"')", baglanti.baglan());
            cmdM.ExecuteNonQuery();

            

            
            Response.Redirect("MLogin.aspx");
        }

    }
}