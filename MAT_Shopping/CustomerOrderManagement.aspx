<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="CustomerOrderManagement.aspx.cs" Inherits="MAT_Shopping.CustomerOrders" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="CSS/CustomerOrders.css" rel="stylesheet" />
    <link href="CSS/gvUserOrder.css" rel="stylesheet" />
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
        <div class="CustomerOrders-gridView">
            <asp:GridView ID="gvUserOrder" runat="server" AutoGenerateColumns="False" CssClass="mGrid" CellPadding="4" ForeColor="#333333" GridLines="None" DataKeyNames="OrdersID" Width="1200px" OnRowDeleting="gvUserOrder_RowDeleting">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:TemplateField HeaderText="选择">
                        <EditItemTemplate>
                            <asp:CheckBox ID="CheckBox1" runat="server" />
                        </EditItemTemplate>
                        <HeaderTemplate>
                            <asp:CheckBox ID="CheckBox2" runat="server" />
                            全选
                        </HeaderTemplate>
                        <ItemTemplate>
                            <asp:CheckBox ID="CheckBox1" runat="server" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="OrdersID" HeaderText="订单ID" ReadOnly="True" />
                    <asp:BoundField DataField="UserName" HeaderText="用户名" />
                    <asp:BoundField DataField="GoodName" HeaderText="商品名" />
                    <asp:BoundField DataField="Time" HeaderText="购买时间" />
                    <asp:BoundField DataField="Price" HeaderText="商品价格" />
                    <asp:BoundField DataField="OrdersCount" HeaderText="购买数量" />
                    <asp:BoundField DataField="Introduction" HeaderText="商品简介" />
                    <asp:CommandField HeaderText="删除订单" ShowDeleteButton="True" />
                </Columns>
                <EditRowStyle BackColor="#7C6F57" />
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#E3EAEB" />
                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                <SortedAscendingHeaderStyle BackColor="#246B61" />
                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                <SortedDescendingHeaderStyle BackColor="#15524A" />
            </asp:GridView>
        </div>
    </div>
</asp:Content>
