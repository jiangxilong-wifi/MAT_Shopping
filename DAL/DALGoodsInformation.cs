using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model;
using System.Data;
namespace DAL
{
    public class DALGoodsInformation
    {
        //查询所有商品信息
        public static List<MODGoodsInformation> DALSelectGoodsInformationAll()
        {
            string sqlGoodsInformation = string.Format("select * from Goods,MaxType where Goods.MaxTypeID=MaxType.MaxTypeID");
            DataTable dt = DBHelper.GetDataTable(sqlGoodsInformation);
            //实例化泛型集合
            List<MODGoodsInformation> listGoodsInformation = new List<MODGoodsInformation>();
            //模型类获取值
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                //实例化模型类
                MODGoodsInformation goods = new MODGoodsInformation();
                goods.GoodsID = int.Parse(dt.Rows[i][0].ToString());
                goods.GoodName = dt.Rows[i][1].ToString();
                goods.GoodsTypeName = dt.Rows[i][7].ToString();
                goods.Price = double.Parse(dt.Rows[i][3].ToString());
                //goods.Count = int.Parse(dt.Rows[i][4].ToString());
                //填充
                listGoodsInformation.Add(goods);
            }
            return listGoodsInformation;
        }
        //删除商品操作
        public static bool Delete(int GoodsID)
        {
            string sql = string.Format("delete from Goods where GoodsID='{0}'", GoodsID);
            return DBHelper.ExecuteNonQuery(sql);
        }
    }
}
