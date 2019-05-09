using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Data.SqlClient;
using System.Xml;
using System.IO;

public partial class Contact : Page
{
    SqlData sqlData = new SqlData();
    protected void Page_Load(object sender, EventArgs e)
    {
        bindMyData();
    }

    private void bindMyData()
    {
        string str3 = "select * from HouseImg";
        DataSet ds3 = sqlData.GetDs(str3,"HouseImg");
        DataList1.DataSource = ds3.Tables[0];
        DataList1.DataBind();
    }

    protected string bd(string str)
    {

        string sql = " select  HouseImgFile from  HouseImg where HouseImgId= " + Convert.ToInt32(str);

        DataTable sdr = sqlData.GetDs(sql, "HouseImg").Tables[0];

        if (sdr.Rows.Count > 0)
        {
            Console.WriteLine("行数大于1");
            return sdr.Rows[0]["HouseImgFile"].ToString();
        }
        else
        {
            return "images\\11_03.jpg";
        }
    }
}