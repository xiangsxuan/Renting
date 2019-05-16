<%@ Page Title="修改账户密码" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="ChangeUserPassword.aspx.cs" Inherits="Tenant_ChangePassword" %>

<%@ Register Src="~/Account/OpenAuthProviders.ascx" TagPrefix="uc" TagName="OpenAuthProviders" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>

    <div class="row">
        <div class="col-md-12">
            <section id="passwordForm">
                <asp:PlaceHolder runat="server" ID="changePasswordHolder" Visible="true">
                    <p>你以 <strong><%: Session["Role"].ToString()+" :  "+Session["Name"].ToString() %></strong> 身份登录。</p>
                    <div class="form-horizontal">
                        <h4>“更改密码”表单</h4>
                        <asp:ValidationSummary runat="server" ShowModelStateErrors="true" CssClass="text-danger" />

                        <div class="form-group">
                            <asp:Label runat="server" ID="UserNameLabel" AssociatedControlID="UserName" CssClass="col-md-2 control-label">用户名</asp:Label>
                            <div class="col-md-10">
                                <asp:TextBox runat="server" ID="UserName" TextMode="SingleLine" CssClass="form-control" />
                            </div>
                        </div>

                        <div class="form-group">
                            <asp:Label runat="server" ID="NewPasswordLabel" AssociatedControlID="NewPassword" CssClass="col-md-2 control-label">新密码</asp:Label>
                            <div class="col-md-10">
                                <asp:TextBox runat="server" ID="NewPassword" TextMode="Password" CssClass="form-control" />
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="col-md-offset-2 col-md-10">
                                <asp:Button runat="server" Text="更改密码" OnClick="ChangePassword_Click" CssClass="btn btn-success" ValidationGroup="ChangePassword" />
                            </div>
                        </div>
                    </div>
                </asp:PlaceHolder>
            </section>
        </div>
    </div>

</asp:Content>
