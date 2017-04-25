using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StockManagement.Account
{
    public partial class Store : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Create_Click(object sender, EventArgs e)
        {
            Create.PostBackUrl = "~/Account/Create.aspx";
        }

        protected void Update_Click(object sender, EventArgs e)
        {
            Update.PostBackUrl = "~/Account/Update.aspx";
        }

        protected void Delete_Click(object sender, EventArgs e)
        {
            Delete.PostBackUrl = "~/Account/Delete.aspx";
        }
    }
}