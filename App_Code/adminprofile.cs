using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for adminprofile
/// </summary>
public class adminprofile
{
    public adminprofile()
    {
        //
        // TODO: Add constructor logic here
        //
    }
    public static AdminTable getInfo()
    {
        DataClassesDataContext db = new DataClassesDataContext();
        AdminTable profile = (from x in db.AdminTables
                               select x).First();
        return profile;
    }
}