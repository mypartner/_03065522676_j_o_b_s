using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for adminjobseekerjobs
/// </summary>
public class adminjobseekerjobs
{
    public adminjobseekerjobs()
    {
        //
        // TODO: Add constructor logic here
        //
    }
    public static IQueryable<job> getAlljobs()
    {
        DataClassesDataContext db = new DataClassesDataContext();
        IQueryable<job> j = from x in db.jobs
                            select x;
        return j;
                         
    }
    public static int getjobapplieronjob(int jobid)
    {
        DataClassesDataContext db = new DataClassesDataContext();
        int cout = (from x in db.appliedJobs
                    where x.jobid==jobid
                            select x).Count();
        return cout;

    }
}