﻿using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.Linq;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for login
/// </summary>
public class loginUser
{
    public loginUser()
    {
        //
        // TODO: Add constructor logic here
        //
    }
    public static void addUser(string fname,string lname,string mobileno,string username,string password,string sex,string dob,string email,string country,string workexperiance,string education,string subject)
    {
        DataClassesDataContext Database = new DataClassesDataContext();
        user u = new user();
        u.firstName = fname;
        u.lastName = lname;
        u.subject = subject;
        u.type = "jobfinder";
        u.experience = workexperiance;
        u.cv = "";
        u.mobile = mobileno;
        u.email = email;
        u.dob = dob;
        u.education = education;
        u.country = country;
        u.sex = sex;
        u.username = username;
        u.password = password;

        Database.users.InsertOnSubmit(u);
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

            var q = (from a in Database.GetTable<user>()
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

        }
        return returnid;
    }
}