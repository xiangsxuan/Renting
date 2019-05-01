using Microsoft.AspNet.Identity;
using System;
using System.Linq;
using System.Web.UI;
using Renting;
using System.Web;

public partial class Admin_AddAdmin : Page
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
        data.RunSql("insert into  Admin (Name,Email,Password) values ('" + UserName.Text + "','" + Email.Text + "','" + Password.Text + "')");
        Alert.AlertAndRedirect("添加管理员账户成功，以后可使用该账户登陆", "Index.aspx");
    }
}