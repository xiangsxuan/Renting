using System;
public partial class Tenant_Chat : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void SendEmail(object sender, EventArgs e)
    {
        try
        {
        SendMail mail = new SendMail();
        mail.SendEmailAsync(Email.Text,Subject.Text,CKEditorContent.Text);
        Alert.AlertAndRedirect("已发送邮件,请耐心等候回复"+ Email.Text+Subject.Text, "./Chat.aspx");

        }
        catch (Exception)
        {
            Alert.AlertAndRedirect("有Bug", "./Chat.aspx");
            throw;
        }
    }
}