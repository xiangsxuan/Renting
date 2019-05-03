using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using Site.Bll;
using System.Xml;
using System.Text;
using Site.Utility;


//Դ������ www.51aspx.com
public partial class search : System.Web.UI.Page
{
    public int miPage = 0, miPageSize = 10, miTotalRecords = 0, miMaxEnd = 0;
    public string msPid = "admin0460", msWithad = "on", msHighLight = "on", msSearchUrlBase = "", msRemoteAddr = "";
    public string msSearchTime = "", msPingBack = "", msWord = "";
    public static int miNO = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        string sUrlXml = "";

        #region ��������
        miPage = Common.ReturnInt(Request.QueryString["page"]);
        if (miPage <= 0) { miPage = 1; }
        msPid = Common.WebXName();
        msWord = GetRequest("query"); // Common.ReturnString(Request.QueryString["query"]);
        if (msWord == "") { Response.Redirect("/"); }
        if (StringUtil.CheckWords(msWord) == false) { Response.Redirect("/"); }

        msRemoteAddr = Common.ReturnString(Request.ServerVariables["REMOTE_ADDR"]);
        msSearchUrlBase = Common.ReturnString(Request.ServerVariables["url"]);
        if (msSearchUrlBase == "") { msSearchUrlBase = "/search.aspx"; }


        SetMeta("keywords", msWord + "," + msWord + "��ѯ");


        sUrlXml = Common.GetUrlXmlUnion(Server.UrlEncode(msWord), msRemoteAddr, msPid, msHighLight, miPage, miPageSize);
        if (miPage == 1) 
        {
            Page.Title = msWord + " - Google9��������,רע����Ϣ��֪ʶ��ѯ";
        }
        else
        {
            Page.Title = msWord + "(��" + miPage.ToString() + "ҳ) - Google9.com";
        }
        ltCopyInfo.Text = Common.CopyInfo();
        #endregion

