using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class recruiterSignup : System.Web.UI.Page
{
    public enum MessageType { Success, Error, Info, Warning };
    protected void ShowMessage(string Message, MessageType type)
    {
        ScriptManager.RegisterStartupScript(this, this.GetType(), System.Guid.NewGuid().ToString(), "ShowMessage('" + Message + "','" + type + "');", true);
    }
    protected void Page_Load(object sender, EventArgs e)
    {
      
        if (IsPostBack)
        {
            recruiter r = new recruiter();
            r.companyName = Request.Form["companyname"].ToString();
                r.yearOfEstablishment = DateTime.Parse(Request.Form["establishyear"].ToString());
            r.briefProfile = Request.Form["description"].ToString();
            r.contactPerson = Request.Form["contactoerson"].ToString();
            r.phone = Request.Form["phone"].ToString();
            r.fax = Request.Form["fax"].ToString();
            r.email = Request.Form["email"].ToString();
            r.website = Request.Form["website"].ToString();
            //must be a random number ....or some code Sequqnce randomly generated
            r.emailVerification = Request.Form["companyname"].ToString();
            r.userName = Request.Form["username"].ToString();
            r.password = Request.Form["password"].ToString();
            HttpPostedFile postedfile = logo.PostedFile;
            r.logo = imageToByteArray(postedfile);
            r.signupdate = DateTime.Now;
            string returnmsg = recruiterclass.recruiterSignUp(r);
           if (returnmsg == "")//when succesfull;
            {

                ScriptManager.RegisterStartupScript(this, this.GetType(), System.Guid.NewGuid().ToString(), "hidesignupform('.form-container','Your information is been saved. Please check you Email and Activate your account.');", true);

            }
            else
            {
                ShowMessage(returnmsg, MessageType.Error);
            }
            
        }

    }
    public static byte[] imageToByteArray(HttpPostedFile postedfile)
    {
        string filename = Path.GetFileName(postedfile.FileName);
        string fileextention = Path.GetExtension(filename);
        int size = postedfile.ContentLength;
        byte[] imgbytes = null;
        if (fileextention.ToLower() == ".jpg" || fileextention.ToLower()==".png" || fileextention.ToLower() == ".jpeg")
        {
            Stream stream = postedfile.InputStream;
            BinaryReader binaryreader = new BinaryReader(stream);
            imgbytes = binaryreader.ReadBytes((int)stream.Length);
        }
        return imgbytes;
    }
}