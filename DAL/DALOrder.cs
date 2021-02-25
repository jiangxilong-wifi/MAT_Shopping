using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model;
using System.Data;
namespace DAL
{
    public class DALOrder
    {
        //查询所有订单
        public static List<MODOrder> DALSelectOrderAll()
        {
            string sqlOrder = string.Format("select Orders.OrdersID,Customer.UserName,Goods.GoodName,Orders.Time,(Orders.OrdersCount*Goods.Price)Price,Orders.OrdersCount,Orders.Introduction from Orders,Customer,Goods where Orders.UserID=Customer.UserID and Orders.GoodsID=Goods.GoodsID");
            DataTable dt = DBHelper.GetDataTable(sqlOrder);
            //实例化泛型集合
            List<MODOrder> listOrder = new List<MODOrder>();
            //模型类获取值
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                //实例化模型类
                MODOrder order = new MODOrder();
                order.OrdersID = int.Parse(dt.Rows[i][0].ToString());
                order.UserName = dt.Rows[i][1].ToString();
                order.GoodName = dt.Rows[i][2].ToString();
                order.Time= dt.Rows[i][3].ToString();
                order.Price = double.Parse(dt.Rows[i][4].ToString());
                order.OrdersCount= int.Parse(dt.Rows[i][5].ToString());
                order.Introduction = dt.Rows[i][6].ToString();
                //填充
                listOrder.Add(order);
            }
            return listOrder;
        }
        //删除操作
        public static bool Delete(int OrdersID)
        {
            string sql = string.Format("delete from Orders where OrdersID='{0}'", OrdersID);
            return DBHelper.ExecuteNonQuery(sql);
        }
    }
}