        try
        {
            SetVisitor();
            MainProc(sUrlXml);
            sUrlXml = Common.GetUrlXmlAd(msWord, msRemoteAddr, msPid, msHighLight, msWithad);
            GetAdText(sUrlXml);
        }catch { }

        
    }

    protected void SetVisitor() 
    {
        string sReffer = Common.ReturnString(Request.ServerVariables["HTTP_REFERER"]).ToLower();
        if (sReffer != "") 
        {
            if(sReffer.IndexOf("google9.com") == -1)
            {
                pnlUser.Visible = false;
                pnlVisitor.Visible = true;
            }
        }
    }

    protected void SetMeta(string sName, string sContent)
    {
        HtmlMeta meta = new HtmlMeta();
        sContent = Common.CleanHtmlTag(sContent);
        meta.HttpEquiv = sName;
        meta.Content = sContent;
        Page.Header.Controls.Add(meta);
    }

    protected void MainProc(string sUrlXml)
    {
        string sDesc = "", sTopic = "";
        string sPageUrl = "";
        int iPage = 0, iPagePrevious = 0, i = 0;
        StringBuilder sbText = new StringBuilder();
        XmlNodeList NodeList;
        XmlDocument doc = new XmlDocument();
        doc.Load(sUrlXml);
        ltBtmInfo.Text = Common.WebInfo();

        if (doc != null)
        {
            #region ժҪ
            XmlNode xnSummary;
            xnSummary = doc.SelectSingleNode("//hitslength");
            if (xnSummary != null)
            {
                miTotalRecords = Common.ReturnInt(xnSummary.InnerText);
            }

            xnSummary = doc.SelectSingleNode("//maxend");
            if (xnSummary != null)
            {
                miMaxEnd = Common.ReturnInt(xnSummary.InnerText);
            }

            xnSummary = doc.SelectSingleNode("//searchtime");
            if (xnSummary != null)
            {
                msSearchTime = Common.ReturnString(xnSummary.InnerText);
            }

            #endregion

            #region ��ȡ ��� Ad.
            /*
            sbText = new StringBuilder();
            NodeList = doc.SelectNodes("//aditem");
            if (NodeList != null) 
            { 
                foreach (XmlNode xn in NodeList) 
                {
                    sTopic = xn.ChildNodes[0].InnerText.ToString();
                    sDesc = xn.ChildNodes[1].InnerText.ToString();

                    sTopic = sTopic.Replace("\uE40A", "<font color=#C60A00>").Replace("\uE40B", "</font>");
                    sDesc = sDesc.Replace("\uE40A", "<font color=#C60A00>").Replace("\uE40B", "</font>");

                    sbText.Append("<table border=0 cellSpacing=0 cellPadding=0 width=65%><tbody><tr>");
                    sbText.Append("<td class=f><a href=" + xn.ChildNodes[2].InnerText.ToString() + " target=_blank><font size=3>" + sTopic + "</font></a><br />");
                    sbText.Append("<font size=-1>" + sDesc + "<br />");
                    sbText.Append("<font color=#008000>" + xn.SelectSingleNode("showurl").InnerText.ToString() + "</font></font></td>");
                    sbText.Append("</tr></tbody></table><br />");
                }
            }
            ltListAdLeft.Text = sbText.ToString();
            */

            #endregion

            #region ��ȡ ����.
            sbText = new StringBuilder();
            NodeList = doc.SelectNodes("//item");
            string sShowUrl = "", sPageSize = "", sPubDate = "";
            if (NodeList != null)
            {
                try{
                    foreach (XmlNode xn in NodeList)
                    {
                        sTopic = xn.ChildNodes[0].InnerText.ToString();
                        sDesc = xn.ChildNodes[1].InnerText.ToString();

                        sTopic = sTopic.Replace("\uE40A", "<font color=#C60A00>").Replace("\uE40B", "</font>");
                        sDesc = sDesc.Replace("\uE40A", "<font color=#C60A00>").Replace("\uE40B", "</font>");

                        if (xn.SelectSingleNode("showurl") != null) 
                        {
                            sShowUrl = xn.SelectSingleNode("showurl").InnerText.ToString();
                        }
                        if (xn.SelectSingleNode("pagesize") != null)
                        {
                            sPageSize = xn.SelectSingleNode("pagesize").InnerText.ToString();
                        }
                        if (xn.SelectSingleNode("pubDate") != null)
                        {
                            sPubDate = Common.ConvertDate(xn.SelectSingleNode("pubDate").InnerText, "yyyy-MM-dd");
                        }


                        sbText.Append("<table border=0 cellSpacing=0 cellPadding=0 width=65%><tbody><tr>");
                        sbText.Append("<td class=f><a href=" + xn.ChildNodes[2].InnerText.ToString() + " target=_blank><font size=3>" + sTopic + "</font></a><br />");
                        sbText.Append("<font size=-1>" + sDesc + "<br />");
                        sbText.Append("<font color=#008000>" + xn.SelectSingleNode("showurl").InnerText.ToString() + " " + sPageSize + " " + sPubDate + "</font></font></td>");
                        sbText.Append("</tr></tbody></table><br />");
                    }
                }catch { }
            }
            ltListItem.Text = sbText.ToString();



            #endregion


            #region ��ȡ ҳ����Ϣ.
            sbText = new StringBuilder();
            NodeList = doc.SelectNodes("//pagenum");
            if (NodeList != null)
            {
                XmlNode xnPage;
                xnPage = doc.SelectSingleNode("//prevpage");
                if (xnPage != null) 
                {
                    sPageUrl = msSearchUrlBase + xnPage.SelectSingleNode("link").InnerText.ToString();
                    sPageUrl = ConvertPageUrl(sPageUrl, msRemoteAddr);
                    sbText.Append("&nbsp;<a href=" + sPageUrl + ">��һҳ</a>");
                }

                foreach (XmlNode xn in NodeList)
                {
                    sPageUrl = msSearchUrlBase + xn.SelectSingleNode("link").InnerText.ToString();
                    sPageUrl = ConvertPageUrl(sPageUrl, msRemoteAddr);
                    iPage = Common.ReturnInt(xn.SelectSingleNode("title").InnerText);
                    if (miPage == 1) 
                    {
                        if (iPage == 2) 
                        {
                            sbText.Append("&nbsp;&nbsp;1");
                        }
                    }
                    else
                    {
                        if (iPage == iPagePrevious + 2)
                        {
                            sbText.Append("&nbsp;&nbsp;" + Common.ReturnString(iPagePrevious + 1));
                        }
                    }

                    sbText.Append("&nbsp;<a href=" + sPageUrl + ">[" + iPage.ToString() + "]</a>");



                    iPagePrevious = iPage;
                }

                xnPage = doc.SelectSingleNode("//nextpage");
                if (xnPage != null)
                {
                    sPageUrl = msSearchUrlBase + xnPage.SelectSingleNode("link").InnerText.ToString();
                    sPageUrl = ConvertPageUrl(sPageUrl, msRemoteAddr);
                    sbText.Append("&nbsp;<a href=" + sPageUrl + ">��һҳ</a>");
                }

                

            }

            ltPage.Text = sbText.ToString();

            #endregion

            #region  ��ȡ�����Ϣ.
            NodeList = doc.SelectNodes("//hintword");
            sbText = new StringBuilder();
            sbText.Append("<table border=0 cellpadding=0 cellspacing=0><tr>");
            string sWordRelated = "";
            if (NodeList != null)
            {
                //ÿ��5��.
                i = 0;
                foreach (XmlNode xn in NodeList)
                {
                    i++;
                    sWordRelated = xn.InnerText.ToString();
                    sbText.Append("<td nowrap class=\"f14\"><a href=\"" + msSearchUrlBase + "?query=" + Server.UrlEncode(sWordRelated) + "\">" + sWordRelated + "</a></td><td nowrap class=\"s\">��</td>");
                    if (5 == i) 
                    {
                        sbText.Append("</tr><tr>");
                    }
                }
            }
            int iLeft = 10 - i;
            if (iLeft >= 1) 
            {
                for (int n = 1; n <= iLeft; n++) 
                {
                    i++;
                    sbText.Append("<td nowrap class=\"f14\"> </td><td nowrap class=\"s\">��</td>");
                    if (5 == i)
                    {
                        sbText.Append("</tr><tr>");
                    }
                }
            }
            sbText.Append("</tr></table>");
            ltWordsRelated.Text = sbText.ToString();
            #endregion
            

        }
        else
        {
            //������..
        }
    }



    protected string GetRequest(string sName)
    {
	//author: jerry powered by www.0460.com
        string sText = "", sEncode = "";
        if (Request.QueryString[sName] != null)
        {
            try
            {
                System.Collections.Specialized.NameValueCollection hcRequest;
                if (Request.QueryString["code"] != null)
                {
                    sEncode = Request.QueryString["code"].ToLower().Trim();
                }
                //�ַ�����ָ�����ȼ���.
                if ((sEncode == "utf-8") || (sEncode == "gb2312"))
                {
                    hcRequest = HttpUtility.ParseQueryString(Request.Url.Query, System.Text.Encoding.GetEncoding(sEncode));
                    sText = hcRequest[sName].Trim();
                }
                else
                {
                    #region �Զ�ʶ�����.
                    #region ��ȡ����
                    string sTextG, sTextU;
                    int iLenG, iLenU, iBytesG, iBytesU;   //�ֱ�Ϊ���ȣ� ����У������ �ֽ���
                    hcRequest = HttpUtility.ParseQueryString(Request.Url.Query, System.Text.Encoding.GetEncoding("utf-8"));
                    sTextU = hcRequest[sName].Trim();
                    hcRequest = HttpUtility.ParseQueryString(Request.Url.Query, System.Text.Encoding.GetEncoding("gb2312"));
                    sTextG = hcRequest[sName].Trim();
                    iLenG = sTextG.Length;
                    iLenU = sTextU.Length;
                    iBytesG = Common.GetBytes(sTextG);
                    iBytesU = Common.GetBytes(sTextU);
                    #endregion

                    #region У�����.
                    if (iLenG > iLenU)
                    {
                        sText = sTextU;
                    }
                    else
                    {
                        sText = sTextG;
                    }

                    #endregion

                    #endregion
                }
                sText = sText.Replace("<", "").Replace(">", "");//5+1+a+s+p+x
            }
            catch { }
        }
        return sText;
    }


    protected void GetAdText(string sUrlXml) 
    {
        int iType = 0;
        string sDesc = "", sTopic = "";
        StringBuilder sbTextRight = new StringBuilder();
        StringBuilder sbTextLeft = new StringBuilder();
        XmlNodeList NodeList;
        XmlDocument doc = new XmlDocument();
        doc.Load(sUrlXml);
        int iLeft = 0, iRight = 0;
        if (doc != null)
        {
            #region ��ȡ PingBack ��.
            XmlNode xnSummary = doc.SelectSingleNode("//pingback");
            if (xnSummary != null)
            {
                msPingBack = Common.ReturnString(xnSummary.InnerText);
            }

            ltImgPingBack.Text = "<img src=\"" + msPingBack + "\" width=0 height=0 />";
            #endregion

            NodeList = doc.SelectNodes("//aditem");
            if (NodeList != null)
            {
                try
                {
                    foreach (XmlNode xn in NodeList)
                    {
                        iType = Common.ReturnInt(xn.SelectSingleNode("type").InnerText);

                        sTopic = xn.ChildNodes[0].InnerText.ToString();
                        sDesc = xn.ChildNodes[1].InnerText.ToString();

                        sTopic = sTopic.Replace("\uE40A", "<font color=#C60A00>").Replace("\uE40B", "</font>");
                        sDesc = sDesc.Replace("\uE40A", "<font color=#C60A00>").Replace("\uE40B", "</font>");

                        if (iType == 1)
                        {
                            //�Ҳ�.
                            sbTextRight.Append("<table border=0 cellSpacing=0 cellPadding=0 width=260><tbody><tr>");
                            sbTextRight.Append("<td class=f><a href=" + xn.ChildNodes[2].InnerText.ToString() + " target=_blank><font size=3>" + sTopic + "</a><br />");
                            sbTextRight.Append("<font size=-1>" + sDesc + "<br />");
                            sbTextRight.Append("<font color=#008000>" + xn.SelectSingleNode("showurl").InnerText.ToString() + "</font></font></td>");
                            sbTextRight.Append("</tr></tbody></table><br />");
                            iRight++;
                        }
                        else 
                        { 
                            //���.
                            sbTextLeft.Append("<table border=0 cellSpacing=0 cellPadding=0 width=65%><tbody><tr>");
                            sbTextLeft.Append("<td class=f><a href=" + xn.ChildNodes[2].InnerText.ToString() + " target=_blank><font size=3>" + sTopic + "</font></a><br />");
                            sbTextLeft.Append("<font size=-1>" + sDesc + "<br />");
                            sbTextLeft.Append("<font color=#008000>" + xn.SelectSingleNode("showurl").InnerText.ToString() + "</font></font></td>");
                            sbTextLeft.Append("</tr></tbody></table><br />");
                            iLeft++;
                        }
                    }
                }catch { }
            }
        }
        if (miPage == 1)
        {
            ltListAdLeft.Text = sbTextLeft.ToString();//5-1-a-s-p-x
        }
        if (iRight == 0)
        {
            #region ��ʼ�������
            /*
            string sWord = "";

            string[] arrWord = { "Ӣ��", "��Ϸ", "����", "����", "����", "��Ʒ", "���Ϲ���", "��" };
            int i = 0;
            Random rnd = new Random();
            i = rnd.Next(0, 7);
            sWord = arrWord[i];

           
            string  sUrlXmlRight = "http://www.sogou.com/websearch/xml/xml4union.jsp?query=" + Server.UrlEncode(sWord) + "&page=" + miPage.ToString() + "&withad=off&leadip=" + msRemoteAddr + "&pid=" + msPid + "&highlight=" + msHighLight + "&cnt=" + miPageSize.ToString();
            Response.Write(sWord);
            if (miNO == 0)
            {
                miNO++;
                GetAdText(sUrlXmlRight);
            }
            */
            #endregion
        }
        else 
        {
            ltListAdRight.InnerHtml = sbTextRight.ToString();
        }
    }

    protected void GetAdTextRight(string sUrlXml)
    {
        int iType = 0;
        string sDesc = "", sTopic = "";
        StringBuilder sbTextRight = new StringBuilder();
        XmlNodeList NodeList;
        XmlDocument doc = new XmlDocument();
        doc.Load(sUrlXml);
        int iLeft = 0, iRight = 0;
        if (doc != null)
        {
            
            #region ��ȡ PingBack ��.
            XmlNode xnSummary = doc.SelectSingleNode("//pingback");
            if (xnSummary != null)
            {
                msPingBack = Common.ReturnString(xnSummary.InnerText);
            }

            ltImgPingBack.Text = "<img src=\"" + msPingBack + "\" width=0 height=0 />";
            #endregion
            
            NodeList = doc.SelectNodes("//aditem");
            if (NodeList != null)
            {
                try
                {
                    foreach (XmlNode xn in NodeList)
                    {
                        iType = Common.ReturnInt(xn.SelectSingleNode("type").InnerText);

                        sTopic = xn.ChildNodes[0].InnerText.ToString();
                        sDesc = xn.ChildNodes[1].InnerText.ToString();

                        sTopic = sTopic.Replace("\uE40A", "<font color=#C60A00>").Replace("\uE40B", "</font>");
                        sDesc = sDesc.Replace("\uE40A", "<font color=#C60A00>").Replace("\uE40B", "</font>");
                        Response.Write("sWord");
                        if (iType == 1)
                        {
                            //�Ҳ�.
                            sbTextRight.Append("<table border=0 cellSpacing=0 cellPadding=0 width=260><tbody><tr>");
                            sbTextRight.Append("<td class=f><a href=" + xn.ChildNodes[2].InnerText.ToString() + " target=_blank><font size=3>" + sTopic + "</a><br />");
                            sbTextRight.Append("<font size=-1>" + sDesc + "<br />");
                            sbTextRight.Append("<font color=#008000>" + xn.SelectSingleNode("showurl").InnerText.ToString() + "</font></font></td>");
                            sbTextRight.Append("</tr></tbody></table><br />");
                            iRight++;
                        }
                        else
                        {
                            Response.Write("sWord");
                            //��� �����Ҳ�ȥ..
                            sbTextRight.Append("<table border=0 cellSpacing=0 cellPadding=0 width=260><tbody><tr>");
                            sbTextRight.Append("<td class=f><a href=" + xn.ChildNodes[2].InnerText.ToString() + " target=_blank><font size=3>" + sTopic + "</a><br />");
                            sbTextRight.Append("<font size=-1>" + sDesc + "<br />");
                            sbTextRight.Append("<font color=#008000>" + xn.SelectSingleNode("showurl").InnerText.ToString() + "</font></font></td>");
                            sbTextRight.Append("</tr></tbody></table><br />");
                            iRight++;
                        }
                    }
                }
                catch { }
            }
        }
        if (iRight == 0)
        {

        }
        else
        {
            ltListAdRight.InnerHtml = sbTextRight.ToString();
        }
    }

    protected string ConvertPageUrl(string sPageUrl, string sRemoteAddr) 
    {
        string sPageUrlObj = sPageUrl;//5~1-a-s-p-x
        sPageUrlObj = sPageUrlObj.Replace("&withad=on", "").Replace("&withad=off", "").Replace("&cnt=10", "").Replace("&pid=admin0460", "").Replace("&highlight=on", "").Replace("&leadip=" + sRemoteAddr, "").Replace("leadip=" + sRemoteAddr + "&", "").Replace("leadip=" + sRemoteAddr, "");
        return sPageUrlObj;
    }
}
