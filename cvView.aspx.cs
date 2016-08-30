using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class cvView : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (Request.QueryString["id"].ToString() == null)
            {

            }
            else
            {
                int id = int.Parse(Request.QueryString["id"].ToString());
                Response.Write(userprofile.getSeekerCv(id));
                FileInfo file = new FileInfo(HttpContext.Current.Server.MapPath("/cvs/Seeker" + id + ".pdf"));

                Response.ClearContent();

                Response.AddHeader("Content-Disposition", "inline;filename=" + file.Name);

                Response.AddHeader("Content-Length", file.Length.ToString());

                Response.ContentType = "application/pdf";

                Response.TransmitFile(file.FullName);

                Response.End();

            }
        }catch(Exception ex)
        {

        }
      

    }

}