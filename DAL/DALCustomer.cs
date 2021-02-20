using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model;

namespace DAL
{
    public class DALCustomer
    {
        //查询用户并返回泛型
        public static List<MODCustomer> DALSelectCustomer(string Login, string Pwd)
        {
            string selCustomerSql = string.Format("select * from Customer where Login='{0}' and Pwd='{1}'", Login, Pwd);
            DataTable dt = DBHelper.GetDataTable(selCustomerSql);
            //实例化模型类
            MODCustomer customer = new MODCustomer();
            //模型类获取值
            customer.UserID = int.Parse(dt.Rows[0][0].ToString());
            customer.UserName = dt.Rows[0][1].ToString();
            customer.Login = dt.Rows[0][2].ToString();
            customer.Pwd = dt.Rows[0][3].ToString();
            customer.Address = dt.Rows[0][4].ToString();
            customer.Phone = dt.Rows[0][5].ToString();
            customer.Email = dt.Rows[0][6].ToString();

            //实例化泛型集合
            List<MODCustomer> listCustomer = new List<MODCustomer>();
            //填充
            listCustomer.Add(customer);

            return listCustomer;
        }

        //查询用户并返回泛型
        public static List<MODCustomer> DALSelectCustomerAll()
        {
            string selCustomerSql = string.Format("select * from Customer");
            DataTable dt = DBHelper.GetDataTable(selCustomerSql);
            //实例化模型类
            MODCustomer customer = new MODCustomer();
            //模型类获取值
            customer.UserID = int.Parse(dt.Rows[0][0].ToString());
            customer.UserName = dt.Rows[0][1].ToString();
            customer.Login = dt.Rows[0][2].ToString();
            customer.Pwd = dt.Rows[0][3].ToString();
            customer.Address = dt.Rows[0][4].ToString();
            customer.Phone = dt.Rows[0][5].ToString();
            customer.Email = dt.Rows[0][6].ToString();

            //实例化泛型集合
            List<MODCustomer> listCustomer = new List<MODCustomer>();
            //填充
            listCustomer.Add(customer);

            return listCustomer;
        }

    }
}
