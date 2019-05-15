using System;
using System.Data.SqlClient;
using System.Net;
using System.Web.Script.Serialization;
using System.Web.UI;

public partial class HouseDetails : Page
{
    SqlData sqlData = new SqlData();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    public string GetHouseTitle()
    {
        SqlDataReader sqlDataReader;
        SqlData sqlData = new SqlData();
        sqlDataReader = sqlData.GetDataReader(@"select * from  House where HouseId='" + Request["HouseId"].ToString() + "'");
        string retTitle = "";
        if(sqlDataReader.Read())
        {
           retTitle = sqlDataReader["HouseTitle"].ToString();
        }
        return retTitle;
    }

    public string GetInformationBoard()
    {
        SqlDataReader sqlDataReader;
        SqlData sqlData = new SqlData();
        sqlDataReader = sqlData.GetDataReader(@"select * from  House where HouseId='" + Request["HouseId"].ToString() + "'");
        string retHtml = "";
        if (sqlDataReader.Read())
        {

            retHtml += FrontTemple
                                    .getHouseDetailsHtml(sqlDataReader["HouseId"].ToString(),
                                        sqlDataReader["Describe"].ToString(),
                                        sqlDataReader["Location"].ToString(),
                                        sqlDataReader["ReleaseTime"].ToString(),
                                        sqlDataReader["HouseTitle"].ToString(),
                                        sqlDataReader["Longitude"].ToString(),
                                        sqlDataReader["HouseType"].ToString(),
                                        sqlDataReader["Size"].ToString(),
                                        sqlDataReader["HouseOwnerId"].ToString(),
                                        sqlDataReader["Latitude"].ToString(),
                                        sqlDataReader["HouseImg"].ToString(),
                                        sqlDataReader["Phone"].ToString(),
                                        sqlDataReader["HouseOwnerName"].ToString()
                                            );
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