using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for adminrecruiterjobs
/// </summary>
public class adminrecruiterjobs
{
    public adminrecruiterjobs()
    {
        //
        // TODO: Add constructor logic here
        //
    }
    public static byte[] getlogo(int jobid)
    {
        byte[] img=null;
        DataClassesDataContext db = new DataClassesDataContext();
        var x = (from y in db.appliedJobs
                join j in db.jobs on y.jobid equals j.Id
                join r in db.recruiters on j.rId equals r.Id
                where j.Id == jobid
                select r).First() ;
            img = x.logo.ToArray();
        return img;
    }
}