using System;
using System.Data.SqlClient;

public partial class Tenant_HouseSearch : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void SearchBySquareMeter(object sender, EventArgs e)
    {
        Response.Redirect("SearchResult_SquareMeter.aspx?QueryKey=" + QueryKey.Text);
    }

    protected void SearchByLocation(object sender, EventArgs e)
    {
        Response.Redirect("SearchResult_Location.aspx?QueryKey=" + QueryKey.Text);
    }

    protected void SearchByHousetype(object sender, EventArgs e)
    {
        Response.Redirect("SearchResult_Housetype.aspx?QueryKey=" + QueryKey.Text);
    }

    protected void SearchByDescribe(object sender, EventArgs e)
    {
        Response.Redirect("SearchResult_Describe.aspx?QueryKey=" + QueryKey.Text);
    }
    
    protected void SearchByPrice(object sender, EventArgs e)
    {
        Response.Redirect("SearchResult_Price.aspx?QueryKey=" + QueryKey.Text);
    }
}