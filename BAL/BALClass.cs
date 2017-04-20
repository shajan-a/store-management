using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;
using DAL;
using DAL.Models;
using Microsoft.ApplicationInsights.Extensibility.Implementation;

namespace BAL
{
    public class BalClass
    {
        private static User _userdl = new User();
        public static int RegisterUser(Models.User user)
        {
            _userdl = BdtoTodto(user);
            return DalClass.RegisterUser(_userdl);
            //redirect to login page show status failed/success
        }

        public static int IsRegisteredUser(Models.User user)
        {
            _userdl = BdtoTodto(user);
            return DalClass.IsRegisteredUser(_userdl);
            //redirect user home

        }

        private static User BdtoTodto(Models.User user)
        {
            User userdto = new User();

            if (user != null)
            {
                userdto.UserName = user.UserName;
                userdto.GenderId = user.GenderId;
                userdto.Mobile = user.Mobile;
                userdto.Password = user.Password;

            }

            return userdto;
        }
    }
}