<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="UserInformationManagement.aspx.cs" Inherits="MAT_Shopping.home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="CSS/Customer.css" rel="stylesheet" />
    <link href="CSS/gvUser.css" rel="stylesheet" />
    <script type="text/javascript">
        //jQuery
        $(function () {

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
            <div class="section-third">
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
            <%-- 添加用户按钮 --%>
            <asp:Button ID="Button1" runat="server" Text="添加用户" class="add ad" BorderStyle="None" Font-Bold="False" ForeColor="White" Font-Names="幼圆" Font-Size="Small" />
            <%-- 删除用户按钮 --%>
            <asp:Button ID="Button2" runat="server" Text="删除用户"  class="del ad" BorderStyle="None" Font-Bold="False" Font-Names="幼圆" Font-Size="Small" ForeColor="White"/>
        </div>
        <%-- 用户信息显示 --%>
        <div class="gridView">
            <asp:GridView ID="gvUser" runat="server" AutoGenerateColumns="False" CssClass="mGrid" CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="gvUser_SelectedIndexChanged">
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
                    <asp:BoundField DataField="UserID" HeaderText="用户ID" />
                    <asp:BoundField DataField="UserName" HeaderText="用户姓名" />
                    <asp:BoundField DataField="Login" HeaderText="登录名" />
                    <asp:BoundField DataField="Pwd" HeaderText="登录密码" />
                    <asp:BoundField DataField="Address" HeaderText="地址" />
                    <asp:BoundField DataField="Phone" HeaderText="电话" />
                    <asp:BoundField DataField="Email" HeaderText="邮箱" />
                    <asp:TemplateField HeaderText="操作" ShowHeader="False">
                        <EditItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="更新"></asp:LinkButton>
                            &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消"></asp:LinkButton>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="编辑"></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <EditRowStyle BackColor="#7C6F57" />
                <EmptyDataTemplate>
                    <asp:CheckBox ID="CheckBox1" runat="server" />
                </EmptyDataTemplate>
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

