using System;
using System.Collections.Generic;
using System.Data.Linq;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for recruiter
/// </summary>
public class recruiterclass
{
    public recruiterclass()
    {
        //
        // TODO: Add constructor logic here
        //
    }
    public static void recruiterSignUp(recruiter u)
    {
        DataClassesDataContext Database = new DataClassesDataContext();
        Database.recruiters.InsertOnSubmit(u);
        try
        {
            Database.SubmitChanges();
        }
        catch (ChangeConflictException e)
        {
            //report error, log error whatever...
        }


    }
}