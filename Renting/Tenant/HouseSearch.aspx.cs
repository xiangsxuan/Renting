using System;
using System.Data.SqlClient;

public partial class Tenant_HouseSearch : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void SearchBySize(object sender, EventArgs e)
    {

    }

    protected void SearchByLocation(object sender, EventArgs e)
    {
        Response.Redirect("SearchResult_Location.aspx?QueryKey=" + QueryKey.Text);
    }


    protected void SearchByHousetype(object sender, EventArgs e)
    {

    }

    protected void SearchByPrice(object sender, EventArgs e)
    {

    }

}