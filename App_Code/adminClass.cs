﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for adminClass
/// </summary>
public class adminClass
{
    public adminClass()
    {
        //
        // TODO: Add constructor logic here
        //
    }
    public static IQueryable<appliedJob> gettotalAppliedJob()
    {
        DataClassesDataContext db = new DataClassesDataContext();
        IQueryable<appliedJob> appjobs = from x in db.appliedJobs
                                              select x;
        return appjobs;

    }
    public static int[] getTotalRecruterSignup()
    {
        DataClassesDataContext db = new DataClassesDataContext();
        var dt  = from x in db.recruiters
                                         select x;
        int[] monthlyvalue = new int[12];
        foreach (var dr in dt)
        {
            DateTime date = dr.signupdate.Value;
            string month = date.ToString("MMMM");
            if (month == "January")
            {
                monthlyvalue[0] += 1;
            }
            else if (month == "February")
            {
                monthlyvalue[1] += 1;
            }
            else if (month == "March")
            {
                monthlyvalue[2] += 1;
            }
            else if (month == "April")
            {
                monthlyvalue[3] += 1;
            }
            else if (month == "May")
            {
                monthlyvalue[4] += 1;
            }
            else if (month == "June")
            {
                monthlyvalue[5] += 1;
            }
            else if (month == "July")
            {
                monthlyvalue[6] += 1;
            }
            else if (month == "August")
            {
                monthlyvalue[7] += 1;
            }
            else if (month == "September")
            {
                monthlyvalue[8] += 1;
            }
            else if (month == "October")
            {
                monthlyvalue[9] += 1;
            }
            else if (month == "November")
            {
                monthlyvalue[10] += 1;
            }
            else if (month == "December")
            {
                monthlyvalue[11] += 1;
            }
        }

        return monthlyvalue;

    }
    public static int[] getTotalJobSeekerSignup()
    {
        DataClassesDataContext db = new DataClassesDataContext();
        var dt = from x in db.jobSeekers
                                        select x;
        int[] monthlyvalue = new int[12];
        foreach (var dr in dt)
        {
            DateTime date = dr.signupdate.Value;
            string month = date.ToString("MMMM");
            if (month == "January")
            {
                monthlyvalue[0] += 1;
            }
            else if (month == "February")
            {
                monthlyvalue[1] += 1;
            }
            else if (month == "March")
            {
                monthlyvalue[2] += 1;
            }
            else if (month == "April")
            {
                monthlyvalue[3] += 1;
            }
            else if (month == "May")
            {
                monthlyvalue[4] += 1;
            }
            else if (month == "June")
            {
                monthlyvalue[5] += 1;
            }
            else if (month == "July")
            {
                monthlyvalue[6] += 1;
            }
            else if (month == "August")
            {
                monthlyvalue[7] += 1;
            }
            else if (month == "September")
            {
                monthlyvalue[8] += 1;
            }
            else if (month == "October")
            {
                monthlyvalue[9] += 1;
            }
            else if (month == "November")
            {
                monthlyvalue[10] += 1;
            }
            else if (month == "December")
            {
                monthlyvalue[11] += 1;
            }
        }

        return monthlyvalue;

    }
}