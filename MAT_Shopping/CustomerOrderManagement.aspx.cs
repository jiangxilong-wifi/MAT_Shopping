using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using Model;

namespace MAT_Shopping
{
    public partial class CustomerOrders : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                gvUserOrder.DataSource = BLLOrder.BLLSelectOrderAll();
                gvUserOrder.DataBind();
            }
        }
        //删除操作
        protected void gvUserOrder_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int OrdersID = (int)gvUserOrder.DataKeys[e.RowIndex].Value;
            if (BLLOrder.Delete(OrdersID))
            {
                Response.Write("<script>alert('删除成功')</script>");
            }
            else
            {
                Response.Write("<script>alert('删除失败')</script>");
            }
            gvUserOrder.DataSource = BLLOrder.BLLSelectOrderAll();
            gvUserOrder.DataBind();
        }
    }
}