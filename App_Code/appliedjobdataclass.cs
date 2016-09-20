using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// by waqas khan 
/// get applied job and job detail 
/// </summary>
public class appliedjobdataclass
{
    public int app_id;
    public int app_jobSeekerid;
    public int app_jobid;
    public DateTime app_applydate;
    public int job_id;
    public int job_rid;
    public string job_jobtitle;
    public string job_decription;
    public string job_expecredsalary;
    public DateTime job_posteddate;
    public string job_country;
    public string job_city;
    public string job_jobcatagory;
    public string job_salaryperiod;
    public DateTime job_lastdatetoApply;
    public string job_mineducation;
    public string job_minexperiance;
    public string job_specificrequirment;
    public byte[] logo;//should be change if not worknig with admin
    public appliedjobdataclass()
    {
                  app_id=0;
                  app_jobSeekerid=0;
                  app_jobid=0;
                  app_applydate=DateTime.Now;
                  job_id=0;
                  job_rid=0;
                  job_jobtitle="";
                  job_decription = "";
                  job_expecredsalary = "";
                  job_posteddate =DateTime.Now;
                  job_country = "";
                  job_city = "";
                  job_jobcatagory = "";
                  job_salaryperiod = "";
                  job_lastdatetoApply = DateTime.Now;
                  job_mineducation = "";
                  job_minexperiance = "";
                  job_specificrequirment = "";
                  logo = null; 

     }
}