using Microsoft.AspNet.Identity;
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
            Session["TenantId"] = sqlDataReader["TenantId"].ToString();
            Session["TenantName"] = sqlDataReader["Name"].ToString();
            Alert.AlertAndRedirect("登陆成功！", "./Index.aspx");

        }
        else
        {
            Alert.AlertAndRedirect("账号或者密码不对请重新登陆！", "../Default.aspx");
        }
    }
}