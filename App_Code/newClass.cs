using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for newClass
/// </summary>
public class newClass
{
    public newClass()
    {
        //
        // TODO: Add constructor logic here
        //
    }
    public static IQueryable<jobSeekerProfessionalInfo> getProfessionalInfo(int id)
    {
        DataClassesDataContext db = new DataClassesDataContext();
        IQueryable<jobSeekerProfessionalInfo> js = from x in db.jobSeekerProfessionalInfos
                        where x.jobSeekerId == id
                        select x;
        return js;
    }
    public static IQueryable<jobseekereducationalInfo> getEducationalInfo(int id)
    {
        DataClassesDataContext db = new DataClassesDataContext();
        IQueryable<jobseekereducationalInfo> js = from x in db.jobseekereducationalInfos
                                        where x.jobSeekerId == id
                                        select x;
        return js;
    }
    
        public static int getSeekerID(int id)
    {
        DataClassesDataContext db = new DataClassesDataContext();
        int pid = (from x in db.jobSeekerProfessionalInfos
                                                  where x.jobSeekerId == id
                                                  select x.Id).First();
        return pid;
    }
    /********************************/

    public static jobSeekerProfessionalInfo professionalinfo(int jobSeekerid, int id)
    {

        DataClassesDataContext db = new DataClassesDataContext();
        jobSeekerProfessionalInfo ra = (from x in db.jobSeekerProfessionalInfos
                                        where x.Id == id && x.jobSeekerId == jobSeekerid
                                        select x).First();
        return ra;
    }
    public static jobseekereducationalInfo educationalInfo(int jobSeekerid, int id)
    {

        DataClassesDataContext db = new DataClassesDataContext();
        jobseekereducationalInfo ra = (from x in db.jobseekereducationalInfos
                                        where x.Id == id && x.jobSeekerId == jobSeekerid
                                        select x).First();
        return ra;
    }
    public static void updateprofessionalinfo(jobSeekerProfessionalInfo r, int id)
    {

        DataClassesDataContext db = new DataClassesDataContext();
        var ra = (from x in db.jobSeekerProfessionalInfos
                  where x.Id == id
                  select x).First();
        ra.experience = r.experience;
        ra.jobStartDate = r.jobStartDate;
        ra.jobEndDate = r.jobEndDate;
        ra.company = r.company;
        ra.jobDescription = r.jobDescription;
        ra.workExperience = r.workExperience;



        db.SubmitChanges();
    }
    public static void updateeducationalinfo(jobseekereducationalInfo r, int id)
    {

        DataClassesDataContext db = new DataClassesDataContext();
        var ra = (from x in db.jobseekereducationalInfos
                  where x.Id == id
                  select x).First();
        ra.instituteName = r.instituteName;
        ra.passingOutYear = r.passingOutYear;
        ra.degreeName = r.degreeName;
        ra.specialization = r.specialization;




        db.SubmitChanges();
    }

}