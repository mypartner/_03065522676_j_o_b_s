using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_videos : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            string id = hdelete.Value;
           
            if (!string.IsNullOrEmpty(id))
            {

                feedsclass.deleteVideo(int.Parse(id));
                hdelete.Value = "";


            }
        }

    }
    protected void video_add(object sender, EventArgs e)
    {
        try
        {
            video v = new video();
            v.video_title = title.Value;
            v.publish_date = DateTime.Parse(Request.Form["startdate"]); //DateTime.Parse(Request.Form["startdate"]);//eventstartdate.Value);// DateTime.Parse(Request.Form["eventstartdate"].ToString());
            v.end_date = DateTime.Parse(Request.Form["enddate"]); //DateTime.Parse(Request.Form["eventstartdate"]);//eventstartdate.Value);// DateTime.Parse(Request.Form["eventstartdate"].ToString());
            v.video_link = Request.Form["link"].ToString();


            bool check = feedsclass.addVideo(v);

        }
        catch (Exception ex)
        {

        }
    }
    
}