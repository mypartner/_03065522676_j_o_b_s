﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class viewDescription : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Adminlogin"] == null)
        {
            Response.Redirect("adminlogin.aspx");
        }
       else if (!IsPostBack)
        {
            if (Request.QueryString["id"] == null)
            {
                Response.Redirect("adminviewjobseeker.aspx");
            }
        }
        //if (IsPostBack)
        //{
        //    int jobid = int.Parse(Request.QueryString["id"].ToString());
        //    if (Session["LoginSession"] != null)///must be change to admin login
        //    {
        //        appliedJob j = new appliedJob();
        //        j.jobid = jobid;
        //        j.jobSeekerId = jobseekerclass.getSeekerID(Session["LoginSession"].ToString());
        //        j.date = DateTime.Now;
        //        string msg=clientJob.applyJob(j);
        //    }
        //    else
        //    {
        //        Response.Redirect("login.aspx?id="+jobid);
        //    }
        //}
    }
}