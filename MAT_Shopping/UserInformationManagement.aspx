<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="UserInformationManagement.aspx.cs" Inherits="MAT_Shopping.home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="CSS/Customer.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <div class="no2">
        <div id="Customer-section">
            <div class="section-second">
                <input class="input-text-one" type="text" />
            </div>
            <div class="section-third">
                <input class="input-text-two" type="text" />
            </div>
            <div class="section-fourth">
                <input class="input-button-one" type="button" value="搜索" />
            </div>
            <div class="section-fifth">
            </div>
        </div>
    </div>
    <div class="no3">
        <div class="adddel">
            <div class="add ad"></div>
            <div class="del ad"></div>
        </div>
        <div class="gridView"></div>
    </div>
</asp:Content>

