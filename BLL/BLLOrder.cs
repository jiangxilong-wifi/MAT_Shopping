using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model;
using DAL;
namespace BLL
{
    public class BLLOrder
    {
        //查询所有的用户订单信息
        public static List<MODOrder> BLLSelectOrderAll()
        {
            //查询用户订单信息
            return DALOrder.DALSelectOrderAll();
        }
        //删除操作
        public static bool Delete(int OrdersID)
        {
            return DALOrder.Delete(OrdersID);
        }
    }
}
