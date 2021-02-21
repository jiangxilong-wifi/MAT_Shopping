using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

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
    }
}