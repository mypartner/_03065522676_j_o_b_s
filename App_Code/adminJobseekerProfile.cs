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
}