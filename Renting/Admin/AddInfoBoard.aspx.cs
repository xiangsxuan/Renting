using System;

public partial class Admin_AddInfoBoard : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void AddBoard(object sender, EventArgs e)
    {

        SqlData data = new SqlData();
        data.RunSql("insert into  InformationBoard (Title,BoardContent,ReleaseTime) values (N'" + InfoTitle.Text + "',N'" + CKEditorContent.Text + "','" + DateTime.Now + "')");
        Alert.AlertAndRedirect("添加公告成功，可到”信息公告栏“页面浏览", "Index.aspx");
    }
}