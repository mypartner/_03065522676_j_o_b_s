using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class adminlogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void loginbtn_Click(object sender, EventArgs e)
    {
        string username = Request.Form["Uname"].ToString();
        string password = Request.Form["Pword"].ToString();
       if(adminClass.adminAuthentication(username, password) == true)
        {
            Session["Adminlogin"] = username;
            Response.Redirect("adminindex.aspx");
        }
       else
        {
            Response.Write("Unable to authenticate user");
        }
    }
}