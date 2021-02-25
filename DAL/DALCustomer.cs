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
        public static bool DALSelectCustomer(string Login, string Pwd)
        {
            //存储过程值登录名限制长度10，登录密码限制长度16
            string selCustomerSql = string.Format("exec Customer_Login '{0}','{1}'", Login, Pwd);
            if (DBHelper.ExecuteScalar(selCustomerSql))
            {
                //存在该用户
                return true;
            }
            else
            {
                //不存在该用户
                return false;
            }

            
        }

        //查询所有用户
        public static List<MODCustomer> DALSelectCustomerAll()
        {
            string selCustomerSql = string.Format("select * from Customer");
            DataTable dt = DBHelper.GetDataTable(selCustomerSql);
            
            //实例化泛型集合
            List<MODCustomer> listCustomer = new List<MODCustomer>();
            //模型类获取值
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                //实例化模型类
                MODCustomer customer = new MODCustomer();
                customer.UserID = int.Parse(dt.Rows[i][0].ToString());
                customer.UserName = dt.Rows[i][1].ToString();
                customer.Login = dt.Rows[i][2].ToString();
                customer.Pwd = dt.Rows[i][3].ToString();
                customer.Address = dt.Rows[i][4].ToString();
                customer.Phone = dt.Rows[i][5].ToString();
                customer.Email = dt.Rows[i][6].ToString();
                //填充
                listCustomer.Add(customer);
            }
            return listCustomer;
        }
        //编辑更新
        public static bool Uptade(MODCustomer modcustomer)
        {
            string sql = string.Format("update Customer set  UserName='{0}',Login='{1}',Pwd='{2}',Address='{3}',Phone='{4}',Email='{5}'where UserID='{6}'"
                ,modcustomer.UserName, modcustomer.Login,modcustomer.Pwd,modcustomer.Address,modcustomer.Phone,modcustomer.Email,modcustomer.UserID);
            return DBHelper.ExecuteNonQuery(sql);
        }

    }
}
