using System;
using System.Data.SqlClient;

public partial class Tenant_ChangePassword : System.Web.UI.Page
{

    protected string SuccessMessage
    {
        get;
        private set;
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        // 呈现成功消息
        var message = Request.QueryString["m"];
        if (message != null)
        {

        }
    }

    protected void ChangePassword_Click(object sender, EventArgs e)
    {
        SqlDataReader dr;
        SqlData sqlData = new SqlData();
        if (IsValid)
        {
            dr = sqlData.GetDataReader("select * from  Tenant where Name='" + UserName.Text+ "' ");
            if (dr.HasRows)
            {
                try
                {
                    sqlData.RunSql("Update Tenant Set Password = '" + NewPassword.Text.GetHashCode() + "' where Name='" + UserName.Text.ToString() + "' ");
                    Alert.AlertAndRedirect("修改成功！", "./Index.aspx");
                }
                catch
                {
                    Alert.AlertAndRedirect("修改失败,联系开发者！", "./ChangePassword");
                }
            }
            else
            {
                Alert.AlertAndRedirect("无此用户，修改失败！", "./ChangePassword");
            }
            //UserManager manager = new UserManager();
            //IdentityResult result = manager.ChangePassword(User.Identity.GetUserId(), CurrentPassword.Text, NewPassword.Text);
            //if (result.Succeeded)
            //{
            //    var user = manager.FindById(User.Identity.GetUserId());
            //    IdentityHelper.SignIn(manager, user, isPersistent: false);
            //    Response.Redirect("~/Account/Manage?m=ChangePwdSuccess");
            //}
            //else
            //{
            //    Response.Write("ChangePassword.aspx页面有误")；
            //}
        }
    }
}