using Microsoft.AspNet.Identity;
using System;
using System.Linq;
using System.Web.UI;
using Renting;
using System.Web;

public partial class Account_Register : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //返回链接添加到这里
        var returnUrl = HttpUtility.UrlEncode(Request.QueryString["ReturnUrl"]);
        if (!String.IsNullOrEmpty(returnUrl))
        {
            //RegisterHyperLink.NavigateUrl += "?ReturnUrl=" + returnUrl;
        }
    }

    SqlData data = new SqlData();
    protected void CreateUser_Click(object sender, EventArgs e)
    {
        data.RunSql("insert into  Tenant (Name,Email,Password) values ('" + UserName.Text + "','" + Email.Text + "','"+Password.Text.GetHashCode() + "')");
        Alert.AlertAndRedirect("注册成功，跳转至登陆页面", "TenantLogin.aspx");
    }
}