using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class userSignup : System.Web.UI.Page
{
    public enum MessageType { Success, Error, Info, Warning };
    protected void ShowMessage(string Message, MessageType type)
    {
        ScriptManager.RegisterStartupScript(this, this.GetType(), System.Guid.NewGuid().ToString(), "ShowMessage('" + Message + "','" + type + "');", true);
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if(IsPostBack){
           
        }
    }
    protected void Signup_button(object sender, EventArgs e)
    {
        jobSeeker u = new jobSeeker();
        u.firstName = Request.Form["firstname"].ToString();
        u.lastName = Request.Form["lastname"].ToString();
        u.mobile = Request.Form["mobile"].ToString();
        u.email = Request.Form["email"].ToString();
        u.sex = Request.Form["Sex"].ToString();
        u.education = Request.Form["education"].ToString();
        u.country = Request.Form["country"].ToString();
        u.dob = Request.Form["dob"].ToString();
        u.username = Request.Form["username"].ToString();
        u.password = Request.Form["password"].ToString();
        //if(imageuploaded.hasfile)then do this
        HttpPostedFile postedfile = imageupload.PostedFile;
        u.image = imageToByteArray(postedfile);
        u.signupdate = DateTime.Now;
      string returnmsg=jobseekerclass.signUpJobSeeker(u);
        if (returnmsg == "")
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), System.Guid.NewGuid().ToString(), "hidesignupform('.form-container','Your information has been saved. Please check you Email and Activate your account.');", true);
        }
        else
        {
            ShowMessage(returnmsg, MessageType.Error);
        }







        //string name= Request.Form["firstname"].ToString();
        //Session["LoginSession"] = name;
        //Response.Redirect("/jobseekerdashboard.aspx");
    }
        
    public static byte[] imageToByteArray(HttpPostedFile postedfile)
    {
        string filename = Path.GetFileName(postedfile.FileName);
        string fileextention = Path.GetExtension(filename);
        int size = postedfile.ContentLength;
        byte[] imgbytes = null;
        if (fileextention.ToLower() == ".jpg")
        {
            Stream stream = postedfile.InputStream;
            BinaryReader binaryreader = new BinaryReader(stream);
            imgbytes = binaryreader.ReadBytes((int)stream.Length);
        }
        return imgbytes;
    }

}