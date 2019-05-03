<%@ Page Title="HouseList" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="HouseList.aspx.cs" Inherits="Tenant_HouseList" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <asp:ListView ID="ListView1" runat="server" DataKeyNames="HouseId" DataSourceID="HouseList">
    <AlternatingItemTemplate>
        <li style="background-color: #FFF8DC;">HouseId:
            <asp:Label ID="HouseIdLabel" runat="server" Text='<%# Eval("HouseId") %>' />
            <br />
            Describe:
            <asp:Label ID="DescribeLabel" runat="server" Text='<%# Eval("Describe") %>' />
            <br />
            Location:
            <asp:Label ID="LocationLabel" runat="server" Text='<%# Eval("Location") %>' />
            <br />
            ReleaseTime:
            <asp:Label ID="ReleaseTimeLabel" runat="server" Text='<%# Eval("ReleaseTime") %>' />
            <br />
            HouseTitle:
            <asp:Label ID="HouseTitleLabel" runat="server" Text='<%# Eval("HouseTitle") %>' />
            <br />
            MapLocationX:
            <asp:Label ID="MapLocationXLabel" runat="server" Text='<%# Eval("MapLocationX") %>' />
            <br />
            HouseType:
            <asp:Label ID="HouseTypeLabel" runat="server" Text='<%# Eval("HouseType") %>' />
            <br />
            Size:
            <asp:Label ID="SizeLabel" runat="server" Text='<%# Eval("Size") %>' />
            <br />
            HouseOwnerId:
            <asp:Label ID="HouseOwnerIdLabel" runat="server" Text='<%# Eval("HouseOwnerId") %>' />
            <br />
            MapLocationY:
            <asp:Label ID="MapLocationYLabel" runat="server" Text='<%# Eval("MapLocationY") %>' />
            <br />
            HouseImg:
            <asp:Label ID="HouseImgLabel" runat="server" Text='<%# Eval("HouseImg") %>' />
            <br />
        </li>
    </AlternatingItemTemplate>
    <EditItemTemplate>
        <li style="background-color: #008A8C; color: #FFFFFF;">HouseId:
            <asp:Label ID="HouseIdLabel1" runat="server" Text='<%# Eval("HouseId") %>' />
            <br />
            Describe:
            <asp:TextBox ID="DescribeTextBox" runat="server" Text='<%# Bind("Describe") %>' />
            <br />
            Location:
            <asp:TextBox ID="LocationTextBox" runat="server" Text='<%# Bind("Location") %>' />
            <br />
            ReleaseTime:
            <asp:TextBox ID="ReleaseTimeTextBox" runat="server" Text='<%# Bind("ReleaseTime") %>' />
            <br />
            HouseTitle:
            <asp:TextBox ID="HouseTitleTextBox" runat="server" Text='<%# Bind("HouseTitle") %>' />
            <br />
            MapLocationX:
            <asp:TextBox ID="MapLocationXTextBox" runat="server" Text='<%# Bind("MapLocationX") %>' />
            <br />
            HouseType:
            <asp:TextBox ID="HouseTypeTextBox" runat="server" Text='<%# Bind("HouseType") %>' />
            <br />
            Size:
            <asp:TextBox ID="SizeTextBox" runat="server" Text='<%# Bind("Size") %>' />
            <br />
            HouseOwnerId:
            <asp:TextBox ID="HouseOwnerIdTextBox" runat="server" Text='<%# Bind("HouseOwnerId") %>' />
            <br />
            MapLocationY:
            <asp:TextBox ID="MapLocationYTextBox" runat="server" Text='<%# Bind("MapLocationY") %>' />
            <br />
            HouseImg:
            <asp:TextBox ID="HouseImgTextBox" runat="server" Text='<%# Bind("HouseImg") %>' />
            <br />
            <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="更新" />
            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="取消" />
        </li>
    </EditItemTemplate>
    <EmptyDataTemplate>
        未返回数据。
    </EmptyDataTemplate>
    <InsertItemTemplate>
        <li style="">Describe:
            <asp:TextBox ID="DescribeTextBox" runat="server" Text='<%# Bind("Describe") %>' />
            <br />Location:
            <asp:TextBox ID="LocationTextBox" runat="server" Text='<%# Bind("Location") %>' />
            <br />ReleaseTime:
            <asp:TextBox ID="ReleaseTimeTextBox" runat="server" Text='<%# Bind("ReleaseTime") %>' />
            <br />HouseTitle:
            <asp:TextBox ID="HouseTitleTextBox" runat="server" Text='<%# Bind("HouseTitle") %>' />
            <br />MapLocationX:
            <asp:TextBox ID="MapLocationXTextBox" runat="server" Text='<%# Bind("MapLocationX") %>' />
            <br />HouseType:
            <asp:TextBox ID="HouseTypeTextBox" runat="server" Text='<%# Bind("HouseType") %>' />
            <br />Size:
            <asp:TextBox ID="SizeTextBox" runat="server" Text='<%# Bind("Size") %>' />
            <br />HouseOwnerId:
            <asp:TextBox ID="HouseOwnerIdTextBox" runat="server" Text='<%# Bind("HouseOwnerId") %>' />
            <br />MapLocationY:
            <asp:TextBox ID="MapLocationYTextBox" runat="server" Text='<%# Bind("MapLocationY") %>' />
            <br />HouseImg:
            <asp:TextBox ID="HouseImgTextBox" runat="server" Text='<%# Bind("HouseImg") %>' />
            <br />
            <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="插入" />
            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="清除" />
        </li>
    </InsertItemTemplate>
    <ItemSeparatorTemplate>
