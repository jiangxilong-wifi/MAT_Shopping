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
		//jQuery
		$(function(){			
			//用户输入框显示提示信息
			$("#tbName").attr("placeholder", "用户名或邮箱");
			$("#tbPwd").attr("placeholder", "密码");
        })
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div id="Login">
			<div class="Login-text">MAT后台管理</div>
			<div class="Login-user">
				<span class="Login-logo glyphicon glyphicon-user"></span>
                <asp:TextBox ID="tbName" runat="server"  class="Login-user_text" BorderStyle="Solid"></asp:TextBox>
			</div>  
			<div class="Login-pwd">
				<span class="Login-logo glyphicon glyphicon-lock"></span>
				<asp:TextBox ID="tbPwd" runat="server"  class="Login-user_text" BorderStyle="Solid"></asp:TextBox>
				
			</div>
			<div class="Login-chockbox">    
				<input type="checkbox" />&nbsp;记住密码
			</div>
            <asp:Button ID="BtnLogin" runat="server" Text="登录" class="btnLogin-text" ForeColor="White" OnClick="BtnLogin_Click"/>
		    
		</div>
    </form>
</body>
</html>
