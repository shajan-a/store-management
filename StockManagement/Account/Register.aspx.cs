using System;
using System.Linq;
using System.Web;
using System.Web.UI;
using BAL;
using BAL.Models;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using Owin;
using StockManagement.Models;

namespace StockManagement.Account
{
    public partial class Register : System.Web.UI.Page
    {
        private int _isSuccess;
        public readonly User FormUser = new User();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CreateUser_Click(object sender, EventArgs e)
        {
            FormUser.UserName = Username.Text;
            FormUser.GenderId = DropDownList1.Text;
            FormUser.Mobile = Mobile.Text;
            FormUser.Password = Password.Text;
            RegisterUser(FormUser);
        }

        private void RegisterUser(User user)
        {
            if (user != null)
            {
                _isSuccess = BalClass.RegisterUser(user);

                if (_isSuccess != 1)
                {
                    Submit.PostBackUrl = "~/Register.aspx";
                }

                Submit.PostBackUrl = "~/Default.aspx";
            }
        }
    }
}