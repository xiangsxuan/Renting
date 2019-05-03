using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Account_Logout : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["AdminId"] = String.Empty;
        Session["AdminName"] = String.Empty;
        Session["HouseOwnerId"] = String.Empty;
        Session["HouseOwnerName"] = String.Empty;
        Session["TenantId"] = String.Empty;
        Session["TenantName"] = String.Empty;
        Session["Role"] = String.Empty;
        Session["Name"] = String.Empty;
        Session["Phone"] = String.Empty;

        Alert.AlertAndRedirect("已退出登陆", "../Default.aspx");
    }
}