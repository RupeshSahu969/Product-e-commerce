using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Configuration;
using System.IO;
using System.ComponentModel;

public partial class Admin_Login : System.Web.UI.Page
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
            Session.Add("email", email);
            Session.Add("unm", d.dr[1]);
            Response.Write("<script>alert('Login Success');</script>");
            Response.Redirect("Home1.aspx");

        }
        else
        {
            Response.Write("<script>alert('Invalid login.....error');</script>");
            Response.Redirect("~/Default.aspx");


        }

    }
}