using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model
{
    public class MODGoodsInformation
    {
        //商品ID
        private int goodsID;
        //商品名称
        private string goodName;
        //商品类型名称
        private string goodsTypeName;
        //商品价格
        private double price;
        //商品库存
        private int count;

        public int GoodsID { get => goodsID; set => goodsID = value; }
        public string GoodName { get => goodName; set => goodName = value; }
        public string GoodsTypeName { get => goodsTypeName; set => goodsTypeName = value; }
        public double Price { get => price; set => price = value; }
        public int Count { get => count; set => count = value; }
    }
}
