using System;
using System.Data.SqlClient;
using System.Net;
using System.Web.Script.Serialization;
using System.Web.UI;

public partial class MessageList : Page
{
    SqlData sqlData = new SqlData();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    public string GetInformationBoard()
    {
        SqlDataReader sqlDataReader;
        SqlData sqlData = new SqlData();
        sqlDataReader = sqlData.GetDataReader(@"select * from  InformationBoard order by ReleaseTime");
        string retHtml = "";
        while (sqlDataReader.Read())
        {
            retHtml += FrontTemple
                                    .getInformBoardBoxHtml(sqlDataReader["Title"].ToString()
                                            , sqlDataReader["BoardContent"].ToString()
                                            , DateTime.Parse(sqlDataReader["ReleaseTime"].ToString()));
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