<%@ Page Title="添加房源" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="AddHouse.aspx.cs" Inherits="Admin_AddHouse" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        <a class="btn btn-default" href="./Index.aspx">返回管理界面 &raquo;</a>
    </p>
    <h2><%: Title %>.</h2>
    <div class="row">
        <div class="col-md-12">
            <section id="houseForm">
                <div class="form-horizontal">
                    <h4>“房源”表单</h4>
                    <asp:ValidationSummary runat="server" ShowModelStateErrors="true" CssClass="text-danger" />
                    <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="HouseTitle" CssClass="col-md-2 control-label">房源标题</asp:Label>
                        <div class="col-md-10">
                            <asp:TextBox runat="server" ID="HouseTitle" CssClass="form-control" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="HouseTitle"
                                CssClass="text-danger" ErrorMessage="“房源标题”字段是必填字段。" />
                        </div>
                    </div>
                    <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="Describe" CssClass="col-md-2 control-label">房源描述</asp:Label>
                        <div class="col-md-10">
                            <asp:TextBox runat="server" ID="Describe" CssClass="form-control" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="Describe"
                                CssClass="text-danger" ErrorMessage="“房源描述”字段是必填字段。" />
                        </div>
                    </div>
                    <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="Location" CssClass="col-md-2 control-label">具体位置</asp:Label>
                        <div class="col-md-10">
                            <asp:TextBox runat="server" ID="Location" CssClass="form-control" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="Location"
                                CssClass="text-danger" ErrorMessage="“具体位置”字段是必填字段。" />
                        </div>
                    </div>
                    <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="Size" CssClass="col-md-2 control-label">面积</asp:Label>
                        <div class="col-md-10">
                            <asp:TextBox runat="server" ID="Size" CssClass="form-control" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="Size"
                                CssClass="text-danger" ErrorMessage="“面积”字段是必填字段。" />
                        </div>
                    </div>
                    <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="HouseType" CssClass="col-md-2 control-label">户型</asp:Label>
                        <div class="col-md-10">
                            <asp:TextBox runat="server" ID="HouseType" CssClass="form-control" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="HouseType"
                                CssClass="text-danger" ErrorMessage="“户型”字段是必填字段。" />
                        </div>
                    </div>
                    <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="HouseOwnerName" CssClass="col-md-2 control-label">房主</asp:Label>
                        <div class="col-md-10">
                            <asp:TextBox runat="server" ID="HouseOwnerName" CssClass="form-control" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="HouseOwnerName"
                                CssClass="text-danger" ErrorMessage="“房主”字段是必填字段。" />
                        </div>
                    </div>

                    <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="HouseType" CssClass="col-md-2 control-label">房屋照片</asp:Label>
                        <div class="col-md-10">
                            <asp:FileUpload ID="HouseImg" runat="server" />
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-md-offset-2 col-md-10">
                            <asp:Button runat="server" Text="添加房源" OnClick="ChangePassword_Click" CssClass="btn btn-default" ValidationGroup="AddHouse" />
                        </div>
                    </div>
            </section>
        </div>
    </div>

</asp:Content>
