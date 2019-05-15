<%@ Page Title="公告板" MasterPageFile="~/Site.Master" Async="true" Language="C#" AutoEventWireup="true" CodeFile="HouseDetails.aspx.cs" Inherits="HouseDetails" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <!--==========================
      Clients Section
    ============================-->
    <section id="testimonials" class="section-bg">
        <div class="container">
            <header class="section-header">
                <h3>房源详情</h3>
            </header>
            <div class="container">
                <%=GetInformationBoard() %>
                <br />

            </div>
        </div>
    </section>
    <!-- #testimonials -->

</asp:Content>
