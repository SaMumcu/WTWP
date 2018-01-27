using System;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : BasePage
{
    SqlBaglantisi baglan = new SqlBaglantisi();
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void btnGiris_Click(object sender, EventArgs e)
    {
        SqlCommand loginA = new SqlCommand("Select * from Admin where adminKullanici='" + txtKullanici.Text + "' and adminSifre='" + txtSifre.Text + "'", baglan.baglan());
        

        SqlDataReader drgiris = loginA.ExecuteReader();


        if (drgiris.Read())
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