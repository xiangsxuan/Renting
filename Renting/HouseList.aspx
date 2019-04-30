<%@ Page Title="HouseList" Language="C#"  MasterPageFile="~/Site.Master"  AutoEventWireup="true" CodeFile="HouseList.aspx.cs" Inherits="Contact" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <asp:DataList ID="DataList1" runat="server" RepeatDirection="Horizontal" RepeatColumns="5">
        <ItemTemplate>
            <div class="pic">
                <a href='ProInfo.aspx?uid=<%#Eval("HouseImgId") %>&amp;cateid=<%#Eval("HouseImgId") %>' target="_blank">
                    <asp:Image ID="Image1" runat="server" ImageUrl='<% #bd(Eval("HouseImgId").ToString()) %>'  Style="width: 160px; height: 200px;" />
                </a>
            </div>
        </ItemTemplate>
    </asp:DataList>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [HouseImg]"></asp:SqlDataSource>

</asp:Content>
