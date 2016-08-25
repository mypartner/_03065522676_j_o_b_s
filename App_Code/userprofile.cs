using System;
using System.Collections.Generic;
using System.Data.Linq;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

/// <summary>
/// Summary description for userprofile
/// </summary>
public class userprofile
{
    public userprofile()
    {
        
    }
    public static void addJobSeekerProfessionalInfo(jobSeekerProfessionalInfo k)
    {
        DataClassesDataContext Database = new DataClassesDataContext();
        int count = (from x in Database.jobSeekerProfessionalInfos
                                where x.jobSeekerId == k.jobSeekerId     //for checking already existance of client
                                select x).Count();
        if (count == 0)
        {
            Database.jobSeekerProfessionalInfos.InsertOnSubmit(k);
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
    //adding jobseeker educational info
    public static void addJobSeekereducationalinfo(jobseekereducationalInfo k)
    {

        DataClassesDataContext Database = new DataClassesDataContext();
        Database.jobseekereducationalInfos.InsertOnSubmit(k);
            try
            {
                Database.SubmitChanges();
            }
            catch (ChangeConflictException e)
            {
                //report error, log error whatever...
            }
        
    }
    public static int checkJobSeekerEducationindfo(int jobseekerid)
    {
        DataClassesDataContext Database = new DataClassesDataContext();
        int count = (from x in Database.jobseekereducationalInfos
                     where x.jobSeekerId ==jobseekerid     //for checking already existance of client educational information
                     select x).Count();
        return count;
    }
    public static bool addJobSeekerSkills(skill s)
    {
        try
        {
            DataClassesDataContext Database = new DataClassesDataContext();

            int count = (from a in Database.GetTable<skill>()
                     where a.jobSeekerid == s.jobSeekerid
                     select new
                     {
                         a.Id

                     }).Count();
            if (count == 0)
            {
                Database.skills.InsertOnSubmit(s);
                Database.SubmitChanges();
                return true;

            }
            else
            {
                return false;
            }
        }
        catch (Exception e)
        {
            return false;

        }

    }

    public static string getSeekerCv(int jobseekerid)
    {
        string str= "";
        try
        {
            DataClassesDataContext Database = new DataClassesDataContext();

            var q = (from a in Database.GetTable<jobSeekerProfessionalInfo>()
                     where a.jobSeekerId== jobseekerid
                     select new
                     {
                         a.cv,
                        
                     }).First();
            Binary binary = q.cv; //your linq object
            byte[] array = binary.ToArray();
            File.WriteAllBytes(HttpContext.Current.Server.MapPath("/cvs/myfile2.pdf"), array);


            return str;


        }
        catch (Exception e)
        {
            Console.WriteLine(e.Message);
            str = e.Message;
            return str;
            
        }
       
    }
}