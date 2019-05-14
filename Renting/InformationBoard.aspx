<%@ Page Title="公告板" MasterPageFile="~/Site.Master" Async="true" Language="C#" AutoEventWireup="true" CodeFile="InformationBoard.aspx.cs" Inherits="MessageList" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <!--==========================
      Clients Section
    ============================-->
    <section id="testimonials" class="section-bg">
        <div class="container">
            <header class="section-header">
                <h3>信息公告栏</h3>
            </header>
            <div class="container">
                <%=GetInformationBoard() %>
                <%--<br />
                <div class="testimonial-item">
                    <img src="img/logo.png" class="testimonial-img" alt="">
                    <h3>为响应国家住房政策所作的活动</h3>
                    <h4><%=DateTime.UtcNow %></h4>
                    <h1>Enim nisi quem export duis labore cillum quae magna enim sint quorum nulla quem veniam duis minim tempor labore quem eram duis noster aute amet eram fore quis sint minim.
                    </h1>
                </div>--%>
            </div>
        </div>
    </section>
    <!-- #testimonials -->

</asp:Content>
