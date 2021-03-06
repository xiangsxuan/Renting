﻿<%@ Page Title="聊天" MasterPageFile="~/Site.Master" Async="true" Language="C#" AutoEventWireup="true" CodeFile="Chat.aspx.cs" Inherits="Tenant_Chat" %>

<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>


<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h2><%: Title %>.</h2>

    <div class="row">
        <div class="col-md-8">
            <section id="loginForm">
                <div class="form-horizontal">
                    <hr />
                    <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="Email" CssClass="col-md-2 control-label">用户邮箱</asp:Label>
                        <div class="col-md-10">
                            <asp:TextBox runat="server" ID="Email" CssClass="form-control" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="Email"
                                CssClass="text-danger" ErrorMessage="“用户邮箱”字段是必填字段。" />
                        </div>
                    </div>

                    <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="Subject" CssClass="col-md-2 control-label">主题</asp:Label>
                        <div class="col-md-10">
                            <asp:TextBox runat="server" ID="Subject" CssClass="form-control" MaxLength="200" Width="300px" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="Subject"
                                CssClass="text-danger" ErrorMessage="“主题”字段是必填字段。" />
                        </div>
                    </div>

                    <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="CKEditorContent" CssClass="col-md-2 control-label">内容</asp:Label>
                        <div class="col-md-10" >
                            <CKEditor:CKEditorControl ID="CKEditorContent" runat="server" ClientIDMode="Static">
                                <p>亲爱的房主,您好!</p>
                               <p>我是Renting网的一名租客, 我在网上看到了您的房源, 表示很感兴趣, 请问您的房子还外租, 如还在外租请联系我.</p>
                                <p>联系方式: </p>

                            </CKEditor:CKEditorControl>
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-md-offset-2 col-md-10">
                            <asp:Button runat="server" OnClick="SendEmail" Text="发送" CssClass="btn btn-success" />
                        </div>
                    </div>

                </div>
            </section>
        </div>
    </div>
</asp:Content>


