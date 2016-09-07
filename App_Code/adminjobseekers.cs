using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for adminjobseekers
/// </summary>
public class adminjobseekers
{
    public adminjobseekers()
    {
        //
        // TODO: Add constructor logic here
        //
    }
    public static IQueryable<jobSeeker> getjobseekers()
    {
        DataClassesDataContext db = new DataClassesDataContext();
        IQueryable<jobSeeker> data = from x in db.jobSeekers
                                     select x;
        return data;
    }
}