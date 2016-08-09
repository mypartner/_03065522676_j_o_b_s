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
                                    where x.id == id
                                select x);
        return jobs;
    }
    static public void addJob()
    {
        DataClassesDataContext Database = new DataClassesDataContext();
        job k = new job();
        k.userId = 8;//int.Parse(HttpContext.Current.Session["loginId"].ToString());
        k.jobTitle = "xyz";
        k.description= "this is first job";
        k.expectedSalary="2000";
        k.date=System.DateTime.Now;
        k.address="pakistan    ";
        k.type="monthly";
        k.jobType="computer science";
        k.salaryPeriod= "monthly";
        k.experience = "2 years";
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
}