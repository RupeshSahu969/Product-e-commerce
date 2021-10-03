using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.IO;
using System.Configuration;

public partial class Signup : System.Web.UI.Page
{
    DbCon d;
    protected void Page_Load(object sender, EventArgs e)
    {
        d = new DbCon();
    }
    protected void btnSignup_Click(object sender, EventArgs e)
    {
        String name, surname, password, pincode, email, address, mobile, city, gender,date, qry;


        name = txtName.Text;
        surname = txtSurname.Text;
        email = txtEmail.Text;
        mobile = txtMobile.Text;
        city = txtCity.Text;
        pincode = txtPincode.Text;
        gender= DropDownList1.Text;
        address= txtAdress.Text;
        password= txtpass.Text;
        date = txtDate.Text;

        
        //d.cmd.CommandText = "select * from table1 where name='" + name + "'";
        //d.dr = d.cmd.ExecuteReader();

        //if (d.dr.Read())
        //{
        //    Label1.Text = "Already exits";
        //    d.dr.Close();
        //}
        //else
        //{
            //d.dr.Close();
            qry = "insert into Table1(name,surname,email,address,mobile,password,city,gender,pincode,dt) ";
            qry=qry+"VALUES('" + name + "','" + surname + "','" + email + "','" + address + "','" + mobile + "',";
            qry=qry+"'" + password + "','" + city + "','" + gender + "','" + pincode + "','" + date + "')";

            Response.Write(qry);
            d.cmd.CommandText = qry;
            //d.cmd.ExecuteNonQuery();
            Label1.Text = "sucess!!!!!";
        //}
        
    }
}