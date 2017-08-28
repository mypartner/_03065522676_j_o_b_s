using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_feeds : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            string id = hdelete.Value;
            if(!string.IsNullOrEmpty(id))
            {
               
                        feedsclass.deleteFeeds(int.Parse(id));
                 
                
            }
        }

    }
    protected void feed_delete(object sender, EventArgs e)
    { }
    protected void feed_add(object sender, EventArgs e)
    {
        try
        {
            feed f = new feed();
            //f.image = feedImage;
            f.longDescription = desc.Value;
            f.feedstartdate =  DateTime.Parse(Request.Form["feedstartdate"]); //DateTime.Parse(Request.Form["startdate"]);//eventstartdate.Value);// DateTime.Parse(Request.Form["eventstartdate"].ToString());
            f.feedenddate = DateTime.Parse(Request.Form["feedenddate"]); //DateTime.Parse(Request.Form["eventstartdate"]);//eventstartdate.Value);// DateTime.Parse(Request.Form["eventstartdate"].ToString());
            f.shortDescription = title.Value;//Request.Form["title"].ToString();
            HttpPostedFile postedfile = feedImage.PostedFile;
           f.image = imageToByteArray(postedfile);

            bool check = feedsclass.addfeed(f);

        }
        catch (Exception ex)
        {

        }
    }

    public static byte[] imageToByteArray(HttpPostedFile postedfile)
    {
        string filename = Path.GetFileName(postedfile.FileName);
        string fileextention = Path.GetExtension(filename);
        int size = postedfile.ContentLength;
        byte[] imgbytes = null;
        if (fileextention.ToLower() == ".jpg")
        {
            Stream stream = postedfile.InputStream;
            BinaryReader binaryreader = new BinaryReader(stream);
            imgbytes = binaryreader.ReadBytes((int)stream.Length);
        }
        return imgbytes;
    }
}
    
