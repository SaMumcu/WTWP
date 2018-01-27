using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class AlisverisSepeti : System.Web.UI.Page
{
    SqlBaglantisi baglanti = new SqlBaglantisi();
    int count = 0;
    string urunID = "";
    string baglantiAdresi = "Data Source=.; Initial Catalog=bijuteri.comDB; Integrated Security=true; ";
    protected void Page_Load(object sender, EventArgs e)
    {
        //Session dan gelen degerler Object te tutuluyor.
        Object kullanici = Session["MusteriKullaniciAdi"];

        if (kullanici == null)
        {
            Response.Redirect("MLogin.aspx");
        }
        else
        {
            //MSiparis tablosundan musterinin yaptıgı alısverisleri cekiyoruz.

            
            string musteriKullaniciAdi = kullanici.ToString();
            SqlConnection conn = new SqlConnection(baglantiAdresi);
            conn.Open();

            string sorgu = "Select musteriID from Musteri where musteriKullaniciAdi='" + musteriKullaniciAdi + "'";
            SqlCommand cmd = new SqlCommand(sorgu, conn);
            object o = cmd.ExecuteScalar();
            int MID = Convert.ToInt32(o);



            SqlCommand cmdL = new SqlCommand("Select * from Urun where urunID IN(Select UrunID from MSiparis where MusteriID='" + MID + "')", baglanti.baglan());

            SqlDataReader drU = cmdL.ExecuteReader();

            dlSepet.DataSource = drU;
            dlSepet.DataBind();


            /*
             * veritabaninda 
            string sorgu2 = "select Count(UrunID) from MSiparis where MusteriID='" + MID + "' group by UrunID";
            SqlCommand cmd2 = new SqlCommand(sorgu2, conn);
            count = (int)cmd2.ExecuteScalar();
            Label3.Text = count;
            */
            /*SqlCommand cmdB = new SqlCommand("Select * from MSiparis");
            cmdB.Connection = conn;
            SqlDataReader drB = cmdB.ExecuteReader();
            dlSepet.DataSource = drB;
            dlSepet.DataBind();*/


            

        }
    }

    protected void Onay_Click(object sender, EventArgs e)
    {
        //Siparis gonderildiginde sepet bosaltilir.


        Response.Redirect("OdemeBilgileri.aspx");
    }
}