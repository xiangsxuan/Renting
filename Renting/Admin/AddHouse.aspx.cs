using System;

public partial class Admin_AddHouse : System.Web.UI.Page
{
    public string Address = "浙江杭州江干区";
    public string Lng = "120.211539";
    public string Lat = "30.263311";

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    SqlData sqldata = new SqlData();
    protected void ChangePassword_Click(object sender, EventArgs e)
    {
        sqldata.RunSql("insert into  House (HouseTitle,Describe,Location,ReleaseTime,HouseType,Size,Longitude,Latitude,HouseOwnerId,HouseOwnerName,Phone) values (" +
                    "N'" + HouseTitle.Text +
                    "',N'" + Describe.Text +
                    "',N'" + suggestId.Text +
                    "',N'" + DateTime.Now.ToString() +
                    "',N'" + HouseType.Text +
                    "',N'" + Size.Text +
                    "','" + lng.Text +
                    "','" + lat.Text +
                    "',N'" + "请联系管理员查询房主信息" +
                    "',N'" + "联系管理员取得房主信息" +
                     "',N'无电话，请联系管理员查询详情')");
        Alert.AlertAndRedirect("添加成功", "AddHouse.aspx");
    }
}