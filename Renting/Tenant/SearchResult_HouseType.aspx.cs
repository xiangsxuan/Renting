using System;
using System.Data.SqlClient;

public partial class Tenant_SearchResult_Location : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    public string getSearchResult()
    {
        SqlDataReader sqlDataReader;
        SqlData sqlData = new SqlData();
        sqlDataReader = sqlData.GetDataReader(@"select * from  House where HouseType LIKE N'%" + Request["QueryKey"] + "%' ");
        int no = 1;     //序号 用于标识奇偶, 奇偶列样式不同
        string retHtml = "";
        while (sqlDataReader.Read())
        {
            if (no % 2 != 1)
            {
                retHtml += FrontTemple.getOddBoxHtml(int.Parse(sqlDataReader["HouseId"].ToString()), sqlDataReader["HouseTitle"].ToString(), sqlDataReader["Describe"].ToString());
            }
            else
            {
                retHtml += FrontTemple.getEvenBoxHtml(int.Parse(sqlDataReader["HouseId"].ToString()), sqlDataReader["HouseTitle"].ToString(), sqlDataReader["Describe"].ToString());
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

    private string getOddHtml(string title, string describe)
    {
        string result = "";
        result += @"<div class='col-md-6 col-lg-5  wow bounceInUp' data-wow-duration='1.4s'><div class='box'><div class='icon'><i class='ion-ios-bookmarks-outline' style='color: #e9bf06;'></i></div><h4 class='title'><a href=''>"
                    + title
                    + "</a></h4><p class='description'>"
                    + describe
                    + "</p></div></div>";
        return result;
    }

    private string getEvenHtml(string title, string describe)
    {
        string result = "";
        result += @"<div class='col-md-6 col-lg-5 offset-lg-1 wow bounceInUp' data-wow-duration='1.4s'><div class='box'><div class='icon'><i class='ion-ios-analytics-outline' style='color: #ff689b;'></i></div><h4 class='title'><a href=''>"
                    + title
                    + "</a></h4><p class='description'>"
                    + describe
                    + "</p></div></div>";
        return result;
    }
}


/*
 用户返回的前端模板:

 -奇数:
 "<div class='col-md-6 col-lg-5 offset-lg-1 wow bounceInUp' data-wow-duration='1.4s'><div class='box'><div class='icon'><i class='ion-ios-analytics-outline' style='color: #ff689b;'></i></div><h4 class='title'><a href=''>"
+标题
+"</a></h4><p class='description'>"
+介绍
+"</p></div></div>"         

 -偶数:
     "<div class='col-md-6 col-lg-5 wow bounceInUp' data-wow-duration='1.4s'><div class='box'><div class='icon'><i class='ion-ios-bookmarks-outline' style='color: #e9bf06;'></i></div><h4 class='title'><a href=''>"
+title
+"</a></h4><p class='description'>"
+describe
+"</p></div></div>"
     */
