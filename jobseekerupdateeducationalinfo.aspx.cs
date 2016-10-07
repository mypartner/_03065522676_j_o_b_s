using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class jobseekerupdateeducationalinfo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void updateeducationalinfo_click(object sender, EventArgs e)
    {
        int id = int.Parse(Request.Form["hiddenid"]);
        jobseekereducationalInfo js = new jobseekereducationalInfo();
        js.instituteName = Request.Form["institute"];
        js.passingOutYear = DateTime.Parse(Request.Form["year_selector"].ToString());
        js.degreeName = Request.Form["degree1"].ToString();
        js.specialization = Request.Form["specialization"];
        
        newClass.updateeducationalinfo(js, id);
        Response.Redirect("jobseekerupdateprofile.aspx");
    }
   

}