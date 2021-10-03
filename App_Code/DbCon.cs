using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.OleDb;
using System.Configuration;

/// <summary>
/// Summary description for DbCon
/// </summary>
public class DbCon
{
    public OleDbConnection conn;
    public OleDbCommand cmd;
    public OleDbDataReader dr;


	public DbCon()
	{
		//
		// TODO: Add constructor logic here
		//

        conn = new OleDbConnection();
        conn.ConnectionString = ConfigurationManager.ConnectionStrings["Database1"].ToString();
        conn.Open();


        cmd = new OleDbCommand();
        cmd.Connection = conn;
	}
}