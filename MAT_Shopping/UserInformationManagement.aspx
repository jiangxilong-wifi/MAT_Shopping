<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="UserInformationManagement.aspx.cs" Inherits="MAT_Shopping.home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="CSS/Customer.css" rel="stylesheet" />
    <script type="text/javascript">
        //jQuery
        $(function () {
            $("#gvUser td").attr("border", "1px");
        })
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <%-- 搜索栏 --%>
    <div class="no2">
        <div id="Customer-section">
            <%-- 搜索条件 --%>
            <div class="section-second">
                <input class="input-text-one" type="text" />
            </div>
            <%-- 搜索条件 --%>
            <div class="section-third"  A>
                <input class="input-text-two" type="text" />
            </div>
            <%-- 搜索按钮 --%>
            <div class="section-fourth">
                <input class="input-button-one" type="button" value="搜索" />
            </div>
            <%-- 占位空间 --%>
            <div class="section-fifth">
            </div>
        </div>
    </div>
    <%-- 用户信息显示模块 --%>
    <div class="no3">
        <%-- 用户信息操作 --%>
        <div class="adddel">
            <div class="add ad"></div>
            <div class="del ad"></div>
        </div>
        <%-- 用户信息显示 --%>
        <div class="gridView">
            <asp:GridView ID="gvUser" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" BorderStyle="Solid">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="UserID" HeaderText="用户ID" />
                    <asp:BoundField DataField="UserName" HeaderText="用户姓名" />
                    <asp:BoundField DataField="Login" HeaderText="登录名" />
                    <asp:BoundField DataField="Pwd" HeaderText="登录密码" />
                    <asp:BoundField DataField="Address" HeaderText="地址" />
                    <asp:BoundField DataField="Phone" HeaderText="电话" />
                    <asp:BoundField DataField="Email" HeaderText="邮箱" />
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

