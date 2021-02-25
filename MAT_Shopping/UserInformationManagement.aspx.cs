using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using BLL;
using Model;

namespace MAT_Shopping
{
    public partial class home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                gvUser.DataSource = BLLCustomer.BLLSelectCustomerAll();
                gvUser.DataBind();
            }
        }

        protected void gvUser_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Write("<script> $(function () {$('#b2-1').css('display', 'block');});</script>");
        }
        //点击编辑
        protected void gvUser_RowEditing(object sender, GridViewEditEventArgs e)
        {
            this.gvUser.EditIndex = e.NewEditIndex;
            gvUser.DataSource = BLLCustomer.BLLSelectCustomerAll();
            gvUser.DataBind();
        }
        //点击取消
        protected void gvUser_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            this.gvUser.EditIndex = -1;
            gvUser.DataSource = BLLCustomer.BLLSelectCustomerAll();
            gvUser.DataBind();
        }
        //编辑之后更新事件
        protected void gvUser_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            MODCustomer customer = new MODCustomer();
            customer.UserID =(int) gvUser.DataKeys[e.RowIndex].Value;
            customer.UserName = ((TextBox)(gvUser.Rows[e.RowIndex].Cells[2].Controls[0])).Text;
            customer.Login= ((TextBox)(gvUser.Rows[e.RowIndex].Cells[3].Controls[0])).Text;
            customer.Pwd= ((TextBox)(gvUser.Rows[e.RowIndex].Cells[4].Controls[0])).Text;
            customer.Address= ((TextBox)(gvUser.Rows[e.RowIndex].Cells[5].Controls[0])).Text;
            customer.Phone= ((TextBox)(gvUser.Rows[e.RowIndex].Cells[6].Controls[0])).Text;
            customer.Email= ((TextBox)(gvUser.Rows[e.RowIndex].Cells[7].Controls[0])).Text;
            if (BLLCustomer.Uptade(customer))
            {
                gvUser.EditIndex = -1;
                Response.Write("<script>alert('修改成功')</script>");
                gvUser.DataSource = BLLCustomer.BLLSelectCustomerAll();
                gvUser.DataBind();
            }
        }
    }
}