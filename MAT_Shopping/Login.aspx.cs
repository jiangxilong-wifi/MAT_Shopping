using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using Model;

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

            //判断输入的字符串是否匹配正则表达式
            if (Regex.IsMatch(tbName.Text, "^[A-Za-z]{1,8}$"))
            {
                //调用查询方法
                if (BLLCustomer.BLLSelectCustomer(tbName.Text, tbPwd.Text) != null)
                {
                    //存储该用户
                    MODCustomer Customer = new MODCustomer();
                    Session["CustomerName"] = Customer.UserID;
                    Response.Redirect("/load.aspx");
                }
                else
                {
                    //不存在该用户
                    Response.Write("<script>alert('用户名或密码错误');</script>");
                }

            }
            else
            {
                Response.Write("<script>alert('用户名或密码错误');</script>");
            }
            


        }

    }
}