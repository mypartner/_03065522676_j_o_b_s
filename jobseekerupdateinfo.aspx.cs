﻿using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class jobseekerupdateinfo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["LoginSession"] == null)
            {
                Response.Redirect("/login.aspx");
                //rediredct to login
            }
        }
    }

    protected void Savebutton_Click(object sender, EventArgs e)
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
        //u.username = Request.Form["username"].ToString();
        //u.password = Request.Form["password"].ToString();
        //if(imageuploaded.hasfile)then do this
        if (imageupload.HasFile)
        {
            HttpPostedFile postedfile = imageupload.PostedFile;
            u.image = imageToByteArray(postedfile);
            //u.signupdate = DateTime.Now;
        }else
        {
            u.image = null;
        }
        jobseekerclass.updatejobseeker(u,int.Parse(tbjid.Value));

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