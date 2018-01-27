using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class MLogin : System.Web.UI.Page
{
    SqlBaglantisi baglan = new SqlBaglantisi();
    protected void Page_Load(object sender, EventArgs e)
    {
        //oturumu siliyoruz.
        //Session.Abandon();
    }

    protected void btnGiris_Click(object sender, EventArgs e)
    {
        SqlCommand loginA = new SqlCommand("Select * from Musteri where musteriKullaniciAdi='" + txtKullanici.Text + "' and musteriSifre='" + txtSifre.Text + "'", baglan.baglan());


        SqlDataReader drgiris = loginA.ExecuteReader();
        SqlCommand loginB = new SqlCommand("Select * from Admin where adminKullanici='" + txtKullanici.Text + "' and adminSifre='" + txtSifre.Text + "'", baglan.baglan());

        SqlDataReader drgirisB = loginB.ExecuteReader();

        if (drgiris.Read())
        {
            //20 dk boyunca kullanıcı islem yapmazsa.
            

            Session.Timeout = 20;

            //session a Musteri olarak ulasılıyor.Session ın adı kullanıcının adı.
            Session.Add("MusteriKullaniciAdi", txtKullanici.Text);

            Response.Redirect("Default.aspx");
        }

        


        if (drgirisB.Read())
        {
            Response.Redirect("Panel.aspx");
        }
        else
        {
            Label1.Text = "Hatali bir giris yaptiniz lutfen tekrar deneyiniz.";
            txtKullanici.Text = "";
            txtSifre.Text = "";
        }

        


    }
}