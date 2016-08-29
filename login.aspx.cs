using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {

            if (IsPostBack && jobpageid.Value != "" && jobpage.Value != "")
            {
                string name = Request.Form["username"];
                string password = Request.Form["password"].ToString();
                string type = Request.Form["logintype"];
                if (type == "jobseeker")
                {
                    int id = jobseekerclass.userAuthentication(name, password);
                    if (0 != id)
                    {
                        Session["LoginSession"] = name;
                        Response.Redirect(jobpage.Value.ToString() + "?id=" + jobpageid.Value.ToString());
                    }
                    else
                    {
                        Response.Write("notlogedin");
                    }
                }
                else
                {
                    //msg for cnt login as recruiter
                }

            }else if(Page.Request.UrlReferrer.AbsolutePath.ToString() == "/viewDescription.aspx")
            {
                jobpageid.Value = Request.QueryString["id"].ToString();
                jobpage.Value = Page.Request.UrlReferrer.AbsolutePath.ToString();

            }
        }
        catch(Exception ex)
        {
            Console.WriteLine(ex.Message);
        }

    }
    protected void login_user_Click(object sender, EventArgs e)
    {
        string name = Request.Form["username"];
        string password = Request.Form["password"].ToString();
        string type = Request.Form["logintype"];
        if(type=="jobseeker")
        {
            int id = jobseekerclass.userAuthentication(name, password);
                  if (0 != id)
                  {
                       Session["LoginSession"] = name;
                       Response.Redirect("/jobseekerdashboard.aspx");
                  }
                  else
                  {
                      Response.Write("notlogedin");
                  }
        }
        else if(type== "recruiter")
        {
            int id = recruiterclass.recruiterAuthentication(name, password);
            if (0 != id)
            {
                Session["RloginSession"] = name;
                Response.Redirect("/recruiterdashboard.aspx");
            }
            else
            {
                Response.Write("notlogedin");
            }
        }
        else
        {

        }
        /*int id = jobseekerclass.userAuthentication(name, password);
        if (0 != id)
        {
            Response.Write("logedin");
        }
        else
        {
            Response.Write("notlogedin");
        }*/
    }
}