<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron">
        <h1>租房网</h1>
        <p class="lead">出租房源？租住房源？快来租房网，为您免费提供了房主房客沟通平台。</p>
        <h2>
            <a href="./HouseList.aspx" class="btn btn-primary btn-success">游客
                 浏览»
            </a>
        </h2>
    </div>
    <!--==========================
      Why Us Section
    ============================-->
    <section id="why-us" class="wow fadeIn">
        <div class="container">
            <header class="section-header">
                <h3>注册/登陆开启更多功能</h3>
            </header>

            <div class="row row-eq-height justify-content-center">

                <div class="col-lg-4 mb-4">
                    <div class="card wow bounceInUp">
                        <i class="fa fa-diamond"></i>
                        <div class="card-body">
                            <h5 class="card-title">房主</h5>
                            <p class="card-text">发布您的闲置房源</p>
                            <a href="./HouseOwner/OwnerLogin.aspx" class="readmore">前往» </a>
                        </div>
                    </div>
                </div>

                <div class="col-lg-4 mb-4">
                    <div class="card wow bounceInUp">
                        <i class="fa fa-language"></i>
                        <div class="card-body">
                            <h5 class="card-title">租客</h5>
                            <p class="card-text">快速找到合适房源</p>
                            <a href="./Tenant/TenantLogin.aspx" class="readmore">前往» </a>
                        </div>
                    </div>
                </div>

                <div class="col-lg-4 mb-4">
                    <div class="card wow bounceInUp">
                        <i class="fa fa-object-group"></i>
                        <div class="card-body">
                            <h5 class="card-title">管理员</h5>
                            <p class="card-text">管理房源、发布公告等</p>
                            <a href="./Admin/AdminLogin.aspx" class="readmore">前往» </a>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </section>
</asp:Content>
