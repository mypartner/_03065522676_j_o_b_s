using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
public partial class adminupdatejobseekerprofile : System.Web.UI.Page
{
    public enum MessageType { Success, Error, Info, Warning };
    protected void ShowMessage(string Message, MessageType type)
    {
        ScriptManager.RegisterStartupScript(this, this.GetType(), System.Guid.NewGuid().ToString(), "ShowMessage('" + Message + "','" + type + "');", true);
    }
    protected void Page_Load(object sender, EventArgs e)
    {

        ClientScript.GetPostBackEventReference(this, string.Empty);
        if (Session["Adminlogin"] == null)
        {
            Response.Redirect("adminlogin.aspx");
        }
        else if (IsPostBack)
        {
           
                DataClassesDataContext db = new DataClassesDataContext();
                string eventArguments = Request.Params.Get("__EVENTTARGET");
                if (eventArguments == "professionbtn")
                {
                    try
                    {
                        int id = int.Parse(Request.Params.Get("__EVENTARGUMENT"));
                        // Fire event
                        jobSeekerProfessionalInfo jpi = new jobSeekerProfessionalInfo();

                        jpi.Id = id;
                        jpi.experience = Request.Form["experiance" + id].ToString();
                        jpi.jobStartDate = DateTime.ParseExact(Request.Form["startdate" + id].ToString(), @"d-M-yyyy", System.Globalization.CultureInfo.InvariantCulture);
                        jpi.jobEndDate = DateTime.ParseExact(Request.Form["enddate" + id].ToString(), @"d-M-yyyy", System.Globalization.CultureInfo.InvariantCulture);
                        jpi.company = Request.Form["company" + id].ToString();
                        jpi.jobDescription = Request.Form["description" + id].ToString();
                        jpi.workExperience = Request.Form["workexperiance" + id].ToString();

                        string returnvalue = adminJobseekerProfile.updateprofessionaldata(jpi);
                        if (returnvalue == "")
                        {
                            ShowMessage("Your Proffesional data is updated Succesfully", MessageType.Success);
                        }
                        else
                        {
                            ShowMessage(returnvalue, MessageType.Error);
                        }
                    }
                    catch (Exception ex)
                    {
                        ShowMessage(ex.Message, MessageType.Error);
                    }

                }
                else if (eventArguments == "edubtn")
                {
                    try
                    {
                        int id = int.Parse(Request.Params.Get("__EVENTARGUMENT"));
                        DateTime datefromyear = new DateTime(int.Parse(Request.Form["passingyear" + id].ToString()), 1, 1);
                        jobseekereducationalInfo eduinfo = new jobseekereducationalInfo();

                        eduinfo.Id = id;
                        eduinfo.instituteName = Request.Form["institute" + id].ToString();
                        eduinfo.passingOutYear = datefromyear;
                        eduinfo.degreeName = Request.Form["degree" + id].ToString();
                        eduinfo.specialization = Request.Form["specialization" + id].ToString();
                        string returnvalue = adminJobseekerProfile.updateEducationaldata(eduinfo);
                        if (returnvalue == "")
                        {
                            ShowMessage("Your Educational data is updated Succesfully", MessageType.Success);
                        }
                        else
                        {
                            ShowMessage(returnvalue, MessageType.Error);
                        }
                    }
                    catch (Exception ex)
                    {
                        ShowMessage(ex.Message, MessageType.Error);
                    }

                }
                else if (eventArguments == "cvandskill")
                {
                    try
                    {
                        int id = int.Parse(Request.Params.Get("__EVENTARGUMENT"));
                        skillsandcv skc = new skillsandcv();
                        skc.jobSeekerid = id;
                        skc.skills = Request.Form["skill"].ToString();
                        if (cvfile.HasFile)
                        {
                            HttpPostedFile postedfile = cvfile.PostedFile;
                            string filename = Path.GetFileName(cvfile.FileName);
                            string fileextention = Path.GetExtension(filename);
                            if (fileextention.ToLower() == ".pdf")
                            {
                                skc.cv_ = docToByteArray(postedfile);

                            }
                        }
                        else
                        {
                            skc.cv_ = null;
                        }
                        string returnvalue = adminJobseekerProfile.updatskillandcv(skc);
                        if (returnvalue == "")
                        {
                            ShowMessage("Your Skills and CV  is updated Succesfully", MessageType.Success);
                        }
                        else
                        {
                            ShowMessage(returnvalue, MessageType.Error);
                        }
                    }
                    catch (Exception ex)
                    {
                        ShowMessage(ex.Message, MessageType.Error);
                    }
                }



            

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
        //jobSeekerProfessionalInfo jspi = new jobSeekerProfessionalInfo();
        //jspi.jobSeekerId =  int.Parse(Session["jobseekerid"].ToString());
        //jspi.experience = experiance.Value;
        //jspi.company = companyname.Value;
        //jspi.jobDescription = description.Value;
        //jspi.workExperience = workexperience.Value;
        //if (Request.Form["jobstartdate"].ToString() != "" || Request.Form["jobenddate"].ToString() != "")
        //{
        //    jspi.jobStartDate = DateTime.ParseExact(Request.Form["jobstartdate"].ToString(), @"d-M-yyyy", System.Globalization.CultureInfo.InvariantCulture);
        //    jspi.jobEndDate = DateTime.ParseExact(Request.Form["jobenddate"].ToString(), @"d-M-yyyy", System.Globalization.CultureInfo.InvariantCulture);

        //}
       
        //    adminjobseekers.adminUpdateJobSeekerProfessionalInfo(jspi, jspi.jobSeekerId);
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
    
