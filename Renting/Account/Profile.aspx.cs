using System;

public partial class Account_Profile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["AdminId"].ToString() != String.Empty)
        {
            Response.Redirect("./Admin/Index.aspx");
        }
        else if (Session["HouseOwnerId"].ToString() != String.Empty)
        {
            Response.Redirect("./Owner/Index.aspx");
        }
        else if (Session["TenantId"].ToString() != String.Empty)
        {
            Response.Redirect("./Tenant/Index.aspx");
        }
    }
}