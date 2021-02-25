using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
namespace MAT_Shopping
{
    public partial class GoodsInformation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                gvGoodsInformation.DataSource = BLLGoodsInformation.BLLSelectGoodsInformationAll();
                gvGoodsInformation.DataBind();
            }
        }

        protected void gvGoodsInformation_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvGoodsInformation.PageIndex = e.NewPageIndex;
            gvGoodsInformation.DataSource = BLLGoodsInformation.BLLSelectGoodsInformationAll();
            gvGoodsInformation.DataBind();
        }

        //删除操作
        protected void gvGoodsInformation_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int GoodsID = (int)gvGoodsInformation.DataKeys[e.RowIndex].Value;
            if (BLLGoodsInformation.Delete(GoodsID))
            {
                Response.Write("<script>alert('删除成功')</script>");
            }
            else
            {
                Response.Write("<script>alert('删除失败')</script>");
            }
            gvGoodsInformation.DataSource = BLLGoodsInformation.BLLSelectGoodsInformationAll();
            gvGoodsInformation.DataBind();
        }
    }
}