using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model;

namespace DAL
{
    public class DALCustomer
    {
        //查询用户
        public static bool DALSelectCustomer(string Login,string Pwd)
        {
            string selCustomerSql = string.Format("select count(*) from Customer where Login='{0}' and Pwd='{1}'", Login, Pwd);
            if (DBHelper.ExecuteScalar(selCustomerSql))
            {
                //确认存在该用户
                return true;
            }
            else
            {
                //用户不存在
                return false;
            }
        }
        
    }
}
