<%@ Page Title="修改房源信息" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="HouseManage.aspx.cs" Inherits="Admin_HouseManage" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

        <div class="col-md-4">
            <p>
                <a class="btn btn-default" href="./Index.aspx">返回管理界面 &raquo;</a>
            </p>
        </div>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [House] WHERE [HouseId] = @original_HouseId AND (([Describe] = @original_Describe) OR ([Describe] IS NULL AND @original_Describe IS NULL)) AND (([Location] = @original_Location) OR ([Location] IS NULL AND @original_Location IS NULL)) AND (([ReleaseTime] = @original_ReleaseTime) OR ([ReleaseTime] IS NULL AND @original_ReleaseTime IS NULL)) AND (([HouseTitle] = @original_HouseTitle) OR ([HouseTitle] IS NULL AND @original_HouseTitle IS NULL)) AND (([MapLocationX] = @original_MapLocationX) OR ([MapLocationX] IS NULL AND @original_MapLocationX IS NULL)) AND (([HouseType] = @original_HouseType) OR ([HouseType] IS NULL AND @original_HouseType IS NULL)) AND (([Size] = @original_Size) OR ([Size] IS NULL AND @original_Size IS NULL)) AND [HouseOwnerId] = @original_HouseOwnerId AND (([MapLocationY] = @original_MapLocationY) OR ([MapLocationY] IS NULL AND @original_MapLocationY IS NULL)) AND (([HouseImg] = @original_HouseImg) OR ([HouseImg] IS NULL AND @original_HouseImg IS NULL)) AND (([Phone] = @original_Phone) OR ([Phone] IS NULL AND @original_Phone IS NULL))" InsertCommand="INSERT INTO [House] ([Describe], [Location], [ReleaseTime], [HouseTitle], [MapLocationX], [HouseType], [Size], [HouseOwnerId], [MapLocationY], [HouseImg], [Phone]) VALUES (@Describe, @Location, @ReleaseTime, @HouseTitle, @MapLocationX, @HouseType, @Size, @HouseOwnerId, @MapLocationY, @HouseImg, @Phone)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [House]" UpdateCommand="UPDATE [House] SET [Describe] = @Describe, [Location] = @Location, [ReleaseTime] = @ReleaseTime, [HouseTitle] = @HouseTitle, [MapLocationX] = @MapLocationX, [HouseType] = @HouseType, [Size] = @Size, [HouseOwnerId] = @HouseOwnerId, [MapLocationY] = @MapLocationY, [HouseImg] = @HouseImg, [Phone] = @Phone WHERE [HouseId] = @original_HouseId AND (([Describe] = @original_Describe) OR ([Describe] IS NULL AND @original_Describe IS NULL)) AND (([Location] = @original_Location) OR ([Location] IS NULL AND @original_Location IS NULL)) AND (([ReleaseTime] = @original_ReleaseTime) OR ([ReleaseTime] IS NULL AND @original_ReleaseTime IS NULL)) AND (([HouseTitle] = @original_HouseTitle) OR ([HouseTitle] IS NULL AND @original_HouseTitle IS NULL)) AND (([MapLocationX] = @original_MapLocationX) OR ([MapLocationX] IS NULL AND @original_MapLocationX IS NULL)) AND (([HouseType] = @original_HouseType) OR ([HouseType] IS NULL AND @original_HouseType IS NULL)) AND (([Size] = @original_Size) OR ([Size] IS NULL AND @original_Size IS NULL)) AND [HouseOwnerId] = @original_HouseOwnerId AND (([MapLocationY] = @original_MapLocationY) OR ([MapLocationY] IS NULL AND @original_MapLocationY IS NULL)) AND (([HouseImg] = @original_HouseImg) OR ([HouseImg] IS NULL AND @original_HouseImg IS NULL)) AND (([Phone] = @original_Phone) OR ([Phone] IS NULL AND @original_Phone IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_HouseId" Type="Int32" />
            <asp:Parameter Name="original_Describe" Type="String" />
            <asp:Parameter Name="original_Location" Type="String" />
            <asp:Parameter Name="original_ReleaseTime" Type="String" />
            <asp:Parameter Name="original_HouseTitle" Type="String" />
            <asp:Parameter Name="original_MapLocationX" Type="Decimal" />
            <asp:Parameter Name="original_HouseType" Type="String" />
            <asp:Parameter Name="original_Size" Type="String" />
            <asp:Parameter Name="original_HouseOwnerId" Type="String" />
            <asp:Parameter Name="original_MapLocationY" Type="Decimal" />
            <asp:Parameter Name="original_HouseImg" Type="String" />
            <asp:Parameter Name="original_Phone" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Describe" Type="String" />
            <asp:Parameter Name="Location" Type="String" />
            <asp:Parameter Name="ReleaseTime" Type="String" />
            <asp:Parameter Name="HouseTitle" Type="String" />
            <asp:Parameter Name="MapLocationX" Type="Decimal" />
            <asp:Parameter Name="HouseType" Type="String" />
            <asp:Parameter Name="Size" Type="String" />
            <asp:Parameter Name="HouseOwnerId" Type="String" />
            <asp:Parameter Name="MapLocationY" Type="Decimal" />
            <asp:Parameter Name="HouseImg" Type="String" />
            <asp:Parameter Name="Phone" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Describe" Type="String" />
            <asp:Parameter Name="Location" Type="String" />
            <asp:Parameter Name="ReleaseTime" Type="String" />
            <asp:Parameter Name="HouseTitle" Type="String" />
            <asp:Parameter Name="MapLocationX" Type="Decimal" />
            <asp:Parameter Name="HouseType" Type="String" />
            <asp:Parameter Name="Size" Type="String" />
            <asp:Parameter Name="HouseOwnerId" Type="String" />
            <asp:Parameter Name="MapLocationY" Type="Decimal" />
            <asp:Parameter Name="HouseImg" Type="String" />
            <asp:Parameter Name="Phone" Type="String" />
            <asp:Parameter Name="original_HouseId" Type="Int32" />
            <asp:Parameter Name="original_Describe" Type="String" />
            <asp:Parameter Name="original_Location" Type="String" />
            <asp:Parameter Name="original_ReleaseTime" Type="String" />
            <asp:Parameter Name="original_HouseTitle" Type="String" />
            <asp:Parameter Name="original_MapLocationX" Type="Decimal" />
            <asp:Parameter Name="original_HouseType" Type="String" />
            <asp:Parameter Name="original_Size" Type="String" />
            <asp:Parameter Name="original_HouseOwnerId" Type="String" />
            <asp:Parameter Name="original_MapLocationY" Type="Decimal" />
            <asp:Parameter Name="original_HouseImg" Type="String" />
            <asp:Parameter Name="original_Phone" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>



    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="100%" Width="100%" DataKeyNames="HouseId">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="HouseId" HeaderText="HouseId" SortExpression="HouseId" InsertVisible="False" ReadOnly="True" />
            <asp:BoundField DataField="Describe" HeaderText="Describe" SortExpression="Describe" />
            <asp:BoundField DataField="Location" HeaderText="Location" SortExpression="Location" />
            <asp:BoundField DataField="ReleaseTime" HeaderText="ReleaseTime" SortExpression="ReleaseTime" />
            <asp:BoundField DataField="HouseTitle" HeaderText="HouseTitle" SortExpression="HouseTitle" />
            <asp:BoundField DataField="MapLocationX" HeaderText="MapLocationX" SortExpression="MapLocationX" />
            <asp:BoundField DataField="HouseType" HeaderText="HouseType" SortExpression="HouseType" />
            <asp:BoundField DataField="Size" HeaderText="Size" SortExpression="Size" />
            <asp:BoundField DataField="HouseOwnerId" HeaderText="HouseOwnerId" SortExpression="HouseOwnerId" />
            <asp:BoundField DataField="MapLocationY" HeaderText="MapLocationY" SortExpression="MapLocationY" />
            <asp:BoundField DataField="HouseImg" HeaderText="HouseImg" SortExpression="HouseImg" />
            <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>



</asp:Content>

