using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for SqlBaglantisi
/// </summary>
public class SqlBaglantisi
{
    public SqlConnection baglan()
    {
        //
        // TODO: Add constructor logic here
        //
        SqlConnection baglanti = new SqlConnection("Data Source=.; Initial Catalog=bijuteri.comDB; Integrated Security=true; ");
        baglanti.Open();
        SqlConnection.ClearAllPools();
        SqlConnection.ClearPool(baglanti);
        return (baglanti);
    }
}