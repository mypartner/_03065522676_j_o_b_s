using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class viewDescription : System.Web.UI.Page
{
    public enum MessageType { Success, Error, Info, Warning };
    protected void ShowMessage(string Message, MessageType type)
    {
        ScriptManager.RegisterStartupScript(this, this.GetType(), System.Guid.NewGuid().ToString(), "ShowMessage('" + Message + "','" + type + "');", true);
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        // Session["LoginSession"] = null;
        if (!IsPostBack)
        {
            if (Request.QueryString["id"] == null)
            {
                Response.Redirect("jobseekerjobs.aspx");
            }
        }
        if (IsPostBack)
        {
            int jobid = int.Parse(Request.QueryString["id"].ToString());
            if (Session["LoginSession"] != null)
            {
                appliedJob j = new appliedJob();
                j.jobid = jobid;
                j.jobSeekerId = jobseekerclass.getSeekerID(Session["LoginSession"].ToString());
                j.date = DateTime.Now;
                string msg=clientJob.applyJob(j);
                if (msg == "")
                {
                    ShowMessage("You have Succefully Applied for this job", MessageType.Success);
                }
                else
                {
                    ShowMessage(msg, MessageType.Warning);
                }
            }
            else
            {
                Response.Redirect("login.aspx?id="+jobid);
            }
        }
    }
}