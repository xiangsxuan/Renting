<%@ Page Title="HouseList" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="HouseList.aspx.cs" Inherits="Tenant_HouseList" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <asp:ListView ID="ListView1" runat="server" DataKeyNames="HouseId" DataSourceID="SqlDataSource1">
    <AlternatingItemTemplate>
        <tr style="">
            <td>
                <asp:Label ID="HouseIdLabel" runat="server" Text='<%# Eval("HouseId") %>' />
            </td>
            <td>
                <asp:Label ID="DescribeLabel" runat="server" Text='<%# Eval("Describe") %>' />
            </td>
            <td>
                <asp:Label ID="LocationLabel" runat="server" Text='<%# Eval("Location") %>' />
            </td>
            <td>
                <asp:Label ID="ReleaseTimeLabel" runat="server" Text='<%# Eval("ReleaseTime") %>' />
            </td>
            <td>
                <asp:Label ID="HouseTitleLabel" runat="server" Text='<%# Eval("HouseTitle") %>' />
            </td>
            <td>
                <asp:Label ID="LongitudeLabel" runat="server" Text='<%# Eval("Longitude") %>' />
            </td>
            <td>
                <asp:Label ID="HouseTypeLabel" runat="server" Text='<%# Eval("HouseType") %>' />
            </td>
            <td>
                <asp:Label ID="SizeLabel" runat="server" Text='<%# Eval("Size") %>' />
            </td>
            <td>
                <asp:Label ID="HouseOwnerIdLabel" runat="server" Text='<%# Eval("HouseOwnerId") %>' />
            </td>
            <td>
                <asp:Label ID="LatitudeLabel" runat="server" Text='<%# Eval("Latitude") %>' />
            </td>
            <td>
                <asp:Label ID="HouseImgLabel" runat="server" Text='<%# Eval("HouseImg") %>' />
            </td>
            <td>
                <asp:Label ID="PhoneLabel" runat="server" Text='<%# Eval("Phone") %>' />
            </td>
            <td>
                <asp:Label ID="HouseOwnerNameLabel" runat="server" Text='<%# Eval("HouseOwnerName") %>' />
            </td>
        </tr>
    </AlternatingItemTemplate>
    <EditItemTemplate>
        <tr style="">
            <td>
                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="更新" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="取消" />
            </td>
            <td>
                <asp:Label ID="HouseIdLabel1" runat="server" Text='<%# Eval("HouseId") %>' />
            </td>
            <td>
                <asp:TextBox ID="DescribeTextBox" runat="server" Text='<%# Bind("Describe") %>' />
            </td>
            <td>
                <asp:TextBox ID="LocationTextBox" runat="server" Text='<%# Bind("Location") %>' />
            </td>
            <td>
                <asp:TextBox ID="ReleaseTimeTextBox" runat="server" Text='<%# Bind("ReleaseTime") %>' />
            </td>
            <td>
                <asp:TextBox ID="HouseTitleTextBox" runat="server" Text='<%# Bind("HouseTitle") %>' />
            </td>
            <td>
                <asp:TextBox ID="LongitudeTextBox" runat="server" Text='<%# Bind("Longitude") %>' />
            </td>
            <td>
                <asp:TextBox ID="HouseTypeTextBox" runat="server" Text='<%# Bind("HouseType") %>' />
            </td>
            <td>
                <asp:TextBox ID="SizeTextBox" runat="server" Text='<%# Bind("Size") %>' />
            </td>
            <td>
                <asp:TextBox ID="HouseOwnerIdTextBox" runat="server" Text='<%# Bind("HouseOwnerId") %>' />
            </td>
            <td>
                <asp:TextBox ID="LatitudeTextBox" runat="server" Text='<%# Bind("Latitude") %>' />
            </td>
            <td>
                <asp:TextBox ID="HouseImgTextBox" runat="server" Text='<%# Bind("HouseImg") %>' />
            </td>
            <td>
                <asp:TextBox ID="PhoneTextBox" runat="server" Text='<%# Bind("Phone") %>' />
            </td>
            <td>
                <asp:TextBox ID="HouseOwnerNameTextBox" runat="server" Text='<%# Bind("HouseOwnerName") %>' />
            </td>
        </tr>
    </EditItemTemplate>
    <EmptyDataTemplate>
        <table runat="server" style="">
            <tr>
                <td>未返回数据。</td>
            </tr>
        </table>
    </EmptyDataTemplate>
    <InsertItemTemplate>
        <tr style="">
            <td>
                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="插入" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="清除" />
            </td>
            <td>&nbsp;</td>
            <td>
                <asp:TextBox ID="DescribeTextBox" runat="server" Text='<%# Bind("Describe") %>' />
            </td>
            <td>
                <asp:TextBox ID="LocationTextBox" runat="server" Text='<%# Bind("Location") %>' />
            </td>
            <td>
                <asp:TextBox ID="ReleaseTimeTextBox" runat="server" Text='<%# Bind("ReleaseTime") %>' />
            </td>
            <td>
                <asp:TextBox ID="HouseTitleTextBox" runat="server" Text='<%# Bind("HouseTitle") %>' />
            </td>
            <td>
                <asp:TextBox ID="LongitudeTextBox" runat="server" Text='<%# Bind("Longitude") %>' />
            </td>
            <td>
                <asp:TextBox ID="HouseTypeTextBox" runat="server" Text='<%# Bind("HouseType") %>' />
            </td>
            <td>
                <asp:TextBox ID="SizeTextBox" runat="server" Text='<%# Bind("Size") %>' />
            </td>
            <td>
                <asp:TextBox ID="HouseOwnerIdTextBox" runat="server" Text='<%# Bind("HouseOwnerId") %>' />
            </td>
            <td>
                <asp:TextBox ID="LatitudeTextBox" runat="server" Text='<%# Bind("Latitude") %>' />
            </td>
            <td>
                <asp:TextBox ID="HouseImgTextBox" runat="server" Text='<%# Bind("HouseImg") %>' />
            </td>
            <td>
                <asp:TextBox ID="PhoneTextBox" runat="server" Text='<%# Bind("Phone") %>' />
            </td>
            <td>
                <asp:TextBox ID="HouseOwnerNameTextBox" runat="server" Text='<%# Bind("HouseOwnerName") %>' />
            </td>
        </tr>
    </InsertItemTemplate>
    <ItemTemplate>
        <tr style="">
            <td>
                <asp:Label ID="HouseIdLabel" runat="server" Text='<%# Eval("HouseId") %>' />
            </td>
            <td>
                <asp:Label ID="DescribeLabel" runat="server" Text='<%# Eval("Describe") %>' />
            </td>
            <td>
                <asp:Label ID="LocationLabel" runat="server" Text='<%# Eval("Location") %>' />
            </td>
            <td>
                <asp:Label ID="ReleaseTimeLabel" runat="server" Text='<%# Eval("ReleaseTime") %>' />
            </td>
            <td>
                <asp:Label ID="HouseTitleLabel" runat="server" Text='<%# Eval("HouseTitle") %>' />
            </td>
            <td>
                <asp:Label ID="LongitudeLabel" runat="server" Text='<%# Eval("Longitude") %>' />
            </td>
            <td>
                <asp:Label ID="HouseTypeLabel" runat="server" Text='<%# Eval("HouseType") %>' />
            </td>
            <td>
                <asp:Label ID="SizeLabel" runat="server" Text='<%# Eval("Size") %>' />
            </td>
            <td>
                <asp:Label ID="HouseOwnerIdLabel" runat="server" Text='<%# Eval("HouseOwnerId") %>' />
            </td>
            <td>
                <asp:Label ID="LatitudeLabel" runat="server" Text='<%# Eval("Latitude") %>' />
            </td>
            <td>
                <asp:Label ID="HouseImgLabel" runat="server" Text='<%# Eval("HouseImg") %>' />
            </td>
            <td>
                <asp:Label ID="PhoneLabel" runat="server" Text='<%# Eval("Phone") %>' />
            </td>
            <td>
                <asp:Label ID="HouseOwnerNameLabel" runat="server" Text='<%# Eval("HouseOwnerName") %>' />
            </td>
        </tr>
    </ItemTemplate>
    <LayoutTemplate>
        <table runat="server">
            <tr runat="server">
                <td runat="server">
                    <table id="itemPlaceholderContainer" runat="server" border="0" style="">
                        <tr runat="server" style="">
                            <th runat="server">HouseId</th>
                            <th runat="server">Describe</th>
                            <th runat="server">Location</th>
                            <th runat="server">ReleaseTime</th>
                            <th runat="server">HouseTitle</th>
                            <th runat="server">Longitude</th>
                            <th runat="server">HouseType</th>
                            <th runat="server">Size</th>
                            <th runat="server">HouseOwnerId</th>
                            <th runat="server">Latitude</th>
                            <th runat="server">HouseImg</th>
                            <th runat="server">Phone</th>
                            <th runat="server">HouseOwnerName</th>
                        </tr>
                        <tr id="itemPlaceholder" runat="server">
                        </tr>
                    </table>
                </td>
            </tr>
            <tr runat="server">
                <td runat="server" style=""></td>
            </tr>
        </table>
    </LayoutTemplate>
    <SelectedItemTemplate>
        <tr style="">
            <td>
                <asp:Label ID="HouseIdLabel" runat="server" Text='<%# Eval("HouseId") %>' />
            </td>
            <td>
                <asp:Label ID="DescribeLabel" runat="server" Text='<%# Eval("Describe") %>' />
            </td>
            <td>
                <asp:Label ID="LocationLabel" runat="server" Text='<%# Eval("Location") %>' />
            </td>
            <td>
                <asp:Label ID="ReleaseTimeLabel" runat="server" Text='<%# Eval("ReleaseTime") %>' />
            </td>
            <td>
                <asp:Label ID="HouseTitleLabel" runat="server" Text='<%# Eval("HouseTitle") %>' />
            </td>
            <td>
                <asp:Label ID="LongitudeLabel" runat="server" Text='<%# Eval("Longitude") %>' />
            </td>
            <td>
                <asp:Label ID="HouseTypeLabel" runat="server" Text='<%# Eval("HouseType") %>' />
            </td>
            <td>
                <asp:Label ID="SizeLabel" runat="server" Text='<%# Eval("Size") %>' />
            </td>
            <td>
                <asp:Label ID="HouseOwnerIdLabel" runat="server" Text='<%# Eval("HouseOwnerId") %>' />
            </td>
            <td>
                <asp:Label ID="LatitudeLabel" runat="server" Text='<%# Eval("Latitude") %>' />
            </td>
            <td>
                <asp:Label ID="HouseImgLabel" runat="server" Text='<%# Eval("HouseImg") %>' />
            </td>
            <td>
                <asp:Label ID="PhoneLabel" runat="server" Text='<%# Eval("Phone") %>' />
            </td>
            <td>
                <asp:Label ID="HouseOwnerNameLabel" runat="server" Text='<%# Eval("HouseOwnerName") %>' />
            </td>
        </tr>
    </SelectedItemTemplate>
</asp:ListView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [House]"></asp:SqlDataSource>
</asp:Content>
