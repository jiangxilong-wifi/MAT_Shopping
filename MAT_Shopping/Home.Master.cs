using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MAT_Shopping
{
    public partial class Home : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //判断是否正常登录
            if (Session["CustomerName"] != null)
            {

            }
            else
            {
                Response.Redirect("/Error_404.aspx");
            }
        }
    }
}