using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model
{
    //用户表
    public  class MODCustomer
    {
        //用户ID
        private static int userID;
        //用户姓名
        private static string userName;
        //用户登录名
        private static string login;
        //用户登录密码
        private static string pwd;
        //用户地址
        private static string address;
        //用户手机号
        private static string phone;
        //用户邮箱
        private static string email;

        //封装字段属性
        public static int UserID { get => userID; set => userID = value; }
        public static string UserName { get => userName; set => userName = value; }
        public static string Login { get => login; set => login = value; }
        public static string Pwd { get => pwd; set => pwd = value; }
        public static string Address { get => address; set => address = value; }
        public static string Phone { get => phone; set => phone = value; }
        public static string Email { get => email; set => email = value; }
    }
}
