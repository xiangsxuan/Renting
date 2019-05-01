<%@ Page Title="TenantPage" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="Tenant_Index" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>快搜合适房源</h1>
                <%--<p class="lead">出租房源？租住房源？快来租房网，为您免费提供了房主房客沟通平台, 。</p>--%>
        <p><a href="./HouseSearch.aspx" " class="btn btn-primary btn-lg">前往»</a></p>
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>修改密码</h2>
            <p>
                <a class="btn btn-default" href="./ChangePassword.aspx">前往 &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>浏览房源</h2>
            <p>
                <a class="btn btn-default" href="./HouseList.aspx">前往 &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>房主交流</h2>
            <p>
                <a class="btn btn-default" href="./Chat.aspx">前往 &raquo;</a>
            </p>
        </div>
    </div>
</asp:Content>


