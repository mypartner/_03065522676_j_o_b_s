using System;
using System.Collections.Generic;
using System.Data.Linq;
using System.IO;
using System.Linq;
using System.Web;

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
    public static void getSeekerCv(jobSeekerProfessionalInfo k)
    {
        int returnid = 0;
        try
        {
            DataClassesDataContext Database = new DataClassesDataContext();

            var q = (from a in Database.GetTable<jobSeekerProfessionalInfo>()
                     where a.jobSeekerId== 8 
                     select new
                     {
                         a.cv,
                        
                     }).First();
            Binary binary = q.cv; //your linq object
            byte[] array = binary.ToArray();
            File.WriteAllBytes("/cv/myfile.docx", array);




        }
        catch (Exception e)
        {

        }
       
    }
}