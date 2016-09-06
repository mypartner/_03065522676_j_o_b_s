﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class recruiteraddjob : System.Web.UI.Page
{
    public enum MessageType { Success, Error, Info, Warning };
    protected void ShowMessage(string Message, MessageType type)
    {
        ScriptManager.RegisterStartupScript(this, this.GetType(), System.Guid.NewGuid().ToString(), "ShowMessage('" + Message + "','" + type + "');", true);
    }
    protected void Page_Load(object sender, EventArgs e)
    {
      if (IsPostBack)
        {
            if (Session["RloginSession"] != null)
            {
                int rid = recruiterclass.getRecruiterID(Session["RloginSession"].ToString());

                job k = new job();
                k.rId = rid;
                k.jobTitle = Request.Form["jobtitle"].ToString();
                k.description = "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable.";
                k.expectedSalary = Request.Form["expectedsalary"].ToString(); ;
                k.postedDate = System.DateTime.Now;
                k.country = Request.Form["country"].ToString(); ;
                k.city = Request.Form["city"].ToString();
                k.jobCatagory = Request.Form["jobcatagory"].ToString();
                k.salaryPeriod = Request.Form["salaryperiod"].ToString();
                k.lastDateToApply = DateTime.Parse(Request.Form["lastdatetoApply"].ToString());
                k.minimumEducation = Request.Form["meducation"].ToString();
                k.minimumLevelOfExperience = Request.Form["mlexperiance"].ToString();
                k.specificRequirement = "spacificRequirements";
                recruiterclass.addJob(k);
                ShowMessage("Information has been saved ", MessageType.Success);
            }
          
            else
            {
                Response.Redirect("login.aspx");
            }
        }
        else if (Session["RloginSession"] == null)
        {
            Response.Redirect("login.aspx");
        }

    }
    
}