<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="MAT_Shopping.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <%-- 外部样式导入显示不全面 --%>
    <%--<link href="CSS/Login.css" rel="stylesheet" type="text/css"/>--%>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/jquery-3.4.1.min.js"></script>
    <script>
        //jQuery
        $(function () {
            //用户输入框显示提示信息
            $("#tbName").attr("placeholder", "用户名或邮箱");
            $("#tbPwd").attr("placeholder", "密码");
            $("#tbPwd").attr("type", "password");
            $("#BtnLogin").css("background-color", "#008c7e");
        })
    </script>
    <style>
        /*全局设定（尺寸及背景颜色）*/
        body {
            font-size: 12px;
            padding: 0px;
            margin: 0px;
            background-color: #008c7e;
        }

        #Login {
            margin: 300px auto;
            width: 400px;
            height: 300px;
            background-color: white;
        }

        .Login-text {
            font-size: 2.4rem;
            padding-right: 10px;
            text-align: center;
            line-height: 65px;
            background-color: white;
            height: 20%;
        }

        .Login-user {
            text-align: center;
            line-height: 65px;
            background-color: white;
        }

        .Login-pwd {
            font-size: 1.5rem;
            text-align: center;
            line-height: 65px;
            background-color: white;
        }

        .Login-user_text {
            font-size: 1.5rem;
            background-color: white;
            width: 280px;
            height: 30px;
        }

        .Login-chockbox {
            font-size: 0.75rem;
            height: 30px;
            text-align: left;
            line-height: 25px;
            margin-left: 70px;
            background-color: white;
        }

        .btnLogin-text {
            margin-left: 70px;
            text-align: center;
            line-height: 30px;
            width: 280px;
            border: none;
            color: white;
        }

        .Login-chockbox input {
            height: 14px;
            width: 14px;
            float: left;
        }

        .Login-logo {
            background-color: white;
            padding-top: 2px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="Login">
            <div class="Login-text">MAT后台管理</div>
            <div class="Login-user">
                <span class="Login-logo glyphicon glyphicon-user"></span>
                <asp:TextBox ID="tbName" runat="server" class="Login-user_text" BorderStyle="Solid"></asp:TextBox>
            </div>
            <div class="Login-pwd">
                <span class="Login-logo glyphicon glyphicon-lock"></span>
                <asp:TextBox ID="tbPwd" runat="server" class="Login-user_text" BorderStyle="Solid" ReadOnly="False"></asp:TextBox>

            </div>
            <div class="Login-chockbox">
                <input type="checkbox" />&nbsp;记住密码
            </div>
            <asp:Button ID="BtnLogin" runat="server" Text="登录" class="btnLogin-text" ForeColor="White" OnClick="BtnLogin_Click" />

        </div>
    </form>
</body>
</html>