<br />
    </ItemSeparatorTemplate>
    <ItemTemplate>
        <li style="background-color: #DCDCDC; color: #000000;">HouseId:
            <asp:Label ID="HouseIdLabel" runat="server" Text='<%# Eval("HouseId") %>' />
            <br />
            Describe:
            <asp:Label ID="DescribeLabel" runat="server" Text='<%# Eval("Describe") %>' />
            <br />
            Location:
            <asp:Label ID="LocationLabel" runat="server" Text='<%# Eval("Location") %>' />
            <br />
            ReleaseTime:
            <asp:Label ID="ReleaseTimeLabel" runat="server" Text='<%# Eval("ReleaseTime") %>' />
            <br />
            HouseTitle:
            <asp:Label ID="HouseTitleLabel" runat="server" Text='<%# Eval("HouseTitle") %>' />
            <br />
            MapLocationX:
            <asp:Label ID="MapLocationXLabel" runat="server" Text='<%# Eval("MapLocationX") %>' />
            <br />
            HouseType:
            <asp:Label ID="HouseTypeLabel" runat="server" Text='<%# Eval("HouseType") %>' />
            <br />
            Size:
            <asp:Label ID="SizeLabel" runat="server" Text='<%# Eval("Size") %>' />
            <br />
            HouseOwnerId:
            <asp:Label ID="HouseOwnerIdLabel" runat="server" Text='<%# Eval("HouseOwnerId") %>' />
            <br />
            MapLocationY:
            <asp:Label ID="MapLocationYLabel" runat="server" Text='<%# Eval("MapLocationY") %>' />
            <br />
            HouseImg:
            <asp:Label ID="HouseImgLabel" runat="server" Text='<%# Eval("HouseImg") %>' />
            <br />
        </li>
    </ItemTemplate>
    <LayoutTemplate>
        <ul id="itemPlaceholderContainer" runat="server" style="font-family: Verdana, Arial, Helvetica, sans-serif;">
            <li runat="server" id="itemPlaceholder" />
        </ul>
        <div style="text-align: center; background-color: #CCCCCC; font-family: Verdana, Arial, Helvetica, sans-serif; color: #000000;">
            <asp:DataPager ID="DataPager1" runat="server">
                <Fields>
                    <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                    <asp:NumericPagerField />
                    <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                </Fields>
            </asp:DataPager>
        </div>
    </LayoutTemplate>
    <SelectedItemTemplate>
        <li style="background-color: #008A8C; font-weight: bold; color: #FFFFFF;">HouseId:
            <asp:Label ID="HouseIdLabel" runat="server" Text='<%# Eval("HouseId") %>' />
            <br />
            Describe:
            <asp:Label ID="DescribeLabel" runat="server" Text='<%# Eval("Describe") %>' />
            <br />
            Location:
            <asp:Label ID="LocationLabel" runat="server" Text='<%# Eval("Location") %>' />
            <br />
            ReleaseTime:
            <asp:Label ID="ReleaseTimeLabel" runat="server" Text='<%# Eval("ReleaseTime") %>' />
            <br />
            HouseTitle:
            <asp:Label ID="HouseTitleLabel" runat="server" Text='<%# Eval("HouseTitle") %>' />
            <br />
            MapLocationX:
            <asp:Label ID="MapLocationXLabel" runat="server" Text='<%# Eval("MapLocationX") %>' />
            <br />
            HouseType:
            <asp:Label ID="HouseTypeLabel" runat="server" Text='<%# Eval("HouseType") %>' />
            <br />
            Size:
            <asp:Label ID="SizeLabel" runat="server" Text='<%# Eval("Size") %>' />
            <br />
            HouseOwnerId:
            <asp:Label ID="HouseOwnerIdLabel" runat="server" Text='<%# Eval("HouseOwnerId") %>' />
            <br />
            MapLocationY:
            <asp:Label ID="MapLocationYLabel" runat="server" Text='<%# Eval("MapLocationY") %>' />
            <br />
            HouseImg:
            <asp:Label ID="HouseImgLabel" runat="server" Text='<%# Eval("HouseImg") %>' />
            <br />
        </li>
    </SelectedItemTemplate>
</asp:ListView>
<asp:SqlDataSource ID="HouseList" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [House]"></asp:SqlDataSource>
</asp:Content>
