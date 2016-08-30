using System;
using System.Collections.Generic;
using System.Data.Linq;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for recruiter
/// </summary>
public class recruiterclass
{
    public recruiterclass()
    {
        //
        // TODO: Add constructor logic here
        
    }
    public static void recruiterSignUp(recruiter u)
    {
        DataClassesDataContext Database = new DataClassesDataContext();
        Database.recruiters.InsertOnSubmit(u);
        try
        {
            Database.SubmitChanges();
        }
        catch (ChangeConflictException e)
        {
            //report error, log error whatever...
        }


    }
    public static int recruiterAuthentication(string uname, string password)
    {

        int returnid = 0;
        try
        {
            DataClassesDataContext Database = new DataClassesDataContext();

            var q = (from a in Database.GetTable<recruiter>()
                     where a.userName == uname && a.password == password
                     select new
                     {
                         a.userName,
                         a.Id
                     }).First();
            int x = q.Id;
            if (x > 0)
            {
                returnid = q.Id;
            }


        }
        catch (Exception e)
        {

        }
        return returnid;
    }
    static public void addJob(job k)
    {
        DataClassesDataContext Database = new DataClassesDataContext();
        Database.jobs.InsertOnSubmit(k);
        try
        {
            Database.SubmitChanges();
        }
        catch (ChangeConflictException e)
        {
            //report error, log error whatever...
        }

    }
    public static int getRecruiterID(string uname)
    {

        int returnid = 0;
        try
        {
            DataClassesDataContext Database = new DataClassesDataContext();

            var q = (from a in Database.GetTable<recruiter>()
                     where a.userName == uname
                     select new
                     {
                         a.userName,
                         a.Id
                     }).First();
            int x = q.Id;
            if (x > 0)
            {
                returnid = q.Id;
            }


        }
        catch (Exception e)
        {

        }
        return returnid;
    }
    public static IQueryable<job> getAllPostedJobbyRec(int rid)
    {

        IQueryable<job> jobs=null;
        try
        {
            DataClassesDataContext Database = new DataClassesDataContext();

            jobs = (from a in Database.GetTable<job>()
                     where a.rId == rid
                     select a);
           
          

        }
        catch (Exception e)
        {

        }
        return jobs; 
    }
}