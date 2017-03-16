using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class adminmasterpage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void logout_click(object sender, EventArgs e)
    {
        Session["Adminlogin"] = false;

        Response.Redirect("adminlogin.aspx");
    }

}
