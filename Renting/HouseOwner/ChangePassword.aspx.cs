using System;
using System.Data.SqlClient;

public partial class HouseOwner_ChangePassword : System.Web.UI.Page
{

    protected string SuccessMessage
    {
        get;
        private set;
    }

    protected void Page_Load(object sender, EventArgs e)
    {
 
    }

    protected void ChangePassword_Click(object sender, EventArgs e)
    {
        SqlDataReader dr;
        SqlData sqlData = new SqlData();
        if (IsValid)
        {
            dr = sqlData.GetDataReader("select * from  HouseOwner where HouseOwnerId='" + Session["HouseOwnerId"].ToString() + "'and Password='" + CurrentPassword.Text.GetHashCode() + "' ");
            if (dr.HasRows)
            {
                try
                {
                    sqlData.RunSql("Update HouseOwner Set Password = '" + NewPassword.Text.GetHashCode() + "' where HouseOwnerId='" + Session["HouseOwnerId"].ToString() + "' ");
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