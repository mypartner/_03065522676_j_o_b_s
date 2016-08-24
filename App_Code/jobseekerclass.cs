using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.Linq;
using System.Linq;
using System.Web;

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
}