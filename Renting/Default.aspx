<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>租房网</h1>
        <p class="lead">出租房源？租住房源？快来租房网，为您免费提供了房主房客沟通平台, 。</p>
        <p><a href="./HouseList.aspx" " class="btn btn-primary btn-lg">随意浏览»</a></p>
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>房主登陆</h2>
            <p>
                发布您的闲置房源</p>
            <p>
                <a class="btn btn-default" href="./HouseOwner/OwnerLogin.aspx">登陆/注册 &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>租客登陆</h2>
            <p>
                快速找到合适房源</p>
            <p>
                <a class="btn btn-default" href="./Tenant/TenantLogin.aspx">登陆/注册 &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>管理员登陆</h2>
            <p>
                管理员管理房源、用户、发布公告栏、发布广告等</p>
            <p>
                <a class="btn btn-default" href="./Admin/AdminLogin.aspx">登陆/注册 &raquo;</a>
            </p>
        </div>
    </div>
</asp:Content>
