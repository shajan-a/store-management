using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;
using DAL.Models;

namespace DAL
{
    public class DalClass
    {
        public static int RegisterUser(User user)
        {
            
                //ado.net
                //SqlConnectionStringBuilder df = new SqlConnectionStringBuilder();
                //SqlConnection con = new SqlConnection("data source=.; database = shajan; integrated security = false");
                string cs = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
                using (SqlConnection con = new SqlConnection(cs))
                {
                    SqlCommand cmd = new SqlCommand("sp_UserRegistration", con);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@userName", user.UserName);
                    cmd.Parameters.AddWithValue("@genderId", Convert.ToInt32(user.GenderId));
                    cmd.Parameters.AddWithValue("@mobile", Convert.ToInt32(user.Mobile));
                    cmd.Parameters.AddWithValue("@password", user.Password);
                    cmd.Parameters.AddWithValue("@isDeleted", 0);
                    con.Open();
                    return cmd.ExecuteNonQuery();
                }
                //Data Source=SHAJAN-PC;Initial Catalog=devdatabase;Persist Security Info=True;User ID=shajan;Password=dev
                //SqlCommand cmd = new SqlCommand("sp_RegisterUser",con);

                //cmd.CommandType = CommandType.StoredProcedure;
        }

        public static int IsRegisteredUser(User user)
        {
            string cs = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            using (SqlConnection con = new SqlConnection(cs))
            {
                SqlCommand cmd = new SqlCommand("sp_IsUserRegistered", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@userName", user.UserName);
                cmd.Parameters.AddWithValue("@password", user.Password);
                con.Open();
                return cmd.ExecuteNonQuery();
            }
        }
    }
}