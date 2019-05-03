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
            <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="HouseId" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="HouseId" HeaderText="HouseId" InsertVisible="False" ReadOnly="True" SortExpression="HouseId" />
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
            </asp:GridView>
             <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [House] WHERE ([HouseId] = @HouseId)" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [House] WHERE [HouseId] = @original_HouseId AND (([Describe] = @original_Describe) OR ([Describe] IS NULL AND @original_Describe IS NULL)) AND (([Location] = @original_Location) OR ([Location] IS NULL AND @original_Location IS NULL)) AND (([ReleaseTime] = @original_ReleaseTime) OR ([ReleaseTime] IS NULL AND @original_ReleaseTime IS NULL)) AND (([HouseTitle] = @original_HouseTitle) OR ([HouseTitle] IS NULL AND @original_HouseTitle IS NULL)) AND (([MapLocationX] = @original_MapLocationX) OR ([MapLocationX] IS NULL AND @original_MapLocationX IS NULL)) AND (([HouseType] = @original_HouseType) OR ([HouseType] IS NULL AND @original_HouseType IS NULL)) AND (([Size] = @original_Size) OR ([Size] IS NULL AND @original_Size IS NULL)) AND [HouseOwnerId] = @original_HouseOwnerId AND (([MapLocationY] = @original_MapLocationY) OR ([MapLocationY] IS NULL AND @original_MapLocationY IS NULL)) AND (([HouseImg] = @original_HouseImg) OR ([HouseImg] IS NULL AND @original_HouseImg IS NULL)) AND (([Phone] = @original_Phone) OR ([Phone] IS NULL AND @original_Phone IS NULL))" InsertCommand="INSERT INTO [House] ([Describe], [Location], [ReleaseTime], [HouseTitle], [MapLocationX], [HouseType], [Size], [HouseOwnerId], [MapLocationY], [HouseImg], [Phone]) VALUES (@Describe, @Location, @ReleaseTime, @HouseTitle, @MapLocationX, @HouseType, @Size, @HouseOwnerId, @MapLocationY, @HouseImg, @Phone)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [House] SET [Describe] = @Describe, [Location] = @Location, [ReleaseTime] = @ReleaseTime, [HouseTitle] = @HouseTitle, [MapLocationX] = @MapLocationX, [HouseType] = @HouseType, [Size] = @Size, [HouseOwnerId] = @HouseOwnerId, [MapLocationY] = @MapLocationY, [HouseImg] = @HouseImg, [Phone] = @Phone WHERE [HouseId] = @original_HouseId AND (([Describe] = @original_Describe) OR ([Describe] IS NULL AND @original_Describe IS NULL)) AND (([Location] = @original_Location) OR ([Location] IS NULL AND @original_Location IS NULL)) AND (([ReleaseTime] = @original_ReleaseTime) OR ([ReleaseTime] IS NULL AND @original_ReleaseTime IS NULL)) AND (([HouseTitle] = @original_HouseTitle) OR ([HouseTitle] IS NULL AND @original_HouseTitle IS NULL)) AND (([MapLocationX] = @original_MapLocationX) OR ([MapLocationX] IS NULL AND @original_MapLocationX IS NULL)) AND (([HouseType] = @original_HouseType) OR ([HouseType] IS NULL AND @original_HouseType IS NULL)) AND (([Size] = @original_Size) OR ([Size] IS NULL AND @original_Size IS NULL)) AND [HouseOwnerId] = @original_HouseOwnerId AND (([MapLocationY] = @original_MapLocationY) OR ([MapLocationY] IS NULL AND @original_MapLocationY IS NULL)) AND (([HouseImg] = @original_HouseImg) OR ([HouseImg] IS NULL AND @original_HouseImg IS NULL)) AND (([Phone] = @original_Phone) OR ([Phone] IS NULL AND @original_Phone IS NULL))">
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
                 <SelectParameters>
                     <asp:SessionParameter Name="HouseId" SessionField="HouseId" Type="Int32" />
                 </SelectParameters>
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

        </div>
    </form>
</body>
</html>
