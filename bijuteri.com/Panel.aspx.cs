using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Default2 : System.Web.UI.Page
{
    string baglantiAdresi = "Data Source=.; Initial Catalog=bijuteri.comDB; Integrated Security=true; ";
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(baglantiAdresi);
        conn.Open();

        string sorgu = "select TOP 10 * from MSiparis order by SiparisID desc";
        SqlDataAdapter sda = new SqlDataAdapter(sorgu,conn);
        DataSet ds = new DataSet();
        sda.Fill(ds);
        gv1.DataSource = ds;
        gv1.DataBind();
    }
}