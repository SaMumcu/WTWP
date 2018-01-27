using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Admin_Sil : System.Web.UI.Page
{
    SqlBaglantisi baglan = new SqlBaglantisi();
    string urunID = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        urunID = Request.QueryString["urunID"];

        SqlCommand cmdA = new SqlCommand("Select * from Urun where urunID='" + urunID + "'", baglan.baglan());
        SqlDataReader dr = cmdA.ExecuteReader();

        dlSil.DataSource = dr;
        dlSil.DataBind();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        urunID = Request.QueryString["urunID"];
        SqlCommand cmdB = new SqlCommand("Delete from UrunDetay where urunID='" + urunID + "'", baglan.baglan());
        SqlDataReader drB = cmdB.ExecuteReader();

        SqlCommand cmdC = new SqlCommand("Delete from MSiparis where UrunID='" + urunID + "'", baglan.baglan());
        SqlDataReader drC = cmdC.ExecuteReader();

        SqlCommand cmdA = new SqlCommand("Delete from Urun where urunID='" + urunID + "'", baglan.baglan());
        SqlDataReader dr = cmdA.ExecuteReader();
        
        Response.Redirect("../Panel.aspx");
    }
}