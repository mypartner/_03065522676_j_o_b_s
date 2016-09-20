using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.Linq;
using System.Linq;
using System.Web;
using System.Data;

/// <summary>
/// Summary description for login
/// </summary>
public class jobseekerclass
{
    public jobseekerclass()
    {
        //
        // TODO: Add constructor logic here
        //
    }
    public static void signUpJobSeeker(jobSeeker u)
    {
        DataClassesDataContext Database = new DataClassesDataContext();
        Database.jobSeekers.InsertOnSubmit(u);
        try
        {
            Database.SubmitChanges();
        }
        catch (ChangeConflictException e)
        {
            //report error, log error whatever...
        }


    }
    public static int userAuthentication(string uname, string password)
    {

        int returnid =0;
        try
        {
            DataClassesDataContext Database = new DataClassesDataContext();

            var q = (from a in Database.GetTable<jobSeeker>()
                     where a.username == uname && a.password == password
                     select new
                     {
                         a.username,
                         a.id
                     }).First();
            int x = q.id;
           if (x>0)
            {
                returnid =q.id;
            }
           

        }
        catch (Exception e)
        {
            string str = e.Message.ToString();
        }
        return returnid;
    }
    public static int getSeekerID(string uname)
    {

        int returnid = 0;
        try
        {
            DataClassesDataContext Database = new DataClassesDataContext();

            var q = (from a in Database.GetTable<jobSeeker>()
                     where a.username == uname
                     select new
                     {
                         a.username,
                         a.id
                     }).First();
            int x = q.id;
            if (x > 0)
            {
                returnid = q.id;
            }


        }
        catch (Exception e)
        {

        }
        return returnid;
    }
    public static jobSeeker getjobseekerdata(int seekerid)
    {
        DataClassesDataContext db = new DataClassesDataContext();
        jobSeeker js = (from x in db.jobSeekers
                        where x.id == seekerid
                        select x).First();
        return js;
    }
    public static appliedjobdataclass[] getappliedjob(int  jobid)
    {
       
       
        try
        {
            DataClassesDataContext db = new DataClassesDataContext();

            var result = from apjob in db.appliedJobs
                         join jdetail in db.jobs on apjob.jobid equals jdetail.Id
                         where apjob.jobSeekerId == jobid
                         select new { appliedjob = apjob, jobdetail = jdetail};

            int count = result.Count();
            appliedjobdataclass[] appliedjobdetail = new appliedjobdataclass[count];
            int i = 0;
            foreach (var x in result)
            {
                appliedjobdetail[i] = new appliedjobdataclass();
                appliedjobdetail[i].app_id = x.appliedjob.Id;
                appliedjobdetail[i].app_jobSeekerid = x.appliedjob.jobSeekerId;
                appliedjobdetail[i].app_jobid = x.appliedjob.jobid;
                appliedjobdetail[i].app_applydate = x.appliedjob.date;
                appliedjobdetail[i].job_id = x.jobdetail.Id;
                appliedjobdetail[i].job_rid = x.jobdetail.rId;
                appliedjobdetail[i].job_jobtitle = x.jobdetail.jobTitle;
                appliedjobdetail[i].job_decription = x.jobdetail.description;
                appliedjobdetail[i].job_expecredsalary = x.jobdetail.expectedSalary;
                appliedjobdetail[i].job_posteddate = x.jobdetail.postedDate;
                appliedjobdetail[i].job_country = x.jobdetail.country;
                appliedjobdetail[i].job_city = x.jobdetail.city ;
                appliedjobdetail[i].job_jobcatagory = x.jobdetail.jobCatagory;
                appliedjobdetail[i].job_salaryperiod = x.jobdetail.salaryPeriod;
                appliedjobdetail[i].job_lastdatetoApply = x.jobdetail.lastDateToApply;
                appliedjobdetail[i].job_mineducation = x.jobdetail.minimumEducation;
                appliedjobdetail[i].job_minexperiance = x.jobdetail.minimumLevelOfExperience;
                appliedjobdetail[i].job_specificrequirment = x.jobdetail.specificRequirement;
                


                i++;

            }
            return appliedjobdetail;
        }
        catch (Exception e)
        {
            string str = e.Message.ToString();
            return null;
        }
      
    }
}