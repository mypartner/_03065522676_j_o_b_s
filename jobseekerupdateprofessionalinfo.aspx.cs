using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class jobseekerupdateprofessionalinfo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
        int jobsekerid = jobseekerclass.getSeekerID(Session["LoginSession"].ToString());

      //  IQueryable<jobSeekerProfessionalInfo> jspi = newClass.getProfessionalInfo(jobsekerid);
    }
    
    protected void updatpinfo(object sender, EventArgs e)
    {
        int id = int.Parse(Request.Form["hiddenid"]);
        // pupdateid.Visible = true;
        jobSeekerProfessionalInfo js = new jobSeekerProfessionalInfo();
        js.experience = Request.Form["experiance"];
        js.jobStartDate = DateTime.Parse(Request.Form["jobstartdate"].ToString());
        js.jobEndDate = DateTime.Parse(Request.Form["jobenddate"].ToString());
        js.company = Request.Form["companyname"];
        js.jobDescription = Request.Form["description"];
        js.workExperience = Request.Form["workexperience"];
        newClass.updateprofessionalinfo(js,id);
        Response.Redirect("jobseekerupdateprofile.aspx");
        
        
        //  updateprofessionalinfo(js,jobsekerid);
    }
    /*****************************/

   
}