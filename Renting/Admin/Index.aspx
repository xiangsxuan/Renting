<%@ Page Title="AdminPage" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="Admin_Index" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>管理站点</h1>
<%--        <p class="lead">出租房源？租住房源？快来租房网，为您免费提供了房主房客沟通平台, 。</p>
        <p><a href="./HouseList.aspx" " class="btn btn-primary btn-lg">随意浏览»</a></p>--%>
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>修改密码</h2>
            <p>
                <a class="btn btn-success" href="./ChangePassword.aspx">前往 &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>新增管理员</h2>
            <p>
                <a class="btn btn-success" href="./AddAdmin.aspx">前往 &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>查看网站使用情况</h2>
            <p>
                <a class="btn btn-success" href="./WebState.aspx">前往 &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>新增房源</h2>
            <p>
                <a class="btn btn-success" href="./AddHouse.aspx">前往 &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>删除/修改房源信息</h2>
            <p>
                <a class="btn btn-success" href="./HouseManage.aspx">前往 &raquo;</a>
            </p>
        </div>        <div class="col-md-4">
            <h2>发布公告</h2>
            <p>
                <a class="btn btn-success" href="./AddInfoBoard.aspx">前往 &raquo;</a>
            </p>
        </div>
    </div>
</asp:Content>
