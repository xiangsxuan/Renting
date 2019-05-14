using System;
/// <summary>
/// FrontTemple 的摘要说明
/// </summary>
public static class FrontTemple
{
    public static string getOddBoxHtml(string title, string describe)
    {
        string result = "";
        result += @"<div class='col-md-6 col-lg-5  wow bounceInUp' data-wow-duration='1.4s'><div class='box'><div class='icon'><i class='ion-ios-bookmarks-outline' style='color: #e9bf06;'></i></div><h4 class='title'><a href=''>"
                    + title
                    + "</a></h4><p class='description'>"
                    + describe
                    + "</p></div></div>";
        return result;
    }

    public static string getEvenBoxHtml(string title, string describe)
    {
        string result = "";
        result += @"<div class='col-md-6 col-lg-5 offset-lg-1 wow bounceInUp' data-wow-duration='1.4s'><div class='box'><div class='icon'><i class='ion-ios-analytics-outline' style='color: #ff689b;'></i></div><h4 class='title'><a href=''>"
                    + title
                    + "</a></h4><p class='description'>"
                    + describe
                    + "</p></div></div>";
        return result;
    }

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