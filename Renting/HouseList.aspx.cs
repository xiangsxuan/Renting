using System;
using System.Data.SqlClient;
using System.Net;
using System.Web.Script.Serialization;
using System.Web.UI;

public partial class HouseList : Page
{
    SqlData sqlData = new SqlData();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    public string getLocalHouse()
    {
        SqlDataReader sqlDataReader;
        SqlData sqlData = new SqlData();
        sqlDataReader = sqlData.GetDataReader(@"select * from  House where Location LIKE N'%" + getCityByIP() + "%' ");
        int no = 1;     //序号 用于标识奇偶, 奇偶列样式不同
        string retHtml = "";
        while (sqlDataReader.Read())
        {
            if (no % 2 != 1)
            {
                retHtml += FrontTemple.getOddBoxHtml(sqlDataReader["HouseTitle"].ToString(), sqlDataReader["Describe"].ToString());
            }
            else
            {
                retHtml += FrontTemple.getEvenBoxHtml(sqlDataReader["HouseTitle"].ToString(), sqlDataReader["Describe"].ToString());
            }
            no++;
            //searchResult += "<tr><td><h2>"
            //    + no
            //    + "<a href=huatixiangxi.aspx?huatiID="
            //    + sqlDataReader["HouseId"] + ">"
            //    + sqlDataReader["Location"].ToString()
            //            .Replace(Request["QueryKey"].ToString(), "<font color='red'>" + Request["QueryKey"].ToString() + "</font>")
            //     + "</a></h2></td></tr>\n";

            //no++;
        }
        sqlDataReader.Close();
        return retHtml;
    }



    public string getCityByIP()
    {
        string userIp = "183.247.174.106";//上线后改为 Request.UserHostAddress;
        //Uri url = new Uri("http://api.map.baidu.com/location/ip?ak=iTrwV0ddxeFT6QUziPQh2wgGofxmWkmg&ip=" + userIp);
        System.Net.HttpWebRequest request;
        System.Net.HttpWebResponse response;
        Console.Write(userIp);
        string url = string.Format("http://api.map.baidu.com/location/ip?ak=iTrwV0ddxeFT6QUziPQh2wgGofxmWkmg&ip=", userIp);
        try
        {
            request = HttpWebRequest.Create(url) as System.Net.HttpWebRequest;
            response = request.GetResponse() as System.Net.HttpWebResponse;
            using (System.IO.Stream stream = response.GetResponseStream())
            {
                using (System.IO.StreamReader sr = new System.IO.StreamReader(stream, System.Text.Encoding.UTF8))
                {
                    string Data = sr.ReadToEnd();
                    System.Web.Script.Serialization.JavaScriptSerializer serializer = new JavaScriptSerializer();
                    Root detail = serializer.Deserialize<Root>(Data);
                    return detail.content.address_detail.city.ToString();
                }
            }
        }
        catch (Exception)
        {
            return null;
        }
    }
}