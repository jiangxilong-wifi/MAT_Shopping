<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="CustomerOrderManagement.aspx.cs" Inherits="MAT_Shopping.CustomerOrders" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="CSS/CustomerOrders.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <%-- 搜索栏 --%>
    <div class="bo2">
        <div id="CustomerOrders-section">
            <%-- 搜索条件 --%>
            <div class="CustomerOrders-section-second">
                <input class="CustomerOrders-input-text-one" type="text" />
            </div>
            <%-- 搜索条件 --%>
            <div class="CustomerOrders-section-third">
                <input class="CustomerOrders-input-text-two" type="text" />
            </div>
            <%-- 搜索按钮 --%>
            <div class="CustomerOrders-section-fourth">
                <input class="CustomerOrders-input-button-one" type="button" value="搜索" />
            </div>
            <%-- 占位空间 --%>
            <div class="CustomerOrders-section-fifth">
            </div>
        </div>
    </div>
    <%-- 用户订单显示模块 --%>
    <div class="bo3">
        <div class="CustomerOrders-adddel">
            <%-- 添加订单 --%>
            <div class="CustomerOrders-add CustomerOrders-ad"></div>
            <%-- 删除订单 --%>
            <div class="CustomerOrders-del CustomerOrders-ad"></div>
        </div>
        <%-- 用户订单表格 --%>
        <div class="CustomerOrders-gridView"></div>
    </div>
</asp:Content>
