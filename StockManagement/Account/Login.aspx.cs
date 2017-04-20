using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BAL;
using BAL.Models;

namespace StockManagement.Account
{
    public partial class Login : System.Web.UI.Page
    {
        private int _isLoggedIn;
        private readonly User _user = new User();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Signin_Click(object sender, EventArgs e)
        {
            _user.UserName = TextBox1.Text;
            _user.Password = TextBox2.Text;
            IsRegisteredUser(_user);
        }

        private void IsRegisteredUser(User user)
        {
            if (user != null)
            {
                _isLoggedIn = BalClass.IsRegisteredUser(user);

                if (_isLoggedIn != 1)
                {
                    Signin.PostBackUrl = "~/Account/Register.aspx";
                }

                Signin.PostBackUrl = "~/Account/Manage.aspx";

            }
        }
    }
}