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
    public partial class Delete : System.Web.UI.Page
    {
        private readonly Record _record = new Record();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Purge_Click(object sender, EventArgs e)
        {
            _record.UserName = Label6.Text;
            _record.LstItems = new List<Items>
            {
                new Items
                {
                    Item = Label7.Text,
                    Stock = 123
                }
            };
            _record.Count = Convert.ToInt32(Label8.Text);
            _record.DeptId = Convert.ToInt32(Label9.Text);
            _record.RoleId = Convert.ToInt32(Label10.Text);
            try
            {
                DeleteEntry(_record);
            }
            catch (Exception)
            {
                throw;
            }
            finally
            {
            Purge.PostBackUrl = "~/Account/Store.aspx";
            }
        }

        private void DeleteEntry(Record record)
        {
            BalClass.DeleteEntry(record);
        }
    }
}