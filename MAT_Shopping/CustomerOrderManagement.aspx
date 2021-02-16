<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="CustomerOrderManagement.aspx.cs" Inherits="MAT_Shopping.CustomerOrders" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="CSS/CustomerOrders.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="bo2">
			<div id="CustomerOrders-section">
              <div class="CustomerOrders-section-second">
              	<input class="CustomerOrders-input-text-one" type="text" />
              </div>
              <div class="CustomerOrders-section-third">
              	<input class="CustomerOrders-input-text-two" type="text" />
              </div>
              <div class="CustomerOrders-section-fourth">
              	<input class="CustomerOrders-input-button-one" type="button" value="搜索" />
              </div>
              <div class="CustomerOrders-section-fifth">
              	
              </div>
        </div>
		</div>
		<div class="bo3">
		    <div class="CustomerOrders-adddel">
		    	<div class="CustomerOrders-add CustomerOrders-ad"></div>
		    	<div class="CustomerOrders-del CustomerOrders-ad"></div>
		    </div>
		    <div class="CustomerOrders-gridView"></div>
		</div>
</asp:Content>
