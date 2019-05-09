using Renting;
using System.Net.Mail;

/// <summary>
/// SendMail是一个建议的SMTP邮箱发送类
/// </summary>
public class SendMail
{
    public bool SendEmailAsync(string receiveEmail, string subject, string message)
    {
        MailMessage myMessage = new MailMessage();
        myMessage.Subject = subject;
        myMessage.Body = message;
        myMessage.From = new MailAddress(MailConfiguration.Sender, "有人在租房网找你啦!~");
        myMessage.To.Add(new MailAddress(receiveEmail));
        myMessage.IsBodyHtml = true;

        SmtpClient mySmtpClient = new SmtpClient
        {
            Host = MailConfiguration.Host,
            Port = MailConfiguration.Port,
            Credentials = new System.Net.NetworkCredential(MailConfiguration.Sender, MailConfiguration.Password),
            EnableSsl = true
        };

        try
        {
            mySmtpClient.Send(myMessage);
            System.Diagnostics.Debug.WriteLine("发送邮箱成功！");
            return true;
        }
        catch (SmtpException ex)
        {
            System.Diagnostics.Debug.WriteLine(ex.Message);
            return false;
            throw;
        }

    }
}

