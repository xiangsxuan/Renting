﻿using Microsoft.AspNet.Identity;
using Renting;
using System;
using System.Data.SqlClient;
using System.Web;

public partial class Tenant_TenantLogin : System.Web.UI.Page
{
    SqlDataReader sqlDataReader;
    SqlData sqlData = new SqlData();
    protected void Page_Load(object sender, EventArgs e)
    {
        //返回链接
        //RegisterHyperLink.NavigateUrl = "Register";
        //var returnUrl = HttpUtility.UrlEncode(Request.QueryString["ReturnUrl"]);
        //if (!String.IsNullOrEmpty(returnUrl))
        //{
        //    RegisterHyperLink.NavigateUrl += "?ReturnUrl=" + returnUrl;
        //}
    }

    protected void LogIn(object sender, EventArgs e)
    {
        sqlDataReader = sqlData.GetDataReader("select * from  Tenant where Name='" + UserName.Text + "'and Password='" + Password.Text + "' ");
        if (sqlDataReader.Read())
        {
            Session["AdminId"] = String.Empty;
            Session["AdminName"] = String.Empty;
            Session["HouseOwnerId"] = String.Empty;
            Session["HouseOwnerName"] = String.Empty;
            Session["TenantId"] = String.Empty;
            Session["TenantName"] = String.Empty;
            Session["Role"] = String.Empty;
            Session["Name"] = String.Empty;

            Session["TenantId"] = sqlDataReader["TenantId"].ToString();
            Session["TenantName"] = sqlDataReader["Name"].ToString();
            Session["Name"] = sqlDataReader["Name"].ToString();
            Session["Role"] = "Tenant";
            Alert.AlertAndRedirect("登陆成功！", "./Index.aspx");

        }
        else
        {
            Alert.AlertAndRedirect("账号或者密码不对请重新登陆！", "../Default.aspx");
        }
    }
}