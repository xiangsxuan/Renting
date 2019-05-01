using Renting;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Text;
using System.Web;

/// <summary>
/// sendMail 的摘要说明
/// </summary>
public class sendMail
{
    public  bool SendEmailAsync(string receiveEmail, string subject, string message)
    {
        using (SmtpClient client = new SmtpClient(MailConfiguration.Host, MailConfiguration.Port))
        {
            client.Credentials = new NetworkCredential(MailConfiguration.Sender, MailConfiguration.Password);
            client.EnableSsl = true;

            MailMessage mail = new MailMessage(MailConfiguration.Sender, receiveEmail, subject, message);
            mail.SubjectEncoding = Encoding.UTF8;
            mail.BodyEncoding = Encoding.UTF8;
            mail.IsBodyHtml = true;

            client.SendMailAsync(mail);
            return true;
        }
    }
}

