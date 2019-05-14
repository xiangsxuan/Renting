<%@ Page Title="HouseList" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="HouseList.aspx.cs" Inherits="HouseList" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

       <!--==========================
      Services Section
    ============================-->
    <section id="services" class="section-bg">
        <div class="container">

            <header class="section-header">
                <h3><%=getCityByIP() %> </h3>
                <p>根据您的IP定位, 我们为您推荐如下房源:</p>
            </header>

            <div class="row ">
                <%=getLocalHouse() %>
            </div>

        </div>
    </section>
    <!-- #services -->

</asp:Content>
