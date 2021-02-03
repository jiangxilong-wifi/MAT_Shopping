﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="MAT_Shopping.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="CSS/Login.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div id="Login">
			<div class="Login-text">MAT后台管理</div>
			<div class="Login-user">
				<span class="Login-logo-one"></span>
				<input type="text" placeholder="用户名或者邮箱" class="Login-user_text"/>
			</div>
			<div class="Login-pwd">
				<span class="Login-logo-two"></span>
				<input type="text" placeholder="密码" class="Login-user_text" />
			</div>
			<div class="Login-chockbox">
				<input type="checkbox" />记住密码
			</div>
		    <input class="btnLogin-text" type="button" value="登录" />
		</div>
    </form>
</body>
</html>
