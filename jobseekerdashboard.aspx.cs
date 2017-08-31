using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class jobseekerdashboard : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Session["LoginSession"].ToString()==null || Session["LoginSession"].ToString() == "")
        {
            Response.Redirect("login.aspx");
        }

    }
}