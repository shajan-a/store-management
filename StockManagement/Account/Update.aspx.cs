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
    public partial class Update : System.Web.UI.Page
    {
        readonly Record _record = new Record();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Change_Click(object sender, EventArgs e)
        {
            _record.UserName = TextBox1.Text;
            _record.LstItems = new List<Items>
            {
                new Items
                {
                    Item = TextBox2.Text,
                    Stock = 123
                }
            };
            _record.Count = Convert.ToInt32(TextBox3.Text);
            _record.DeptId = Convert.ToInt32(TextBox4.Text);
            _record.RoleId = Convert.ToInt32(TextBox5.Text);
            try
            {
                UpdateEntry(_record);
            }
            catch (Exception)
            {
                throw;
            }
            finally
            {
            Change.PostBackUrl = "~/Account/Store.aspx";
            }
        }

        private void UpdateEntry(Record record)
        {
            BalClass.UpdateEntry(record);
        }
    }
}