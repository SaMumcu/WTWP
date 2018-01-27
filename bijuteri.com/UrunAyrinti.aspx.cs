using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class UrunAyrinti : System.Web.UI.Page
{
    SqlBaglantisi baglan = new SqlBaglantisi();
    
    string urunID = "";
    string baglantiAdresi = "Data Source=.; Initial Catalog=bijuteri.comDB; Integrated Security=true; ";
    protected void Page_Load(object sender, EventArgs e)
    {

        //Session dan gelen degerler Object te tutuluyor.
        Object kullanici = Session["MusteriKullaniciAdi"];

       


       

        SqlConnection conn = new SqlConnection(baglantiAdresi);
        conn.Open();
        if (kullanici != null)
        {
            

            string musteriKullaniciAdi = kullanici.ToString();

            

            string sorgu = "Select musteriID from Musteri where musteriKullaniciAdi='" + musteriKullaniciAdi + "'";
            SqlCommand cmd = new SqlCommand(sorgu, conn);
            object o = cmd.ExecuteScalar();
            int MID = Convert.ToInt32(o);

            //toplam icin**AJAX**
            string sorgu2 = "select sum(urunFiyat)from Urun join MSiparis on Urun.urunID = MSiparis.UrunID where MusteriID='" + MID + "'";
            SqlCommand cmd2 = new SqlCommand(sorgu2, conn);
            object o2 = cmd2.ExecuteScalar();

            if (!DBNull.Value.Equals(o2))
            {
                int total = Convert.ToInt32(o2);
                toplamFiyat.Text = "Toplam tutar:" + total.ToString() + " TL";
            }

            
       

            //master page de toplamFiyat id sini sahip label in update edilmesi
            /*
            UpdatePanel up = (UpdatePanel)Master.FindControl("UpdatePanel2");
            Label labelID = (Label)Master.FindControl("toplamFiyat");
            
            AsyncPostBackTrigger apTrigger = new AsyncPostBackTrigger();
            apTrigger.ControlID = "toplamFiyat";
            apTrigger.EventName = "Click";
            up.Triggers.Add(apTrigger);*/
        }
        
            

            urunID = Request.QueryString["urunID"];
            SqlCommand cmdA = new SqlCommand("Select * from Urun where urunID='" + urunID + "'", baglan.baglan());
            SqlDataReader dr = cmdA.ExecuteReader();

            dlAyrinti.DataSource = dr;
            dlAyrinti.DataBind();


            SqlCommand cmdB = new SqlCommand("Select * from UrunDetay where urunID='" + urunID + "'", baglan.baglan());
            SqlDataReader drB = cmdB.ExecuteReader();

            dlAyrinti2.DataSource = drB;
            dlAyrinti2.DataBind();

            
        
    }


    protected void sepeteEkle_Click(object sender, EventArgs e)
    {
        urunID = Request.QueryString["urunID"];
        //Session dan gelen degerler Object te tutuluyor.
        Object kullanici = Session["MusteriKullaniciAdi"];

        //Sessionde bir kullanici yoksa giris sayfasina yonlendir.
        if (kullanici == null)
        {
            Response.Redirect("MLogin.aspx");
        }
        else
        {
            /*
             ExecuteScalar Kullanımı
                mySqlConnection.Open();
                mySqlCommand.Connection = mySqlConnection;
                mySqlCommand.CommandType = CommandType.Text;
                mySqlCommand.CommandText = "SELECT COUNT(ID) FROM DENEMETABLE";
                int count = (int) mySqlCommand.ExecuteScalar();
             */




            /*  Musteri.Text = kullanici.ToString();
              urunID = Request.QueryString["urunID"];
              SqlCommand cmdUE = new SqlCommand("Insert into Siparis (urunAdi,Kategori,urunResim,urunFiyat) values ('" + txtUrunAdi.Text + "','" + ddlKategori.Text + "','/fuResim/" + fuResim.FileName + "','" + txtFiyat.Text + "')", baglanti.baglan());
              cmdUE.ExecuteNonQuery();
              */
            string musteriKullaniciAdi = kullanici.ToString();
            SqlConnection conn = new SqlConnection(baglantiAdresi);
            conn.Open();

            string sorgu = "Select musteriID from Musteri where musteriKullaniciAdi='"+musteriKullaniciAdi+"'";
            SqlCommand cmd = new SqlCommand(sorgu,conn);

            /* cmd.Connection = conn;
             cmd.CommandText = "Select musteriID from Musteri where musteriKullaniciAdi='musteriKullaniciAdi'";*/

            object o = cmd.ExecuteScalar();
            int MID= Convert.ToInt32(o);
            
            string urun = urunID.ToString();

            //musteri daha onceden aynı urunID'si ile siparis verdiyse urun adedi artacak yada AlısverisSepetinde sayma yapılırken bu kontrol yapılacak.

            //MSiparis te daha onceden boyle bi urun varsa adedini artir.
            //yoksa ekle


           //string sorgu2= "Insert into Siparis (MusteriID,SiparisUrunID) values (MID,'urun')";
            SqlCommand cmdSE = new SqlCommand("Insert into MSiparis (MusteriID,UrunID) values ('" + MID + "','" + urun + "')", conn);
            cmdSE.ExecuteNonQuery();
            
            Label3.Text = "Urun basariyla sepete eklendi.";

            //toplam icin**AJAX**
            string sorgu2 = "select sum(urunFiyat)from Urun join MSiparis on Urun.urunID = MSiparis.UrunID where MusteriID='" + MID + "'";
            SqlCommand cmd2 = new SqlCommand(sorgu2, conn);
            object o2 = cmd2.ExecuteScalar();
            int total = Convert.ToInt32(o2);
            toplamFiyat.Text = "";
            toplamFiyat.Text = "Toplam tutar: " + total.ToString() + " tl";
            conn.Close();
        }
    }
}