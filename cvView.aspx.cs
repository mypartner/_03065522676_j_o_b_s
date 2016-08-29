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
       Response.Write(userprofile.getSeekerCv(8));
        FileInfo file = new FileInfo(HttpContext.Current.Server.MapPath("/cvs/myfile2.pdf"));

        Response.ClearContent();

        Response.AddHeader("Content-Disposition", "inline;filename=" + file.Name);

        Response.AddHeader("Content-Length", file.Length.ToString());

        Response.ContentType = "application/pdf";

        Response.TransmitFile(file.FullName);

        Response.End();

    }

}