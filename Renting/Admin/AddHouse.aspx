<%@ Page Title="添加房源" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="AddHouse.aspx.cs" Inherits="Admin_AddHouse" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
    <style type="text/css">
        body, html {
            width: 100%;
            height: 100%;
            margin: 0;
            font-family: "微软雅黑";
            font-size: 14px;
        }

        #l-map {
            height: 300px;
            width: 100%;
        }

        #r-result {
            width: 100%;
        }
    </style>
    <script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=fAfEI6uHZVrXnDxRuy8oP6PvZfU2kFEY"></script>
    <script src="../Scripts/Baidu.map.js"></script>
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
                        <asp:Label runat="server" AssociatedControlID="suggestId" CssClass="col-md-2 control-label">地理位置</asp:Label>
                        <div class=" col-md-10">
                            <div class="" id="content">

                                <div class="input-append">
                                    <asp:TextBox ClientIDMode="Static" runat="server" CssClass="form-control" type="text" ID="suggestId" class="input-xlarge" name="place" value="<%=Address%>"
                                        data-rule-required="true" />
                                    <button class="btn btn-success" type="button" id="positioning">
                                        搜索</button><span class="maroon">注意：从市级别描述!（精准位置请拖动地图选择）</span>
                                </div>

                                <div id="r-result" style="margin: 0px 0 0 0; width: 0px; height: 0px">
                                    经度<asp:TextBox ClientIDMode="Static" Width="0px" runat="server" type="text" ID="lng" name="lng" value="<%=Longitude %>" />
                                    纬度<asp:TextBox ClientIDMode="Static" Width="0px" runat="server" type="text" ID="lat" name="lat" value="<%=Latitude %>" />
                                </div>
                                <div id="l-map">
                                    <i class="icon-spinner icon-spin icon-large"></i>地图加载中...
                                </div>
                            </div>

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
                            <asp:Button runat="server" Text="添加房源" OnClick="ChangePassword_Click" CssClass="btn btn-success" ValidationGroup="AddHouse" />
                        </div>
                    </div>
                </div>

            </section>
        </div>
    </div>

    <script src="Script/JQuery.min.js" type="text/javascript"></script>
    <script type="text/javascript" src="http://api.map.baidu.com/api?key=24ffad3855e675265336a4cfb46d32b4&v=1.1&services=true"></script>
    <script type="text/javascript">
        $(function () {
            var op = {
                lat: "<%=Lat %>",
                lng: "<%=Lng %>",
                adr: "<%=Address %>"
            }
            baidu_map(op);
        })
    </script>

</asp:Content>
