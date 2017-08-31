using System;
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
                string eventArguments = Request.Params.Get("__EVENTTARGET");
                if (eventArguments == "professionbtn")
                {
                    int rid = recruiterclass.getRecruiterID(Session["RloginSession"].ToString());

                    job k = new job();
                    k.rId = rid;
                    k.jobTitle = Request.Form["jobtitle"].ToString();
                    k.description = Request.Form["description"].ToString();
                    k.expectedSalary = Request.Form["expectedsalary"].ToString(); ;
                    k.postedDate = System.DateTime.Now;
                    k.country = Request.Form["country"].ToString(); ;
                    k.city = Request.Form["city"].ToString();
                    k.jobCatagory = Request.Form["jobcatagory"].ToString();
                    k.salaryPeriod = Request.Form["salaryperiod"].ToString();
                    k.lastDateToApply = DateTime.ParseExact(Request.Form["lastdatetoApply"].ToString(), @"d-M-yyyy", System.Globalization.CultureInfo.InvariantCulture);
                    k.minimumEducation = Request.Form["meducation"].ToString();
                    k.minimumLevelOfExperience = Request.Form["mlexperiance"].ToString();
                    k.specificRequirement = "spacificRequirements";
                    recruiterclass.addJob(k);
                    ShowMessage("Information has been saved ", MessageType.Success);
                }
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