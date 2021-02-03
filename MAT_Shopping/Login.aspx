<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="MAT_Shopping.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="CSS/Login.css" rel="stylesheet" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
	<script src="Scripts/jquery-3.4.1.min.js"></script>
	<script>
		$(function(){
            $(".btnLogin-text").click(function () {
                location.href = "Load.aspx";
			})
			$("#tbName").blur(function () { $(this).text("fds"); })
        })
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div id="Login">
			<div class="Login-text">MAT后台管理</div>
			<div class="Login-user">
				<span class="Login-logo glyphicon glyphicon-user"></span>
                <asp:TextBox ID="tbName" runat="server" text="手机号或邮箱" class="Login-user_text" BorderStyle="Solid"></asp:TextBox>
			</div>  
			<div class="Login-pwd">
				<span class="Login-logo glyphicon glyphicon-lock"></span>
				<asp:TextBox ID="TextBox2" runat="server" text="密码" class="Login-user_text" BorderStyle="Solid"></asp:TextBox>
				
			</div>
			<div class="Login-chockbox">
				<input type="checkbox" />&nbsp;记住密码
			</div>
            <asp:Button ID="Button1" runat="server" Text="登录" class="btnLogin-text" ForeColor="White"/>
		    
		</div>
    </form>
</body>
</html>
