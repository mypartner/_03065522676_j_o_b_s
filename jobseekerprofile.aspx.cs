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

    }
    protected void savePersonalInformation_Click(object sender, EventArgs e)
    {
        jobSeekerProfessionalInfo j = new jobSeekerProfessionalInfo();
        j.jobSeekerId = jobseekerclass.getSeekerID(Session["LoginSession"].ToString());
        j.experience = Request.Form["experiance"].ToString();
        j.jobStartDate = DateTime.Parse(Request.Form["jobstartdate"].ToString());
        j.jobEndDate = DateTime.Parse(Request.Form["jobenddate"].ToString());
        j.company = Request.Form["companyname"].ToString();
        j.jobDescription = Request.Form["description"].ToString();
        j.workExperience = Request.Form["workexperience"].ToString();
        HttpPostedFile postedfile = cvfile.PostedFile;
        string filename = Path.GetFileName(postedfile.FileName);
        string fileextention = Path.GetExtension(filename);
        if (fileextention.ToLower() == ".pdf")
        {
            j.cv = docToByteArray(postedfile);
        }
        userprofile.addJobSeekerProfessionalInfo(j);
        ShowMessage("Job seeker Professional Information has been saved successfully ! ", MessageType.Success);
    }
    
    public void saveskill_Click(object sender, EventArgs e)
    {
        skill s = new skill();
        s.jobSeekerid = jobseekerclass.getSeekerID(Session["LoginSession"].ToString());
        s.skill1 = Request.Form["skill1"].ToString();
        s.skill2 = Request.Form["skill2"].ToString();
        s.skill3 = Request.Form["skill3"].ToString();
        s.skill4 = Request.Form["skill4"].ToString();
        s.skill5 = Request.Form["skill5"].ToString();
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