using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Linq;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for jobs
/// </summary>
public class clientJob
{
    public clientJob()
    {
        //
        // TODO: Add constructor logic here
        //
    }
    static public IQueryable<job> gettodayjobs()
    {
        DataClassesDataContext database = new DataClassesDataContext();
        IQueryable<job> jobs = (from x in database.jobs
                   // where x.date.Date == DateTime.Now.Date
                    select x);
        return jobs;
    }
    static public IQueryable<job> getJobByid(int id)
    {
        DataClassesDataContext database = new DataClassesDataContext();
        IQueryable<job> jobs = (from x in database.jobs
                                    where x.Id == id
                                select x);
        return jobs;
    }
   
    static public string applyJob(appliedJob k)
    {
        if (checkappliedjob(k.jobSeekerId, k.jobid) == true) {
            DataClassesDataContext Database = new DataClassesDataContext();
            Database.appliedJobs.InsertOnSubmit(k);
            try
            {
                Database.SubmitChanges();
            }
            catch (ChangeConflictException e)
            {
                //report error, log error whatever...
            }
           return "";
        }
        else
        {
            return "You have Already applied job";
        }

    }
    static public bool checkappliedjob(int seekerid,int jobid)
    {
       
        try
        {
            DataClassesDataContext db = new DataClassesDataContext();
            int result = (from x in db.appliedJobs
                          where x.jobSeekerId == seekerid && x.jobid == jobid
                          select x).Count();
            if (result >= 1)
            {
                return false;
            }
            else
            {
                return true;
            }
        }
        catch (ChangeConflictException e)
        {
           return  false;
            //report error, log error whatever...
        }

    }
}