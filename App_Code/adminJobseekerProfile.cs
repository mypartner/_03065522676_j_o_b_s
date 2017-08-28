using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for adminJobseekerProfile
/// </summary>
public class adminJobseekerProfile
{
    public adminJobseekerProfile()
    {
        //
        // TODO: Add constructor logic here
        //
    }
    public static jobSeeker getJobseekerDetail(int id)
    {
        try { 
        DataClassesDataContext db = new DataClassesDataContext();
        jobSeeker js = (from x in db.jobSeekers
                        where x.id == id
                        select x).First();
        return js;
        }
        catch (Exception e)
        {
            return null;
        }
    }
    public static IQueryable<jobseekereducationalInfo> getJobseekerEdu_info(int id)
    {
        try { 
        DataClassesDataContext db = new DataClassesDataContext();
        IQueryable<jobseekereducationalInfo> js = from x in db.jobseekereducationalInfos
                                                  where x.jobSeekerId == id
                                                  select x;
        return js;
    }catch(Exception e)
        {
            return null;
}
    }
    public static IQueryable<jobSeekerProfessionalInfo> getJobseekerPro_info(int id)
    {
        try { 
        DataClassesDataContext db = new DataClassesDataContext();
        IQueryable<jobSeekerProfessionalInfo> js = from x in db.jobSeekerProfessionalInfos
                                                  where x.jobSeekerId == id
                                                  select x;
        return js;
    }catch(Exception e)
        {
            return null;
}
    }
    
    public static skillsandcv getjobseekerSkills(int id)
    {
        try
        {
            DataClassesDataContext db = new DataClassesDataContext();
            skillsandcv js = (from x in db.skillsandcvs
                        where x.jobSeekerid == id
                        select x).First();
            return js;
        }catch(Exception e)
        {
            return null;
        }
    }
    public static string updateprofessionaldata(jobSeekerProfessionalInfo pro)
    {
        try
        {
            DataClassesDataContext db = new DataClassesDataContext();
            jobSeekerProfessionalInfo selecteddata = (from x in db.jobSeekerProfessionalInfos
                                                    where x.Id == pro.Id
                                                     select x).First();
            selecteddata.jobDescription= pro.jobDescription;
            selecteddata.jobEndDate = pro.jobEndDate;
            selecteddata.jobStartDate = pro.jobStartDate;
            selecteddata.jobDescription = pro.jobDescription;
            selecteddata.experience = pro.experience;
            selecteddata.workExperience = pro.workExperience;

            db.SubmitChanges();
            
            return "";
        }catch(Exception ex)
        {
            return ex.Message;
        }
                                                   
    }
    public static string updateEducationaldata(jobseekereducationalInfo pro)
    {
        try
        {
            DataClassesDataContext db = new DataClassesDataContext();
            jobseekereducationalInfo selecteddata = (from x in db.jobseekereducationalInfos
                                                      where x.Id == pro.Id
                                                      select x).First();
            selecteddata.instituteName = pro.instituteName;
            selecteddata.degreeName = pro.degreeName;
            selecteddata.passingOutYear = pro.passingOutYear;
            selecteddata.specialization = pro.specialization;
            

            db.SubmitChanges();

            return "";
        }
        catch (Exception ex)
        {
            return ex.Message;
        }

    }




}