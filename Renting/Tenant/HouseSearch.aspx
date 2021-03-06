﻿<%@ Page Title="搜索" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="HouseSearch.aspx.cs" Inherits="Tenant_HouseSearch" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h2><%: Title %></h2>
    <div class="row">
        <div class="col-md-12">

            <section id="SearchForm">
                <div class="form-inline">
                    <div class="form-group">
                        <div class="col-md-20 ">
                            <asp:TextBox runat="server" ID="QueryKey" CssClass="auto-style2" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="QueryKey"
                                CssClass="text-danger" ErrorMessage="“搜索词”字段是必填字段。" />
                        </div>
                    </div>
                    <br />
                    <br />
                    <div class="form-group">
                        <div class="col-md-4">
                            <asp:Button runat="server" Text="按照 位置 查找" CssClass="btn btn-success" OnClick="SearchByLocation" />
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-md-4">
                            <asp:Button runat="server" Text="按照 描述 查找" CssClass="btn btn-success" OnClick="SearchByDescribe" />
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-md-4">
                            <asp:Button runat="server" Text="按照 户型 查找" CssClass="btn btn-success" OnClick="SearchByHousetype" />
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-md-4">
                            <asp:Button runat="server" Text="搜该 平米以下" CssClass="btn btn-success" OnClick="SearchBySquareMeter" />
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-md-4">
                            <asp:Button runat="server" Text="搜该 价格以下" CssClass="btn btn-success" OnClick="SearchByPrice" />
                        </div>
                    </div>

                </div>
            </section>

            <br />
            <br />

            <section id="ResultForm">
                <div id="SearchResult">
                </div>
            </section>

        </div>
    </div>
</asp:Content>

