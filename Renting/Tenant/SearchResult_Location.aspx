<%@ Page Title="TenantPage" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="SearchResult_Location.aspx.cs" Inherits="Tenant_SearchResult_Location" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <!-- Favicons -->
    <link href="../img/favicon.png" rel="icon">
    <link href="../img/apple-touch-icon.png" rel="apple-touch-icon">

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,700,700i|Montserrat:300,400,500,700" rel="stylesheet">

    <!-- Bootstrap CSS File -->
    <%--    <link href="../lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">--%>

    <!-- Libraries CSS Files -->
    <link href="../lib/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <link href="../lib/animate/animate.min.css" rel="stylesheet">
    <link href="../lib/ionicons/css/ionicons.min.css" rel="stylesheet">
    <link href="../lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
    <link href="../lib/lightbox/css/lightbox.min.css" rel="stylesheet">
    <!-- Main Stylesheet File -->
    <link href="../css/style.css" rel="stylesheet">

    <!--==========================
      Services Section
    ============================-->
    <section id="services" class="section-bg">
        <div class="container">

            <header class="section-header">
                <h3>搜索结果</h3>
                <p>我们为您找到了如下房源:</p>
            </header>

            <div class="row ">

                <%=getSearchResult() %>
            </div>

        </div>
    </section>
    <!-- #services -->


</asp:Content>
