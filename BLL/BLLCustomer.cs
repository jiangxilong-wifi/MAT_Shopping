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
        public static bool BLLSelectCustomer(string Login, string Pwd)
        {
            //查询用户
            if (DALCustomer.DALSelectCustomer(Login, Pwd))
            {
                return true;
            }
            else
            {
                return false;
            }
        }
    }
}
