using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    DbCon d;
    protected void Page_Load(object sender, EventArgs e)
    {
        d = new DbCon();

    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        String email = txtEmail.Text;
        String password = txtpass.Text;

        d.cmd.CommandText = "select * from table1 where email='" + email + "' and password='" + password + "'";
        d.dr = d.cmd.ExecuteReader();

        if (d.dr.Read())
        {
            Session.Add("email",email);
            Session.Add("unm",d.dr[1]);

        }
        else
        {
            Label1.Text = "Enter User Id";

        }


    }
}