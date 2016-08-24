using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class jobseekerdetail : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
      
    }

    protected void savePersonalInformation_Click(object sender, EventArgs e)
    {
        jobSeekerProfessionalInfo j = new jobSeekerProfessionalInfo();
        j.jobSeekerId = 8;//jobseekerclass.getSeekerID(Session["LoginSession"].ToString());
        j.experience = Request.Form["experiance"].ToString();
        j.jobStartDate = DateTime.Parse(Request.Form["jobstartdate"].ToString());
        j.jobEndDate = DateTime.Parse(Request.Form["jobenddate"].ToString());
        j.company = Request.Form["companyname"].ToString();
        j.jobDescription = Request.Form["description"].ToString();
        j.workExperience = Request.Form["workexperience"].ToString();
        HttpPostedFile postedfile = cvfile.PostedFile;
        string filename = Path.GetFileName(postedfile.FileName);
        string fileextention = Path.GetExtension(filename);
        if (fileextention.ToLower() == ".doc" || fileextention.ToLower() == ".pdf" || fileextention.ToLower() == ".docx")
        {
            j.cv = docToByteArray(postedfile);
        }
        userprofile.addJobSeekerProfessionalInfo(j);
    }
    protected void saveeducationalinfo_Click(object sender, EventArgs e)
    {
        int count=userprofile.checkJobSeekerEducationindfo(8);//jobseekerclass.getSeekerID(Session["LoginSession"].ToString());)
        if (count == 0)
        {
            jobseekereducationalInfo j = new jobseekereducationalInfo();
            j.jobSeekerId = 8;//jobseekerclass.getSeekerID(Session["LoginSession"].ToString());
            j.instituteName = Request.Form["institute"].ToString();
            j.passingOutYear = DateTime.Parse(Request.Form["passing_year"].ToString());
            j.degreeName = Request.Form["degree1"].ToString();
            j.specialization = Request.Form["specialization"].ToString();
            userprofile.addJobSeekereducationalinfo(j);

            jobseekereducationalInfo j1 = new jobseekereducationalInfo();
            j1.jobSeekerId = 8;//jobseekerclass.getSeekerID(Session["LoginSession"].ToString());
            j1.instituteName = Request.Form["secondinstitute"].ToString();
            j1.passingOutYear = DateTime.Parse(Request.Form["passing_year2"].ToString());
            j1.degreeName = Request.Form["degree2"].ToString();
            j1.specialization = Request.Form["secondspecialization"].ToString();
            userprofile.addJobSeekereducationalinfo(j1);
        }


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

   
}