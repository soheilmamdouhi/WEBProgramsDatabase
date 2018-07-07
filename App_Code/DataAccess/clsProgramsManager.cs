using System;
using System.Collections.Generic;
using System.Web;
using System.Data;

/// <summary>
/// Summary description for clsProgramsManager
/// </summary>
public class clsProgramsManager
{
    public static void Insert(clsPrograms objPrograms)
    {
        String strSQL = "EXEC dbo.xp_Insert '" + objPrograms.strName + "', '" + objPrograms.strVersion + "', '" + objPrograms.strCatName + "', '" + objPrograms.strAddress + "', '" + objPrograms.strCrackType + "', '" + objPrograms.strSerialNo + "', '" + objPrograms.strPlatform + "'";

        clsDBMS objDBMS = new clsDBMS();

        objDBMS.ExecuteSQL(strSQL);
    }

    public static void Update(clsPrograms objPrograms)
    {
        String strSQL = "EXEC dbo.xp_Update " + objPrograms.strID + ", '" + objPrograms.strName + "', '" + objPrograms.strVersion + "', '" + objPrograms.strCatName + "', '" + objPrograms.strAddress + "', '" + objPrograms.strCrackType + "', '" + objPrograms.strSerialNo + "', '" + objPrograms.strPlatform + "'";

        clsDBMS objDBMS = new clsDBMS();

        objDBMS.ExecuteSQL(strSQL);
    }

    public static void Delete(clsPrograms objPrograms)
    {
        String strSQL = "EXEC dbo.xp_Delete " + objPrograms.strID + "";

        clsDBMS objDBMS = new clsDBMS();

        objDBMS.ExecuteSQL(strSQL);
    }

    public static void PackAddress(clsPrograms objPrograms, String strMinID, String strMaxID)
    {
        String strSQL = "EXEC dbo.xp_PackAddress " + strMinID + ", " + strMaxID + ", '" + objPrograms.strAddress + "'";

        clsDBMS objDBMS = new clsDBMS();

        objDBMS.ExecuteSQL(strSQL);
    }

    public static DataTable Search(clsPrograms objPrograms)
    {
        String strSQL = "EXEC dbo.xp_Search";

        if ((objPrograms.strName == null) && (objPrograms.strPlatform == null))
        {
            strSQL = "EXEC dbo.xp_Search";
        }
        else if ((objPrograms.strName == null) && (objPrograms.strPlatform != null))
        {
            strSQL = "EXEC dbo.xp_Search NULL, '%" + objPrograms.strPlatform + "%'";
        }
        else if ((objPrograms.strName != null) && (objPrograms.strPlatform == null))
        {
            strSQL = "EXEC dbo.xp_Search '%" + objPrograms.strName + "%', NULL";
        }
        else if ((objPrograms.strName != null) && (objPrograms.strPlatform != null))
        {
            strSQL = "EXEC dbo.xp_Search '%" + objPrograms.strName + "%', '%" + objPrograms.strPlatform + "%'";
        }

        clsDBMS objDBMS = new clsDBMS();

        return objDBMS.ExecuteSelectSQL(strSQL);
    }

    public static DataTable Select()
    {
        String strSQL = "EXEC dbo.xp_Search";

        clsDBMS objDBMS = new clsDBMS();

        return objDBMS.ExecuteSelectSQL(strSQL);
    }

    public static String Counter()
    {
        String strSQL = "EXEC dbo.xp_Counter";

        clsDBMS objDBMS = new clsDBMS();
        DataTable objProgsCount = new DataTable();

        objProgsCount = objDBMS.ExecuteSelectSQL(strSQL);

        return objProgsCount.Rows[0][0].ToString();
    }
}