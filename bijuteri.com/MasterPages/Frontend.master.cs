using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class MasterPages_Frontend : System.Web.UI.MasterPage
{
    SqlBaglantisi baglanti = new SqlBaglantisi();
    string baglantiAdresi = "Data Source=.; Initial Catalog=bijuteri.comDB; Integrated Security=true; ";
    protected void Page_Load(object sender, EventArgs e)
    {
        //Session dan gelen degerler Object te tutuluyor.
        Object kullanici = Session["MusteriKullaniciAdi"];

        if (kullanici == null)
        {

            Button l2 = (Button)this.Page.Master.FindControl("Giris");
            l2.Visible = true;


        }
        else
        {

            //masterpage deki kontrole erisim Page_Load  metodu disinda bir metotla saglanamiyor.

            //masterpage deki kontrole erisim
            Label l = (Label)this.Page.Master.FindControl("Isim");

            //giris yapan kisinin adinin masterpagedeki labelda gosterilmesi
            l.Text = kullanici.ToString();

            //giris yapmis bir kullanici varsa giris gorunmemeli
            Button l2 = (Button)this.Page.Master.FindControl("Giris");
            l2.Visible = false;

            Button b1 = (Button)this.Page.Master.FindControl("Cikis");
            b1.Visible = true;

            Label l3 = (Label)this.Page.Master.FindControl("toplamTutar");




            string musteriKullaniciAdi = kullanici.ToString();
            SqlConnection conn = new SqlConnection(baglantiAdresi);
            conn.Open();

            string sorgu = "Select musteriID from Musteri where musteriKullaniciAdi='" + musteriKullaniciAdi + "'";
            SqlCommand cmd = new SqlCommand(sorgu, conn);
            object o = cmd.ExecuteScalar();
            int MID = Convert.ToInt32(o);


            string sorgu2 = "select sum(urunFiyat)from Urun join MSiparis on Urun.urunID = MSiparis.UrunID where MusteriID='" + MID + "'";
            SqlCommand cmd2 = new SqlCommand(sorgu2, conn);
            object o2 = cmd2.ExecuteScalar();
            if (!DBNull.Value.Equals(o2))
            {
                int total = Convert.ToInt32(o2);
                toplamTutar.Text = "Toplam tutar:" + total.ToString() + " TL";
            }
            
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        
    }

    protected void Button1_Click1(object sender, EventArgs e)
    {
    }

    protected void Cikis_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("~/Default.aspx");
    }

    protected void Giris_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/MLogin.aspx");
    }
}
