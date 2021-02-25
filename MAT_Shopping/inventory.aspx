<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="inventory.aspx.cs" Inherits="MAT_Shopping.inventory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="CSS/inventory.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content6" ContentPlaceHolderID="ContentPlaceHolder5" runat="server">
    <div class="co2">
			<div id="inventory-section">
              <div class="inventory-section-second">
              	<input class="inventory-input-text-one" type="text" />
              </div>
              <div class="inventory-section-third">
              	<input class="inventory-input-text-two" type="text" />
              </div>
              <div class="inventory-section-fourth">
              	<input class="inventory-input-button-one" type="button" value="搜索" />
              </div>
              <div class="inventory-section-fifth">
              	
              </div>
        </div>
		</div>
		<div class="co3">
		    <div class="inventory-adddel">
		    	<div class="inventory-add inventory-ad"></div>
		    	<div class="inventory-del inventory-ad"></div>
		    </div>
		    <div class="inventory-gridView"></div>
		</div>
</asp:Content>
