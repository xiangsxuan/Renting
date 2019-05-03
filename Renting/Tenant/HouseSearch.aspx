<%@ Page Title="��Դ����" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="HouseSearch.aspx.cs" Inherits="Tenant_HouseSearch" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>

    <div class="row">
        <div class="col-md-12">
            <section id="houseForm">
                <div class="form-horizontal">
                    <div class="form-group">
                        <div class="col-md-10">
                            <asp:TextBox runat="server" ID="QueryKey" CssClass="form-control" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="QueryKey"
                                CssClass="text-danger" ErrorMessage="���������ֶ��Ǳ����ֶΡ�" />
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-md-offset-2 col-md-10">
                            <asp:Button runat="server" Text="������Դ" OnClick="HouseSearch_Click" CssClass="btn btn-default" ValidationGroup="" />
                        </div>
                    </div>
                </div>
            </section>
        </div>
    </div>
</asp:Content>
