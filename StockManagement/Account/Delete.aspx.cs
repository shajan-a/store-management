﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StockManagement.Account
{
    public partial class Delete : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Purge_Click(object sender, EventArgs e)
        {
            Purge.PostBackUrl = "~/Account/Store.aspx";
        }
    }
}