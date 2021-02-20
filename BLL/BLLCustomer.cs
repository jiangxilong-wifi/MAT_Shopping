using Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;

namespace BLL
{
    public static class BLLCustomer
    {
        //查询用户
        public static List<MODCustomer> BLLSelectCustomer(string Login, string Pwd)
        {
            //查询用户信息
            return DALCustomer.DALSelectCustomer(Login, Pwd);
        }

        //查询所有用户信息
        public static List<MODCustomer> BLLSelectCustomerAll()
        {
            //查询用户信息
            return DALCustomer.DALSelectCustomerAll();
        }
    }
}
