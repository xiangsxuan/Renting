<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MyHouse.aspx.cs" Inherits="HouseOwner_MyHouse" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            
             <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [House] WHERE [HouseId] = @original_HouseId AND (([Describe] = @original_Describe) OR ([Describe] IS NULL AND @original_Describe IS NULL)) AND (([Location] = @original_Location) OR ([Location] IS NULL AND @original_Location IS NULL)) AND (([ReleaseTime] = @original_ReleaseTime) OR ([ReleaseTime] IS NULL AND @original_ReleaseTime IS NULL)) AND (([HouseTitle] = @original_HouseTitle) OR ([HouseTitle] IS NULL AND @original_HouseTitle IS NULL)) AND (([Longitude] = @original_Longitude) OR ([Longitude] IS NULL AND @original_Longitude IS NULL)) AND (([HouseType] = @original_HouseType) OR ([HouseType] IS NULL AND @original_HouseType IS NULL)) AND (([Size] = @original_Size) OR ([Size] IS NULL AND @original_Size IS NULL)) AND [HouseOwnerId] = @original_HouseOwnerId AND (([Latitude] = @original_Latitude) OR ([Latitude] IS NULL AND @original_Latitude IS NULL)) AND (([HouseImg] = @original_HouseImg) OR ([HouseImg] IS NULL AND @original_HouseImg IS NULL)) AND (([Phone] = @original_Phone) OR ([Phone] IS NULL AND @original_Phone IS NULL)) AND (([HouseOwnerName] = @original_HouseOwnerName) OR ([HouseOwnerName] IS NULL AND @original_HouseOwnerName IS NULL)) AND (([Price] = @original_Price) OR ([Price] IS NULL AND @original_Price IS NULL)) AND (([SquareMeter] = @original_SquareMeter) OR ([SquareMeter] IS NULL AND @original_SquareMeter IS NULL))" InsertCommand="INSERT INTO [House] ([Describe], [Location], [ReleaseTime], [HouseTitle], [Longitude], [HouseType], [Size], [HouseOwnerId], [Latitude], [HouseImg], [Phone], [HouseOwnerName], [Price], [SquareMeter]) VALUES (@Describe, @Location, @ReleaseTime, @HouseTitle, @Longitude, @HouseType, @Size, @HouseOwnerId, @Latitude, @HouseImg, @Phone, @HouseOwnerName, @Price, @SquareMeter)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [House] WHERE ([HouseOwnerName] = @HouseOwnerName)" UpdateCommand="UPDATE [House] SET [Describe] = @Describe, [Location] = @Location, [ReleaseTime] = @ReleaseTime, [HouseTitle] = @HouseTitle, [Longitude] = @Longitude, [HouseType] = @HouseType, [Size] = @Size, [HouseOwnerId] = @HouseOwnerId, [Latitude] = @Latitude, [HouseImg] = @HouseImg, [Phone] = @Phone, [HouseOwnerName] = @HouseOwnerName, [Price] = @Price, [SquareMeter] = @SquareMeter WHERE [HouseId] = @original_HouseId AND (([Describe] = @original_Describe) OR ([Describe] IS NULL AND @original_Describe IS NULL)) AND (([Location] = @original_Location) OR ([Location] IS NULL AND @original_Location IS NULL)) AND (([ReleaseTime] = @original_ReleaseTime) OR ([ReleaseTime] IS NULL AND @original_ReleaseTime IS NULL)) AND (([HouseTitle] = @original_HouseTitle) OR ([HouseTitle] IS NULL AND @original_HouseTitle IS NULL)) AND (([Longitude] = @original_Longitude) OR ([Longitude] IS NULL AND @original_Longitude IS NULL)) AND (([HouseType] = @original_HouseType) OR ([HouseType] IS NULL AND @original_HouseType IS NULL)) AND (([Size] = @original_Size) OR ([Size] IS NULL AND @original_Size IS NULL)) AND [HouseOwnerId] = @original_HouseOwnerId AND (([Latitude] = @original_Latitude) OR ([Latitude] IS NULL AND @original_Latitude IS NULL)) AND (([HouseImg] = @original_HouseImg) OR ([HouseImg] IS NULL AND @original_HouseImg IS NULL)) AND (([Phone] = @original_Phone) OR ([Phone] IS NULL AND @original_Phone IS NULL)) AND (([HouseOwnerName] = @original_HouseOwnerName) OR ([HouseOwnerName] IS NULL AND @original_HouseOwnerName IS NULL)) AND (([Price] = @original_Price) OR ([Price] IS NULL AND @original_Price IS NULL)) AND (([SquareMeter] = @original_SquareMeter) OR ([SquareMeter] IS NULL AND @original_SquareMeter IS NULL))">
                 <DeleteParameters>
                     <asp:Parameter Name="original_HouseId" Type="Int32" />
                     <asp:Parameter Name="original_Describe" Type="String" />
                     <asp:Parameter Name="original_Location" Type="String" />
                     <asp:Parameter Name="original_ReleaseTime" Type="String" />
                     <asp:Parameter Name="original_HouseTitle" Type="String" />
                     <asp:Parameter Name="original_Longitude" Type="String" />
                     <asp:Parameter Name="original_HouseType" Type="String" />
                     <asp:Parameter Name="original_Size" Type="String" />
                     <asp:Parameter Name="original_HouseOwnerId" Type="String" />
                     <asp:Parameter Name="original_Latitude" Type="String" />
                     <asp:Parameter Name="original_HouseImg" Type="String" />
                     <asp:Parameter Name="original_Phone" Type="String" />
                     <asp:Parameter Name="original_HouseOwnerName" Type="String" />
                     <asp:Parameter Name="original_Price" Type="Double" />
                     <asp:Parameter Name="original_SquareMeter" Type="Double" />
                 </DeleteParameters>
                 <InsertParameters>
                     <asp:Parameter Name="Describe" Type="String" />
                     <asp:Parameter Name="Location" Type="String" />
                     <asp:Parameter Name="ReleaseTime" Type="String" />
                     <asp:Parameter Name="HouseTitle" Type="String" />
                     <asp:Parameter Name="Longitude" Type="String" />
                     <asp:Parameter Name="HouseType" Type="String" />
                     <asp:Parameter Name="Size" Type="String" />
                     <asp:Parameter Name="HouseOwnerId" Type="String" />
                     <asp:Parameter Name="Latitude" Type="String" />
                     <asp:Parameter Name="HouseImg" Type="String" />
                     <asp:Parameter Name="Phone" Type="String" />
                     <asp:Parameter Name="HouseOwnerName" Type="String" />
                     <asp:Parameter Name="Price" Type="Double" />
                     <asp:Parameter Name="SquareMeter" Type="Double" />
                 </InsertParameters>
                 <SelectParameters>
                     <asp:SessionParameter Name="HouseOwnerName" SessionField="Name" Type="String" DefaultValue="NULL" />
                 </SelectParameters>
                 <UpdateParameters>
                     <asp:Parameter Name="Describe" Type="String" />
                     <asp:Parameter Name="Location" Type="String" />
                     <asp:Parameter Name="ReleaseTime" Type="String" />
                     <asp:Parameter Name="HouseTitle" Type="String" />
                     <asp:Parameter Name="Longitude" Type="String" />
                     <asp:Parameter Name="HouseType" Type="String" />
                     <asp:Parameter Name="Size" Type="String" />
                     <asp:Parameter Name="HouseOwnerId" Type="String" />
                     <asp:Parameter Name="Latitude" Type="String" />
                     <asp:Parameter Name="HouseImg" Type="String" />
                     <asp:Parameter Name="Phone" Type="String" />
                     <asp:Parameter Name="HouseOwnerName" Type="String" />
                     <asp:Parameter Name="Price" Type="Double" />
                     <asp:Parameter Name="SquareMeter" Type="Double" />
                     <asp:Parameter Name="original_HouseId" Type="Int32" />
                     <asp:Parameter Name="original_Describe" Type="String" />
                     <asp:Parameter Name="original_Location" Type="String" />
                     <asp:Parameter Name="original_ReleaseTime" Type="String" />
                     <asp:Parameter Name="original_HouseTitle" Type="String" />
                     <asp:Parameter Name="original_Longitude" Type="String" />
                     <asp:Parameter Name="original_HouseType" Type="String" />
                     <asp:Parameter Name="original_Size" Type="String" />
                     <asp:Parameter Name="original_HouseOwnerId" Type="String" />
                     <asp:Parameter Name="original_Latitude" Type="String" />
                     <asp:Parameter Name="original_HouseImg" Type="String" />
                     <asp:Parameter Name="original_Phone" Type="String" />
                     <asp:Parameter Name="original_HouseOwnerName" Type="String" />
                     <asp:Parameter Name="original_Price" Type="Double" />
                     <asp:Parameter Name="original_SquareMeter" Type="Double" />
                 </UpdateParameters>
            </asp:SqlDataSource>

             <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="HouseId" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None">
                 <AlternatingRowStyle BackColor="White" />
                 <Columns>
                     <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                     <asp:BoundField DataField="HouseId" HeaderText="HouseId" InsertVisible="False" ReadOnly="True" SortExpression="HouseId" />
                     <asp:BoundField DataField="Describe" HeaderText="Describe" SortExpression="Describe" />
                     <asp:BoundField DataField="Location" HeaderText="Location" SortExpression="Location" />
                     <asp:BoundField DataField="ReleaseTime" HeaderText="ReleaseTime" SortExpression="ReleaseTime" />
                     <asp:BoundField DataField="HouseTitle" HeaderText="HouseTitle" SortExpression="HouseTitle" />
                     <asp:BoundField DataField="Longitude" HeaderText="Longitude" SortExpression="Longitude" />
                     <asp:BoundField DataField="HouseType" HeaderText="HouseType" SortExpression="HouseType" />
                     <asp:BoundField DataField="Size" HeaderText="Size" SortExpression="Size" />
                     <asp:BoundField DataField="HouseOwnerId" HeaderText="HouseOwnerId" SortExpression="HouseOwnerId" />
                     <asp:BoundField DataField="Latitude" HeaderText="Latitude" SortExpression="Latitude" />
                     <asp:BoundField DataField="HouseImg" HeaderText="HouseImg" SortExpression="HouseImg" />
                     <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
                     <asp:BoundField DataField="HouseOwnerName" HeaderText="HouseOwnerName" SortExpression="HouseOwnerName" />
                     <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                     <asp:BoundField DataField="SquareMeter" HeaderText="SquareMeter" SortExpression="SquareMeter" />
                 </Columns>
                 <EditRowStyle BackColor="#2461BF" />
                 <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                 <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                 <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                 <RowStyle BackColor="#EFF3FB" />
                 <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                 <SortedAscendingCellStyle BackColor="#F5F7FB" />
                 <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                 <SortedDescendingCellStyle BackColor="#E9EBEF" />
                 <SortedDescendingHeaderStyle BackColor="#4870BE" />
             </asp:GridView>

        </div>
    </form>
</body>
</html>
