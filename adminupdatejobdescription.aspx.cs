using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class adminupdatejobdescription : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Adminlogin"] == null)
        {
            Response.Redirect("adminlogin.aspx");
        }
       else if (!IsPostBack)
        {
            string jobId = Session["id"].ToString();
            // job j = new job();
            job r = adminrecruiterjobs.getJobDetail(int.Parse(jobId));
            title.Value = r.jobTitle;
            expectedsalary.Value = r.expectedSalary;
            country.Value = r.country;
            city.Value = r.city;
            salaryperiod.Value = r.salaryPeriod;
            //lastdate.Value = System.DateTime(r.lastDateToApply);
            minedu.Value = r.minimumEducation;
            minexp.Value = r.minimumLevelOfExperience;
            specificreq.Value = r.specificRequirement;
            jobdesc.Value = r.description;
        }
    }

    protected void update_Click(object sender, EventArgs e)
    {
        job j = new job();
        j.Id = int.Parse(Session["id"].ToString());
        
        j.jobTitle = title.Value;
        j.expectedSalary = expectedsalary.Value;
        j.country = country.Value;
        j.city = city.Value;
        j.salaryPeriod = salaryperiod.Value;
        j.minimumEducation = minedu.Value;
        j.minimumLevelOfExperience = minexp.Value;
        j.specificRequirement = specificreq.Value;
        j.description = jobdesc.Value;
        recruiterclass.updateJobs(j, j.Id);
        /*   r.label = ulabel.Value;
           r.description = udescription.Value;
           r.total_item = int.Parse(uitemno.Value);
           roomassetclass.updateInventory(r, int.Parse(inventoryId.Value));*/
    }
}