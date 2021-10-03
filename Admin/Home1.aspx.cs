using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class Admin_Home1 : System.Web.UI.Page
{
    DbCon d;
    protected void Page_Load(object sender, EventArgs e)
    {
        d = new DbCon();

        if(Session["userEmail"]==null)
        {
            Label1.Text = Session["userEmail"].ToString();
        }
    }
}