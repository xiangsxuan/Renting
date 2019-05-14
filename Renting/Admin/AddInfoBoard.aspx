<%@ Page Title="聊天" MasterPageFile="~/Site.Master" Async="true" Language="C#" AutoEventWireup="true" CodeFile="AddInfoBoard.aspx.cs" Inherits="Admin_AddInfoBoard" %>

<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h2><%:Title %>.</h2>

    <div class="row">
        <div class="col-md-8">
            <section id="">
                <div class="form-horizontal">
                    <hr />
                    <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="InfoTitle" CssClass="col-md-2 control-label">公告标题</asp:Label>
                        <div class="col-md-10">
                            <asp:TextBox runat="server" ID="InfoTitle" CssClass="form-control" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="InfoTitle"
                                CssClass="text-danger" ErrorMessage="“公告标题”字段是必填字段。" />
                        </div>
                    </div>

                    <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="CKEditorContent" CssClass="col-md-2 control-label">公告内容</asp:Label>
                        <div class="col-md-10" >
                            <CKEditor:CKEditorControl ID="CKEditorContent" runat="server" ClientIDMode="Static">
                               
                            </CKEditor:CKEditorControl>
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-md-offset-2 col-md-10">
                            <asp:Button runat="server" OnClick="AddBoard" Text="发布" CssClass="btn btn-default" />
                        </div>
                    </div>

                </div>
            </section>
        </div>
    </div>
</asp:Content>



