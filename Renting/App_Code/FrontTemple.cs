﻿using System;
/// <summary>
/// 前端模板
/// </summary>
public static class FrontTemple
{
    //游客房源模板
    public static string getOddBoxHtml(int id, string title, string describe)
    {
        string result = "";
        result += @"<div class='col-md-6 col-lg-5  wow bounceInUp' data-wow-duration='1.4s'><div class='box'><div class='icon'><i class='ion-ios-bookmarks-outline' style='color: #e9bf06;'></i></div><h4 class='title'><a href='../HouseDetails.aspx?HouseId=" + id + "'>"
                    + title
                    + "</a></h4><p class='description'>"
                    + describe
                    + "</p></div></div>";
        return result;
    }
    public static string getEvenBoxHtml(int id, string title, string describe)
    {
        string result = "";
        result += @"<div class='col-md-6 col-lg-5 offset-lg-1 wow bounceInUp' data-wow-duration='1.4s'><div class='box'><div class='icon'><i class='ion-ios-analytics-outline' style='color: #ff689b;'></i></div><h4 class='title'><a href='../HouseDetails.aspx?HouseId=" + id + "'>"
                    + title
                    + "</a></h4><p class='description'>"
                    + describe
                    + "</p></div></div>";
        return result;
    }

    //租客搜索关键字变红模板
    public static string getOddBoxHtml(int id, string title, string describe, string key)
    {
        string result = "";
        result += @"<div class='col-md-6 col-lg-5  wow bounceInUp' data-wow-duration='1.4s'><div class='box'><div class='icon'><i class='ion-ios-bookmarks-outline' style='color: #e9bf06;'></i></div><h4 class='title'><a href='../HouseDetails.aspx?HouseId=" + id + "'>"
                    + title.ToString().Replace(key, "<font color='red'><strong>" + key + "</strong></font>")
                    + "</a></h4><p class='description'>"
                    + describe.ToString().Replace(key, "<font color='red'><strong>" + key + "</strong></font>")
                    + "</p></div></div>";
        return result;
    }
    public static string getEvenBoxHtml(int id, string title, string describe, string key)
    {
        string result = "";
        result += @"<div class='col-md-6 col-lg-5 offset-lg-1 wow bounceInUp' data-wow-duration='1.4s'><div class='box'><div class='icon'><i class='ion-ios-analytics-outline' style='color: #ff689b;'></i></div><h4 class='title'><a href='../HouseDetails.aspx?HouseId=" + id + "'>"
                    + title.ToString().Replace(key, "<font color='red'><strong>" + key + "</strong></font>")
                    + "</a></h4><p class='description'>"
                    + describe.ToString().Replace(key, "<font color='red'><strong>" + key + "</strong></font>")
                    + "</p></div></div>";
        return result;
    }

    //房源详情显示模板
    public static string getHouseDetailsHtml(string HouseId, string Describe, string Location, string ReleaseTime, string HouseTitle, string Longitude, string HouseType
                                                                    , string Size, string HouseOwnerId, string Latitude, string HouseImg, string Phone, string HouseOwnerName, float Price, float SquareMeter)
    {
        string result = "";
        result += @"<br /><div class='testimonial - item'><img src='img / logo.png' class='testimonial - img' alt=''><h1>"
                            + HouseTitle
                            + "</h1><h4>" + ReleaseTime + "</h4>"
                            + "<h2>【房屋特点】" + Describe + "</h2>"
                            + "<h2>【位置】" + Location + "</h2>"
                            + "<h2>【房型】" + HouseType + "</h2>"
                            + "<h2>【居住面积】" + SquareMeter + "平米</h2>"
                            + "<h2>【电话】" + Phone + "</h2>"
                            + "<h2>【房主联系方式】" + HouseOwnerName + "</h2>"
                            + "<h2>【价格】" + Price + "元</h2>"
                            + "</div>";
        return result;
    }
    //公告栏显示模板
    public static string getInformBoardBoxHtml(string Title, string Content, DateTime ReleaseTime)
    {
        string result = "";
        result += @"<br /><div class='testimonial - item'><img src='img / logo.png' class='testimonial - img' alt=''><h1>"
                            + Title
                            + "</h1><h4>"
                            + ReleaseTime
                            + "</h4><h3>"
                            + Content
                            + "</h3></div>";
        return result;
    }
}