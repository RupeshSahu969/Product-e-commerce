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


using System.Data.Common;



public partial class Admin_AddCategory : System.Web.UI.Page
{
    DbCon d;

    OleDbConnection conn = new OleDbConnection();
       

    protected void Page_Load(object sender, EventArgs e)
    {
        d = new DbCon();

        if (Session["userEmail"] == null)
        {
            if(!IsPostBack)
            {


            }
        }
        else
        {
            Response.Redirect("Login.aspx");
        }

    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        String Cname,qry;

        Cname = txtCategory.Text;

        OleDbCommand cmd = new OleDbCommand();

        qry= "insert into table2 Cname='" + Cname + "'";
        Response.Write(qry);

        d.cmd.CommandText = qry;
        //d.cmd.ExecuteNonQuery();
       // d.dr.Close();

        Response.Write("<script>alert('Added success');</script>");
        BindingGridview();
        txtCategory.Text = String.Empty;
        txtCategory.Focus();


    }
    private void BindingGridview()
    {
        String Cname, qry;

        Cname = txtCategory.Text;

        OleDbCommand cmd = new OleDbCommand();

        qry = "select * from table2";

        OleDbDataAdapter da = new OleDbDataAdapter(cmd);

        GridView1.DataBind();

        
    }
}