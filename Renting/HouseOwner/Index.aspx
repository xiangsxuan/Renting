<%@ Page Title="OwnerPage" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="HouseOwner_Index" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>快速出租闲置房源</h1>
                <%--<p class="lead">出租房源？租住房源？快来租房网，为您免费提供了房主房客沟通平台, 。</p>--%>
        <p><a href="./AddHouse.aspx" " class="btn btn-primary btn-lg">前往»</a></p>
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>修改密码</h2>
            <p>
                <a class="btn btn-success" href="./ChangePassword.aspx">前往 &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>发布房源信息</h2>
            <p>
                <a class="btn btn-success" href="./AddHouse.aspx">前往 &raquo;</a>
            </p>
        </div>
         <div class="col-md-4">
            <h2>我发布的房源(待实现)</h2>
            <p>
                <a class="btn btn-success" href="./MyHouse.aspx">前往 &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>房客交流</h2>
            <p>
                <a class="btn btn-success" href="./Chat.aspx">前往 &raquo;</a>
            </p>
        </div>
    </div>
</asp:Content>