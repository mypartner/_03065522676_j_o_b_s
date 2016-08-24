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
    static public void addJob(job k)
    {
        DataClassesDataContext Database = new DataClassesDataContext();
        Database.jobs.InsertOnSubmit(k);
        try
        {
            Database.SubmitChanges();
        }
        catch (ChangeConflictException e)
        {
            //report error, log error whatever...
        }

    }
    static public void applyJob(appliedJob k)
    {
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

    }
    static public IQueryable<appliedJob> getAppliedJobs(int id)
    {
        DataClassesDataContext database = new DataClassesDataContext();
        IQueryable<appliedJob> appliedjob = (from x in database.appliedJobs
                                                where x.jobSeekerId == id
                                             select x );
        return appliedjob;
    }
}