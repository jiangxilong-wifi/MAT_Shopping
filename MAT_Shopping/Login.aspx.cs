using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

namespace MAT_Shopping
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //是否页面回调
            if (!IsPostBack)
            {

            }
        }

        //点击登录
        protected void BtnLogin_Click(object sender, EventArgs e)
        {
            //获取用户输入账号密码并判断
            //调用查询方法
            if (BLLCustomer.BLLSelectCustomer(tbName.Text, tbPwd.Text))
            {
                //存在该用户
                Response.Redirect("/load.aspx");
            }
            else
            {
                //不存在该用户
                Response.Write("<script>alert('用户名或密码错误');</script>");
            }

        }
    }
}