using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
public partial class adminupdatejobseekerprofile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            int jobSeekerId = int.Parse(Session["jobseekerid"].ToString());
            jobSeekerProfessionalInfo jpi = getProfessionalDetail(jobSeekerId);
            hiddenid.Value = jobSeekerId.ToString();

            experiance.Value = jpi.experience;
            //  spi.experience = experiance.Value;
           companyname.Value = jpi.company;
            description.Value = jpi.jobDescription;
             workexperience.Value = jpi.workExperience;

        }
    }
    public static jobSeekerProfessionalInfo getProfessionalDetail(int jobseekerid)
    {
        DataClassesDataContext db = db = new DataClassesDataContext();
        jobSeekerProfessionalInfo pi = (from x in db.jobSeekerProfessionalInfos
                  where x.jobSeekerId == jobseekerid
                  select x).First();
        return pi;
    }
    protected void updateprofessionalinfo_Click(object sender, EventArgs e)
    {
        jobSeekerProfessionalInfo jspi = new jobSeekerProfessionalInfo();
        jspi.jobSeekerId =  int.Parse(Session["jobseekerid"].ToString());
        jspi.experience = experiance.Value;
        jspi.company = companyname.Value;
        jspi.jobDescription = description.Value;
        jspi.workExperience = workexperience.Value;
        jspi.jobStartDate = DateTime.Parse(Request.Form["jobstartdate"].ToString());
        jspi.jobEndDate = DateTime.Parse(Request.Form["jobenddate"].ToString());
        adminjobseekers.adminUpdateJobSeekerProfessionalInfo(jspi, jspi.jobSeekerId);
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
    protected void updateeducationalinfoo_Click(object sender, EventArgs e)
    {
         jobseekereducationalInfo jsei = new jobseekereducationalInfo();
         jsei.jobSeekerId = int.Parse(Session["jobseekerid"].ToString());
         jsei.instituteName = institute.Value;
         jsei.passingOutYear = DateTime.Parse(Request.Form["year_selector"].ToString());
        jsei.degreeName = degree1.Value;
        jsei.specialization = specialization.Value;
        //************degree 2 info
        if (degree2.Value != "")
        {
            jsei.degreeName = degree2.Value;
            jsei.instituteName = secondinstitute.Value;
            jsei.passingOutYear = DateTime.Parse(Request.Form["second_year_selector"].ToString());
            jsei.specialization = secondspecialization.Value;
        }

         adminjobseekers.adminUpdateJobSeekerEducationalInfo(jsei, jsei.jobSeekerId);
     }
    protected void updateskill_Click(object sender, EventArgs e)
    {
       skillsandcv s = new skillsandcv();
        s.jobSeekerid = int.Parse(Session["jobseekerid"].ToString());
        s.skills = skill1.Value;
        HttpPostedFile postedfile = cvfile.PostedFile;
        string filename = Path.GetFileName(postedfile.FileName);
        string fileextention = Path.GetExtension(filename);
        if (fileextention.ToLower() == ".pdf")
        {
            s.cv_ = docToByteArray(postedfile);
        }
        adminjobseekers.adminUpdateJobSeekerSkillInfo(s, s.jobSeekerid);
    }
    
}
    
