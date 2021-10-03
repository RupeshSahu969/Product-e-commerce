using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data;
using System.Configuration;
using System.IO;
using System.Text;
using System.ComponentModel;


public partial class Admin_Additem : System.Web.UI.Page
{
    DbCon d;

    protected void Page_Load(object sender, EventArgs e)
    {
        d = new DbCon();

        if (Session["userEmail"] == null)
        {
            if (!IsPostBack)
            {


            }
        }
        else
        {
            Response.Redirect("Login.aspx");
        }



    }
    protected void btnAddItem_Click(object sender, EventArgs e)
    {
        if (IsFormValidate())
        {
            FileUpload1.SaveAs(Server.MapPath("~/img/") + FileUpload1.FileName);
            FileUpload2.SaveAs(Server.MapPath("~/img/") + FileUpload2.FileName);
            FileUpload3.SaveAs(Server.MapPath("~/img/") + FileUpload3.FileName);

            String iname, detail, price, image1, image2, image3, size, qnt, qry;
            iname = txtname.Text;
            detail = txtDesc.Text;
            price = txtPrice.Text;
            qnt = txtQty.Text;
            size = ddlSize.Text;
            image1 = FileUpload1.FileName;
            image2 = FileUpload2.FileName;
            image3 = FileUpload3.FileName;

            
         qry = "insert into Table3(iname,detail,price,image1,image2,image3,size,qnt,) VALUES('" + iname + "','" + detail + "','" + price + "','" + image1 + "','" + image2 + "','" + image3 + "','" + size + "','" + qnt + "')";

            //Response.Write(qry);
            d.cmd.CommandText = qry;
             d.cmd.ExecuteNonQuery();
          
            

            

        }
        else
        {
            Response.Write("<script>alert('Validation Error');</script>");

        }
        

    }
    private bool IsFormValidate()
    {
        if (txtname.Text == String.Empty)
        {
            Response.Write("<script>alert('Item name is REquired');</script>");
            txtname.Text = String.Empty;
            txtname.Focus();
            return false;
        }
        if (txtDesc.Text == String.Empty)
        {
            Response.Write("<script>alert('Desc  is REquired');</script>");
            txtDesc.Text = String.Empty;
            txtDesc.Focus();
            return false;
        }
        if (txtPrice.Text == String.Empty)
        {
            Response.Write("<script>alert('Quantity is REquired');</script>");
            txtPrice.Text = String.Empty;
            txtPrice.Focus();
            return false;
        }
        if (ddlCategory.SelectedItem.Text=="")
        {
            Response.Write("<script>alert('Category is REquired');</script>");
            
            ddlCategory.Focus();
            return false;
        }
        if (ddlSize.SelectedIndex == -1)
        {


            Response.Write("<script>alert('Size is REquired');</script>");

            ddlSize.Focus();
            return false;
        }
             


        return true;

    }

    private String GetConnectionString()
    {
        
        return System.Configuration.ConfigurationManager.ConnectionStrings["Database1"].ToString();
        
    }
    private void BindCategory()
    {
        String Cname,CID ;

        //Cname = txtnmae.Text;

        OleDbConnection conn = new OleDbConnection(GetConnectionString());

        OleDbCommand cmd = new OleDbCommand();

        String  qry = "select distinct CID, CName from table3";

        if(d.dr.Read())
        {
            ddlCategory.DataTextField = "Cname";
            ddlCategory.DataTextField = "CID";
            ddlCategory.DataBind();


        }
        else
        {
            ddlCategory.DataSource = null;
            ddlCategory.DataBind();
        }
        
        

    }

}