using System;
using System.Collections.Generic;
using System.Web;
using System.Data;
using System.Data.SqlClient;

public class clsCategoriesManager
{
    public static DataTable Select()
    {
        try
        {
            String strSQL = "SELECT * FROM tblCategories;";

            clsDBMS objDBMS = new clsDBMS();

            return objDBMS.ExecuteSelectSQL(strSQL);
        }
        catch (Exception ex)
        {
            throw new Exception(clsUtilities.GetErr(ex.Message.ToString()));
        }
    }
}