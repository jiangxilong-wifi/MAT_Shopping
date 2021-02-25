using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model
{
    //订单表
    public class MODOrder
    {
        //订单ID
        private int ordersID;
        //用户名
        private string userName;
        //商品名
        private string goodName;
        //购买时间
        private string time;
        //商品价格
        private double price;
        //购买数量
        private int ordersCount;
        //商品简介
        private string introduction;

        public int OrdersID { get => ordersID; set => ordersID = value; }
        public string UserName { get => userName; set => userName = value; }
        public string GoodName { get => goodName; set => goodName = value; }
        public string Time { get => time; set => time = value; }
        public double Price { get => price; set => price = value; }
        public int OrdersCount { get => ordersCount; set => ordersCount = value; }
        public string Introduction { get => introduction; set => introduction = value; }
    }
}
