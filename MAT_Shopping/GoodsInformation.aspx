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
            <%-- 商品信息管理表格 --%>
		    <div class="go3-gridView">
                <asp:GridView ID="gvGoodsInformation" runat="server" AutoGenerateColumns="False" CssClass="mGrid" CellPadding="4" ForeColor="#333333" GridLines="None" AllowPaging="True" Height="400px" OnPageIndexChanging="gvGoodsInformation_PageIndexChanging" Width="1200px" DataKeyNames="GoodsID" OnRowDeleting="gvGoodsInformation_RowDeleting">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="GoodsID" HeaderText="商品ID" ReadOnly="True" />
                        <asp:BoundField DataField="GoodName" HeaderText="商品名称" />
                        <asp:BoundField DataField="GoodsTypeName" HeaderText="商品类型名称" />
                        <asp:BoundField DataField="Price" HeaderText="商品价格" />
                        <asp:BoundField DataField="Count" HeaderText="库存" />
                        <asp:TemplateField HeaderText="操作">
							<EditItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="更新"></asp:LinkButton>
                            &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消"></asp:LinkButton>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="编辑"></asp:LinkButton>
                        </ItemTemplate>
                        </asp:TemplateField>

                        <asp:CommandField HeaderText="删除商品" ShowDeleteButton="True" />

                    </Columns>
                    <EditRowStyle BackColor="#7C6F57" />
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
