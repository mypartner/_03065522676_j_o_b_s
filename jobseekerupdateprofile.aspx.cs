using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class jobseekerupdateprofile : System.Web.UI.Page
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
            if (Session["LoginSession"] == null)
            {
                Response.Redirect("/login.aspx");
            }
        }
        if (IsPostBack)
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
                if ( returnvalue== "")
                {
                    ShowMessage("Your data is updated Succesfully",MessageType.Success);
                }
                else
                {
                    ShowMessage(returnvalue, MessageType.Success);
                }
               }catch(Exception ex)
                {
                    ShowMessage(ex.Message, MessageType.Error);
                }
                
            }
            else if (eventArguments== "edubtn")
            {
                try { 
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
                        ShowMessage("Your data is updated Succesfully", MessageType.Success);
                    }
                    else
                    {
                        ShowMessage(returnvalue, MessageType.Success);
                    }
                }
                catch (Exception ex)
                {
                    ShowMessage(ex.Message, MessageType.Error);
                }

            }



        }
    }
    protected void updateprofessionalinfo_click(object sender, EventArgs e)
    {
        pupdateid.Visible = false;
      
        
    }
   
    protected void vieweducationalinfo_click(object sender, EventArgs e)
    {
        divviewedu.Visible = false;
       
    }
   
    /*******************************************************/

   



}