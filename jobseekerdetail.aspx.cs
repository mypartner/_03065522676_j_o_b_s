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
        j.jobSeekerId = jobseekerclass.getSeekerID(Session["LoginSession"].ToString());
        j.experience = Request.Form["experiance"].ToString();
        j.jobStartDate = DateTime.Parse(Request.Form["jobstartdate"].ToString());
        j.jobEndDate = DateTime.Parse(Request.Form["jobenddate"].ToString());
        j.company = Request.Form["companyname"].ToString();
        j.jobDescription = Request.Form["description"].ToString();
        j.workExperience = Request.Form["workexperience"].ToString();
        HttpPostedFile postedfile = cvfile.PostedFile;
        j.cv = imageToByteArray(postedfile);
        userprofile.addJobSeekerProfessionalInfo(j);
    }

   
    public static byte[] imageToByteArray(HttpPostedFile postedfile)
    {
        string filename = Path.GetFileName(postedfile.FileName);
        string fileextention = Path.GetExtension(filename);
        int size = postedfile.ContentLength;
        byte[] imgbytes = null;
        if (fileextention.ToLower() == ".doc" || fileextention.ToLower() == ".pdf" || fileextention.ToLower() == ".docx")
        {
            Stream stream = postedfile.InputStream;
            BinaryReader binaryreader = new BinaryReader(stream);
            imgbytes = binaryreader.ReadBytes((int)stream.Length);
        }
        return imgbytes;
    }

   
}