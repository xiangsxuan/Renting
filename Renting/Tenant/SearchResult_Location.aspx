<%@ Page Title="TenantPage" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="SearchResult_Location.aspx.cs" Inherits="Tenant_SearchResult_Location" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

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
