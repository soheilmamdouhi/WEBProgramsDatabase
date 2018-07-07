using System;
using System.Collections.Generic;
using System.Web;

/// <summary>
/// Summary description for clsPrograms
/// </summary>
public class clsPrograms
{
    public String strID;
    private String _strName;
    public String strVersion;
    public String strCatName;
    public String strAddress;
    public String strCrackType;
    public String strSerialNo;
    public String strPlatform;

    public String strName
    {
        set
        {
            String strNameValue = value.ToString();

            if ((strNameValue == "") || (strNameValue.Equals(String.Empty)) || (strNameValue.Length == 0))
            {
                throw new Exception("Please enter programs name.");
            }
            else
            {
                _strName = strNameValue;
            }
        }
        get
        {
            return _strName;
        }
    }
}