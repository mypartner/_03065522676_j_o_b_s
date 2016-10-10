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
        var x = (from y in db.jobs
                //join j in db.jobs on y.jobid equals j.Id
                join r in db.recruiters on y.rId equals r.Id
                where y.Id == jobid
                select r).First() ;
            img = x.logo.ToArray();
        return img;
    }
    //getting job id
   
    public static job getJobDetail(int jobId)
    {
        DataClassesDataContext db = db = new DataClassesDataContext();
        job ra = (from x in db.jobs
                                    where x.Id == jobId
                                    select x).First();
        return ra;
    }
}