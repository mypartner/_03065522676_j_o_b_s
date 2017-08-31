using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for adminjobseekers
/// </summary>
public class adminjobseekers
{
    public adminjobseekers()
    {
        //
        // TODO: Add constructor logic here
        //
    }
    public static IQueryable<jobSeeker> getjobseekers()
    {
        DataClassesDataContext db = new DataClassesDataContext();
        IQueryable<jobSeeker> data = from x in db.jobSeekers
                                     select x;
        return data;
    }
    //updating jobs
    public static void adminUpdateJobSeekerProfessionalInfo(jobSeekerProfessionalInfo r, int id)
    {
        DataClassesDataContext db = new DataClassesDataContext();
        var ra = (from x in db.jobSeekerProfessionalInfos
                  where x.jobSeekerId == id
                  select x).First();
        ra.experience = r.experience;
        ra.company = r.company;
        ra.jobDescription = r.jobDescription;
        ra.workExperience = r.workExperience;
        if(r.jobEndDate!=null || r.jobStartDate != null)
        {
            ra.jobStartDate = r.jobStartDate;
            ra.jobEndDate = r.jobEndDate;
        }
       


        db.SubmitChanges();

    }
    public static void adminUpdateJobSeekerEducationalInfo(jobseekereducationalInfo r, int id)
    {
        DataClassesDataContext db = new DataClassesDataContext();
        var ra = (from x in db.jobseekereducationalInfos
                  where x.jobSeekerId == id
                  select x).First();
        ra.degreeName = r.degreeName;
        ra.instituteName = r.instituteName;
        ra.passingOutYear = r.passingOutYear;
        ra.specialization = r.specialization;
        db.SubmitChanges();

    }
    
         public static void adminUpdateJobSeekerSkillInfo(skillsandcv r, int id)
    {
        DataClassesDataContext db = new DataClassesDataContext();
        var ra = (from x in db.skillsandcvs
                  where x.jobSeekerid == id
                  select x).First();
       
        ra.skills = r.skills;
        ra.cv_ = r.cv_;
        db.SubmitChanges();

    }
}