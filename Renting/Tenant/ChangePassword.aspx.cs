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
            // 从操作中去除查询字符串
            Form.Action = ResolveUrl("~/Account/Manage");

            SuccessMessage =
                message == "ChangePwdSuccess" ? "已更改你的密码。"
                : message == "SetPwdSuccess" ? "已设置你的密码。"
                : message == "RemoveLoginSuccess" ? "该帐户已删除。"
                : String.Empty;
            successMessage.Visible = !String.IsNullOrEmpty(SuccessMessage);
        }
    }

    protected void ChangePassword_Click(object sender, EventArgs e)
    {
        SqlDataReader dr;
        SqlData sqlData = new SqlData();
        if (IsValid)
        {
            dr = sqlData.GetDataReader("select * from  Tenant where TenantId='" + Session["TenantId"].ToString() + "'and Password='" + CurrentPassword.Text.GetHashCode() + "' ");
            if (dr.HasRows)
            {
                try
                {
                    sqlData.RunSql("Update Tenant Set Password = '" + NewPassword.Text.GetHashCode() + "' where TenantId='" + Session["TenantId"].ToString() + "' ");
                    Alert.AlertAndRedirect("修改成功！", "./Index.aspx");
                }
                catch
                {
                    Alert.AlertAndRedirect("weixiugai！", "./ChangePassword");
                }
            }
            else
            {
                Alert.AlertAndRedirect("密码错误，修改失败！", "./ChangePassword");
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