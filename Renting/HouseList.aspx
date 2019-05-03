<%@ Page Title="HouseList" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="HouseList.aspx.cs" Inherits="Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <asp:DataList ID="DataList1" runat="server" RepeatDirection="Horizontal" RepeatColumns="5">
        <ItemTemplate>
            <div class="pic">
                <a href='ProInfo.aspx?uid=<%#Eval("HouseImgId") %>&amp;cateid=<%#Eval("HouseImgId") %>' target="_blank">
                    <asp:Image ID="Image1" runat="server" ImageUrl='<% #bd(Eval("HouseImgId").ToString()) %>' Style="width: 160px; height: 200px;" />
                </a>
            </div>
        </ItemTemplate>
    </asp:DataList>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [HouseImg]"></asp:SqlDataSource>

    <asp:DataList ID="DataList2" runat="server" DataKeyField="HouseId" DataSourceID="SqlDataSource3" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal">
        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
        <ItemTemplate>
            标题:
                <asp:Label ID="HouseTitleLabel" runat="server" Text='<%# Eval("HouseTitle") %>' />
            <br />
            介绍:
                <asp:Label ID="DescribeLabel" runat="server" Text='<%# Eval("Describe") %>' />
            <br />
            位置:
                <asp:Label ID="LocationLabel" runat="server" Text='<%# Eval("Location") %>' />
            <br />
            发布时间:
                <asp:Label ID="ReleaseTimeLabel" runat="server" Text='<%# Eval("ReleaseTime") %>' />
        
            <br />
            户型:
                <asp:Label ID="HouseTypeLabel" runat="server" Text='<%# Eval("HouseType") %>' />
            <br />
            面积:
                <asp:Label ID="SizeLabel" runat="server" Text='<%# Eval("Size") %>' />
            <br />
            房屋图片:
                <asp:Label ID="HouseImgLabel" runat="server" Text='<%# Eval("HouseImg") %>' />
            <br />
            电话:
                <asp:Label ID="PhoneLabel" runat="server" Text='<%# Eval("Phone") %>' />
            <br />
            房主:
            <asp:Label ID="HouseOwnerNameLabel" runat="server" Text='<%# Eval("HouseOwnerName") %>' />
            <br />
            <br />
        </ItemTemplate>
        <SelectedItemStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [House]"></asp:SqlDataSource>

    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [HouseImg]"></asp:SqlDataSource>


</asp:Content>
