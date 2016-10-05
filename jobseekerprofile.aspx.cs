using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
public partial class jobseekerprofile : System.Web.UI.Page
{
    public enum MessageType { Success, Error, Info, Warning };
    protected void ShowMessage(string Message, MessageType type)
    {
        ScriptManager.RegisterStartupScript(this, this.GetType(), System.Guid.NewGuid().ToString(), "ShowMessage('" + Message + "','" + type + "');", true);
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["LoginSession"]==null)
            {
                Response.Redirect("/login.aspx");
            }
        }
    }
    protected void savePersonalInformation_Click(object sender, EventArgs e)
    {
        int counter=int.Parse(numberofRecords.Value);
        jobSeekerProfessionalInfo j = new jobSeekerProfessionalInfo();
        int jobsekerid= jobseekerclass.getSeekerID(Session["LoginSession"].ToString());
        for (int k = 1; k <=counter; k++)
        {
            j.jobSeekerId = jobsekerid;
            j.experience = Request.Form["experiance"+k].ToString();
            j.jobStartDate = DateTime.Parse(Request.Form["jobstartdate" + k].ToString());
            j.jobEndDate = DateTime.Parse(Request.Form["jobenddate" + k].ToString());
            j.company = Request.Form["companyname" + k].ToString();
            j.jobDescription = Request.Form["description" + k].ToString();
            j.workExperience = Request.Form["workexperience" + k].ToString();
            userprofile.addJobSeekerProfessionalInfo(j);
        }
       
        ShowMessage("Job seeker Professional Information has been saved successfully ! ", MessageType.Success);
    }
    
    public void saveskill_Click(object sender, EventArgs e)
    {
        skillsandcv s = new skillsandcv();
        s.jobSeekerid = jobseekerclass.getSeekerID(Session["LoginSession"].ToString());
        s.skills = Request.Form["skills"].ToString();
        HttpPostedFile postedfile = cvfile.PostedFile;
        string filename = Path.GetFileName(postedfile.FileName);
        string fileextention = Path.GetExtension(filename);
        if (fileextention.ToLower() == ".pdf")
        {
            s.cv_ = docToByteArray(postedfile);
        }
        userprofile.addJobSeekerSkills(s);
        ShowMessage("Job seeker skill Information has been saved successfully ! ", MessageType.Success);


    }

    public static byte[] docToByteArray(HttpPostedFile postedfile)
    {
        // string filename = Path.GetFileName(postedfile.FileName);
        //string fileextention = Path.GetExtension(filename);
        int size = postedfile.ContentLength;
        byte[] imgbytes = null;

        Stream stream = postedfile.InputStream;
        BinaryReader binaryreader = new BinaryReader(stream);
        imgbytes = binaryreader.ReadBytes((int)stream.Length);

        return imgbytes;
    }

    protected void saveeducationalinfoo_Click(object sender, EventArgs e)
    {
        int count = userprofile.checkJobSeekerEducationindfo(jobseekerclass.getSeekerID(Session["LoginSession"].ToString()));
        if (count == 0)
        {
            jobseekereducationalInfo j = new jobseekereducationalInfo();
            j.jobSeekerId = jobseekerclass.getSeekerID(Session["LoginSession"].ToString());
            j.instituteName = Request.Form["institute"].ToString();
            j.passingOutYear = DateTime.Parse(Request.Form["year_selector"].ToString());
            j.degreeName = Request.Form["degree1"].ToString();
            j.specialization = Request.Form["specialization"].ToString();
            userprofile.addJobSeekereducationalinfo(j);
            if (Request.Form["secondinstitute"].ToString() != "")
            {
                jobseekereducationalInfo j1 = new jobseekereducationalInfo();
                j1.jobSeekerId = jobseekerclass.getSeekerID(Session["LoginSession"].ToString());
                j1.instituteName = Request.Form["secondinstitute"].ToString();
                j1.passingOutYear =  DateTime.Parse(Request.Form["second_year_selector"].ToString());
                j1.degreeName = Request.Form["degree2"].ToString();
                j1.specialization = Request.Form["secondspecialization"].ToString();
                userprofile.addJobSeekereducationalinfo(j1);
            }
            ShowMessage("Job seeker Educational Information has been saved successfully ! ", MessageType.Success);

        }
    }
}