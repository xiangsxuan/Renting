using System;

public partial class Admin_AddHouse : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    SqlData sqldata = new SqlData();
    protected void ChangePassword_Click(object sender, EventArgs e)
    {
        sqldata.RunSql("insert into  House (HouseTitle,Describe,Location,ReleaseTime,HouseType,Size,HouseOwnerId,HouseOwnerName,Phone) values (" +
            "N'" + HouseTitle.Text +
            "',N'" + Describe.Text +
            "',N'" + Location.Text +
            "',N'" + DateTime.Now.ToString() +
            "',N'" + HouseType.Text +
            "',N'" + Size.Text +
            "',N'" + "请联系管理员查询房主信息" +
            "',N'" + HouseOwnerName.Text +
             "',N'无电话，请联系管理员查询详情')");
        Alert.AlertAndRedirect("添加成功", "AddHouse.aspx");
    }
}