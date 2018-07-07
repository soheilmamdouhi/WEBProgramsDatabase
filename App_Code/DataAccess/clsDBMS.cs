using System;
using System.Collections.Generic;
using System.Text;
using System.Data;
using System.Data.SqlClient;

public class clsDBMS
{
    SqlConnection objSqlConnection;
    SqlCommand objSqlCommand;

    public clsDBMS()
    {
        objSqlConnection = new SqlConnection();
        objSqlCommand = new SqlCommand();
        
        objSqlCommand.Connection = objSqlConnection;
        objSqlConnection.ConnectionString = "Data Source=127.0.0.1,1433;Initial Catalog=dbProgramsDatabase;User ID=sa;Password=metaldevil";
    }

    public void ExecuteSQL(String strSQL)
    {
        objSqlCommand.CommandText = strSQL;

        objSqlConnection.Open();
        objSqlCommand.ExecuteNonQuery();
        objSqlConnection.Close();
    }

    public DataTable ExecuteSelectSQL(String strSQL)
    {
        objSqlCommand.CommandText = strSQL;

        SqlDataAdapter objSqlDataAdapter = new SqlDataAdapter(objSqlCommand);
        DataTable objDataTable = new DataTable();

        objSqlDataAdapter.Fill(objDataTable);

        return objDataTable;
    }
}