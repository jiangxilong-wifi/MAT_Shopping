<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="GoodsInformation.aspx.cs" Inherits="MAT_Shopping.GoodsInformation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="CSS/GoodsInformation.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder4" runat="server">
    <div class="go1">
			<div class="go1-all">
				<p class="go1-all_text">全部商品(1000)</p>
			</div>
			<div class="go1-alls">
				<p class="go1-alls_text">已上架(999)</p>
			</div>
			<div class="go1-alls">
				<p class="go1-alls_text">未上架(1)</p>
			</div>
		</div>
		<div class="go2">
			<div class="go2-first">
				<p class="go2-first_text">输入搜索：</p>
				<input class="go2-first_input" placeholder="商品名称/商品ID" type="text" />
			</div>
			<div class="go2-first">
				<p class="go2-first_text">商品分类：</p>
				<input class="go2-first_input" placeholder="请选择商品分类" type="text" />
			</div>
			<div class="go2-two">
				
			</div>
		</div>
		<div class="go3">
			<div class="go3-adddel">
		    	<div class="go3-add go3-ad"></div>
		    	<div class="go3-del go3-ad"></div>
		    </div>
		    <div class="go3-gridView"></div>
		</div>
</asp:Content>
