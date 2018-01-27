using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
{
    SqlBaglantisi baglanti = new SqlBaglantisi();
    protected void Page_Load(object sender, EventArgs e)
    {

    

       

        SqlCommand cmdL = new SqlCommand("Select * from Urun", baglanti.baglan());
        
        SqlDataReader drU = cmdL.ExecuteReader();

        dlUrunler.DataSource = drU;
        dlUrunler.DataBind();


    }
}