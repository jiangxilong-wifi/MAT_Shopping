using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model
{
    //用户表
    public class MODCustomer
    {
        //用户ID
        private int userID;
        //用户姓名
        private string userName;
        //用户登录名
        private string login;
        //用户登录密码
        private string pwd;
        //用户地址
        private string address;
        //用户手机号
        private string phone;
        //用户邮箱
        private string email;

        //封装字段属性
        public int UserID { get => userID; set => userID = value; }
        public string UserName { get => userName; set => userName = value; }
        public string Login { get => login; set => login = value; }
        public string Pwd { get => pwd; set => pwd = value; }
        public string Address { get => address; set => address = value; }
        public string Phone { get => phone; set => phone = value; }
        public string Email { get => email; set => email = value; }
    }
}
