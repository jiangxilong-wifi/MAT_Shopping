<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="UserInformationManagement.aspx.cs" Inherits="MAT_Shopping.home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="CSS/Customer.css" rel="stylesheet" />
    <link href="CSS/gvUser.css" rel="stylesheet" />
    <link href="CSS/Float_UserAdd.css" rel="stylesheet" />
    <script src="Scripts/jquery-3.4.1.min.js"></script>
    <script type="text/javascript">
        $(function () {
            //点击显示添加用户界面
            $(".add").click(function () {
                $(".background").fadeIn(260).css("display", "block")
                $(".top").fadeIn(300).css("display", "block")
            })
            $(".top-exit-ico_right").click(function () {
                $(".background").fadeOut(240, function () { $(".top").css("display", "none") })
                $(".top").fadeOut(300, function () { $(".top").css("display", "none")})
            })
            $(".btnInsertUser").click(function () {
                alert("添加成功！")
            })
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
            <!--点击此按钮弹出添加用户悬浮页面-->
            <div class="add ad">
                点击添加
            </div>
            <div class="top">
                <%-- 导航条 --%>
                <div class="top-exit">
                    添加用户信息
                    <%-- 退出按钮 --%>
                    <div class="top-exit-ico_right ">
                        <div class="top-exit-ico glyphicon glyphicon-remove-circle"></div>
                    </div>
                </div>
                <!--用一个盒子再装用户名和文本框-->
                <div class="top-text">
                    <div class="top-text_table_box">
                        <table class="top-text-table">
                            <tr>
                                <td class="top-text-td">用户名：</td>
                                <td>
                                    <asp:TextBox ID="TextBox1" runat="server" class="inputstyle"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="top-text-td">登录名：</td>
                                <td>
                                    <asp:TextBox ID="TextBox2" runat="server" class="inputstyle"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="top-text-td">密码：</td>
                                <td>
                                    <asp:TextBox ID="TextBox3" runat="server" class="inputstyle"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="top-text-td">地址：</td>
                                <td>
                                    <asp:TextBox ID="TextBox4" runat="server" class="inputstyle"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="top-text-td">电话：</td>
                                <td>
                                    <asp:TextBox ID="TextBox5" runat="server" class="inputstyle"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="top-text-td">邮箱：</td>
                                <td>
                                    <asp:TextBox ID="TextBox6" runat="server" class="inputstyle"></asp:TextBox>
                                </td>
                            </tr>
                        </table>
                    </div>
                    <%-- 悬浮窗内的添加按钮 --%>
                    <div class="foot-text">
                        <div class="foot-text_center">
                            <div class="foot-text_center_height">
                                <%-- 按钮 --%>
                                <asp:Button ID="Button1" runat="server" Text="确认修改" class="foot-text_center_height_btn btn1" BorderStyle="None" OnClick="Button1_Click1" />
                                <asp:Button ID="Button3" runat="server" Text="重置" class="foot-text_center_height_btn btn2" BorderStyle="None" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <%-- 删除用户按钮 --%>
            <asp:Button ID="Button2" runat="server" Text="删除用户" class="del ad" BorderStyle="None" Font-Bold="False" Font-Size="Medium" ForeColor="White" />
        </div>
        <%-- 用户信息显示 --%>
        <div class="gridView">
            <asp:GridView ID="gvUser" runat="server" AutoGenerateColumns="False" CssClass="mGrid" CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="gvUser_SelectedIndexChanged" DataKeyNames="UserID" OnRowCancelingEdit="gvUser_RowCancelingEdit" OnRowEditing="gvUser_RowEditing" OnRowUpdating="gvUser_RowUpdating" Width="1200px" OnRowCommand="gvUser_RowCommand">
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
                    <asp:BoundField DataField="UserID" HeaderText="用户ID" ReadOnly="True" />
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
                    <asp:TemplateField HeaderText="删除">
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton4" runat="server">LinkButton</asp:LinkButton>
                            <asp:LinkButton ID="LinkButton3" runat="server" OnClientClick="return confirm('确认删除')" CommandName="Delete" CommandArgument='<%# Eval("UserID") %>'>删除</asp:LinkButton>
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

