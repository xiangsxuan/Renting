<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="Index" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <section id="intro" class="clearfix">
        <div class="container">
            <h1>租房网 </h1>
            <h3>出租房源？租住房源？快来租房网，为您免费提供了房主房客沟通平台。</h3>
            <div class="intro-info">
                <div>
                    <a href="./HouseList.aspx" class="btn-get-started scrollto">随意浏览» </a>
                </div>
            </div>
        </div>
    </section>
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
                            <a href="./HouseOwner/OwnerLogin.aspx" class="btn-get-started scrollto">前往» </a>
                        </div>
                    </div>
                </div>

                <div class="col-lg-4 mb-4">
                    <div class="card wow bounceInUp">
                        <i class="fa fa-language"></i>
                        <div class="card-body">
                            <h5 class="card-title">租客</h5>
                            <p class="card-text">快速找到合适房源</p>
                            <a href="./Tenant/TenantLogin.aspx" class="btn-get-started scrollto">前往» </a>
                        </div>
                    </div>
                </div>

                <div class="col-lg-4 mb-4">
                    <div class="card wow bounceInUp">
                        <i class="fa fa-object-group"></i>
                        <div class="card-body">
                            <h5 class="card-title">管理员</h5>
                            <p class="card-text">管理房源、发布公告等</p>
                            <a href="./Admin/AdminLogin.aspx" class="btn-get-started scrollto">前往» </a>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </section>
</asp:Content>
