using System;
using System.Data.SqlClient;

public partial class Admin_AdminLogin : System.Web.UI.Page
{
    SqlDataReader dr;
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
        dr = sqlData.GetDataReader("select * from  Admin where Name='" + UserName.Text + "'and Password='" + Password.Text + "' ");
        if (dr.Read())
        {
            Session["AdminId"] = String.Empty;
            Session["AdminName"] = String.Empty;
            Session["HouseOwnerId"] = String.Empty;
            Session["HouseOwnerName"] = String.Empty;
            Session["TenantId"] = String.Empty;
            Session["TenantName"] = String.Empty;
            Session["Role"] = String.Empty;
            Session["Name"] = String.Empty;

            Session["AdminId"] = dr["AdminId"].ToString();
            Session["AdminName"] = dr["Name"].ToString();
            Session["Name"] = dr["Name"].ToString();
            Session["Role"] = "Admin";
            Alert.AlertAndRedirect("登陆成功！", "./Index.aspx");
        }
        else
        {
            Alert.AlertAndRedirect("账号或者密码不对请重新登陆！", "../Default.aspx");
        }
    }
}
