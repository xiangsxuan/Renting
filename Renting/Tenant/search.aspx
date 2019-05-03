<%@ Page Language="C#" AutoEventWireup="true" EnableViewState="false" Debug="true"  Trace="false"  CodeFile="search.aspx.cs" Inherits="search" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title></title>
    <link href="css/google9.css" rel="stylesheet" type="text/css" />
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
    <meta http-equiv="X-UA-Compatible" content="IE=7" />
</head>
<body link="#261cdc">

<table width="100%" height="54" align="center" cellpadding="0" cellspacing="0">
<tr valign="middle">
<td width="100%" valign="top" style="padding-left:8px;width:137px;" nowrap>
<a href="/"><img src="/images/logo_s.gif" width="137" height="49" border="0" alt="到Google9首页 最简单实用的商务搜索引擎" /></a>
</td>
<td>&nbsp;&nbsp;&nbsp;</td>
<td width="100%" valign="top">
<div class="Tit">
<span class="fB">网页</span>&nbsp;&nbsp;<a style="color: #00c; font-family: arial" href="http://web.google9.com/">聚搜<span style="FONT-FAMILY: 宋体"></span></a>&nbsp;&nbsp;<a style="color: #00c; font-family: arial" href="http://my.0460.com/">绿色上网主页<span style="FONT-FAMILY: 宋体">&gt;&gt;</span></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>
<table cellspacing="0" cellpadding="0">
<tr><td valign="top" nowrap>
<form name="f" action="?" >
<input name="query" size="42" class="i" value="<%=msWord %>" maxlength="100" />
<input type="submit" class="hand" value="搜 索" />&nbsp;&nbsp;&nbsp;&nbsp;

</form></td>
<td valign="middle" nowrap>
&nbsp;
</td></tr></table>
</td>
<td></td>
</tr></table>

<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" class="bi">
<tr>
<td width="9%" nowrap>&nbsp;&nbsp;&nbsp;<a onclick="this.style.behavior='url(#default#homepage)';this.setHomePage('http://www.google9.com')" href="#" style="color:#000000;">把Google9设为主页</a></td>
<td width="64%" nowrap><a href="#" target="_blank"></a></td>
<td width="27%" align="right" nowrap>找到“<%=msWord %>”相关网页约<%=miTotalRecords %>篇，用时<%=msSearchTime %>秒&nbsp;&nbsp;</td>
</tr>
</table>
<table width="25%" border="0" cellpadding="0" cellspacing="0" align="right" style="border-left:1px solid #e1e1e1;">

    <tr>
    <td><div style="word-break:break-all;word-wrap:break-word;">

<div id="ltListAdRight" runat="server">
<table border=0 cellSpacing=0 cellPadding=0 width=260><tbody><tr><td class=f style="padding-bottom:10px;">
<b>热门搜索排行</b>
</td></tr></tbody></table>

<table border=0 cellSpacing=0 cellPadding=0 width=260><tbody><tr><td class=f>

<script type="text/javascript"><!--
google_ad_client = "pub-2270116976095663";
/* 234x60, 创建于 10-3-5 */
google_ad_slot = "7504020389";
google_ad_width = 234;
google_ad_height = 60;
//-->
</script>
<script type="text/javascript"
src="http://pagead2.googlesyndication.com/pagead/show_ads.js">
</script>

</td></tr></tbody></table><br />   
</div>

    <br /></div></td>
  </tr>


  <tr>
    <td height="19">　</td>
  </tr>
</table>


<script type="text/javascript"><!--
google_ad_client = "pub-2270116976095663";
/* 468x15, 创建于 10-3-5 */
google_ad_slot = "5869065181";
google_ad_width = 468;
google_ad_height = 15;
//-->
</script>
<script type="text/javascript"
src="http://pagead2.googlesyndication.com/pagead/show_ads.js">
</script>

<asp:Literal ID="ltListAdLeft" runat="server"></asp:Literal>

<asp:Panel ID="pnlVisitor" Visible="false" runat="server">
</asp:Panel>
    
<asp:Literal ID="ltListItem" runat="server"></asp:Literal>

    <asp:Panel ID="pnlUser" runat="server">
    <table border=0 cellSpacing=0 cellPadding=0><tbody><tr><td class=f>
   
<script type="text/javascript"><!--
google_ad_client = "pub-2270116976095663";
/* 468x15, 创建于 10-3-5 */
google_ad_slot = "5869065181";
google_ad_width = 468;
google_ad_height = 15;
//-->
</script>
<script type="text/javascript"
src="http://pagead2.googlesyndication.com/pagead/show_ads.js">
</script>

</td></tr></tbody></table>
    </asp:Panel>
    

    
<br clear="all" />

<div class="p">

    <asp:Literal ID="ltPage" runat="server"></asp:Literal>

</div>
<br>
    <div style="background-color:#eff2fa;height:60px;width:100%;clear:both">
    <table width="96%" height="100%" border="0" align="center" cellpadding="0" cellspacing="0"><tr>
    <td style="font-size:14px;font-weight:bold;height:40px;width:70px;">相关搜索</td><td rowspan="2" valign="middle">
    
    
        <asp:Literal ID="ltWordsRelated" runat="server"></asp:Literal>

    
    
    </td></tr><tr><td>　</td></tr>
    </table></div>
   


<table cellpadding="0" cellspacing="0" style="margin-left:18px;height:60px;">
<form name="f2" action="" >
<tr valign="middle">
<td nowrap>
<input name="query" size="35" class="i" value="<%=msWord %>" maxlength="100">
<input type="submit" class="hand" value=" 搜 索 " /> &nbsp;&nbsp;&nbsp;

<a class="Tit" href="http://web.google9.com/s.php?q=<%=Server.UrlEncode(msWord) %>">找更多"<%=msWord %>"</a>
</td>
<td nowrap>&nbsp;</td>
</tr>
</form>
</table>

<div id="ft"><asp:Literal ID="ltBtmInfo" runat="server"></asp:Literal> <a class="none" href=http://www.google9.com/>Google9</a> <span> 此内容为根据您的指令采用技术支持方自动搜索的结果，不代表Google9立场</span></div>
<div class="center" id="dCopy"><asp:Literal ID="ltCopyInfo" runat="server"></asp:Literal></div>
        
        
    
    <asp:Literal ID="ltImgPingBack" runat="server"></asp:Literal>

    
</body>
</html>
