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

    }
    protected void login_user_Click(object sender, EventArgs e)
    {
        string name = Request.Form["username"];
        string password = Request.Form["password"].ToString();
        int id = loginUser.userAuthentication(name, password);
        if (0 != id)
        {
            HttpContext.Current.Session["loginId"] = id;
           // Response.Redirect("/postAd.aspx");
            Response.Redirect("dashboard.aspx");
        }
        else
        {
            Response.Write("notlogedin");
        }
    }
}