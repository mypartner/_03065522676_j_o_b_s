using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Linq;
using System.Drawing;
using System.IO;
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
    static public IQueryable<appliedJob> getAppliedJobs(int id)
    {
        DataClassesDataContext database = new DataClassesDataContext();
        IQueryable<appliedJob> appliedjob = (from x in database.appliedJobs
                                                where x.jobSeekerId == id
                                             select x );
        return appliedjob;
    }
    public static jobsapplierclass[] getjobappler(int jobid)
    {
        DataClassesDataContext db = new DataClassesDataContext();
        var data = from apjob in db.GetTable<appliedJob>()
                   join jseeker in db.jobSeekers on apjob.jobSeekerId equals jseeker.id
                   where apjob.jobid == jobid
                   select new { appliedJob = apjob, jobSeeker = jseeker };

        jobsapplierclass[] jobsapplied = new jobsapplierclass[data.Count()];
        int i = 0;
        foreach (var x in data)
        {
            jobsapplied[i] = new jobsapplierclass();
            jobsapplied[i].ap_date =x.appliedJob.date;
            jobsapplied[i].ap_jobid = x.appliedJob.jobid;
            jobsapplied[i].ap_jobseekerid = x.appliedJob.jobSeekerId;
            jobsapplied[i].ap_id = x.appliedJob.Id;
            jobsapplied[i].js_firstname = x.jobSeeker.firstName;
            jobsapplied[i].js_lastname = x.jobSeeker.lastName;
            if (x.jobSeeker.cv != null)
            {
                jobsapplied[i].js_cv = x.jobSeeker.cv.ToArray();
            }
            jobsapplied[i].js_mobile = x.jobSeeker.mobile;
            jobsapplied[i].js_email = x.jobSeeker.email;
            jobsapplied[i].js_sex = x.jobSeeker.sex;
            jobsapplied[i].js_education = x.jobSeeker.education;
            jobsapplied[i].js_country = x.jobSeeker.country;
            jobsapplied[i].js_dob = x.jobSeeker.dob;
            if (x.jobSeeker.image != null)
            {
                jobsapplied[i].js_image = x.jobSeeker.image.ToArray();
            }
            i++;
        }
        return jobsapplied;
       
    }
  
}