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
    public static appliedjobdataclass[] getappliedjob(int jobid)
    {


        try
        {
            DataClassesDataContext db = new DataClassesDataContext();

            var result = from apjob in db.appliedJobs
                         join jdetail in db.jobs on apjob.jobid equals jdetail.Id
                         join recruiterdetail in db.recruiters on jdetail.rId equals recruiterdetail.Id
                         where apjob.jobSeekerId == jobid
                         select new { appliedjob = apjob, jobdetail = jdetail,recruiterdetail.logo};

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
                appliedjobdetail[i].job_city = x.jobdetail.city;
                appliedjobdetail[i].job_jobcatagory = x.jobdetail.jobCatagory;
                appliedjobdetail[i].job_salaryperiod = x.jobdetail.salaryPeriod;
                appliedjobdetail[i].job_lastdatetoApply = x.jobdetail.lastDateToApply;
                appliedjobdetail[i].job_mineducation = x.jobdetail.minimumEducation;
                appliedjobdetail[i].job_minexperiance = x.jobdetail.minimumLevelOfExperience;
                appliedjobdetail[i].job_specificrequirment = x.jobdetail.specificRequirement;
                appliedjobdetail[i].logo = x.logo.ToArray();



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