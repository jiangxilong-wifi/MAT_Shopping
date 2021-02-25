using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model;
using DAL;
namespace BLL
{
    public class BLLGoodsInformation
    {
        //查询所有用户信息
        public static List<MODGoodsInformation> BLLSelectGoodsInformationAll()
        {
            //查询用户信息
            return DALGoodsInformation.DALSelectGoodsInformationAll();
        }
        //删除操作
        public static bool Delete(int GoodsID)
        {
            return DALGoodsInformation.Delete(GoodsID);
        }
    }
}
