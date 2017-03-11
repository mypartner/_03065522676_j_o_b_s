using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for feedsclass
/// </summary>
public class feedsclass
{
    public feedsclass()
    {
        //
        // TODO: Add constructor logic here
        //
    }
    public static void addfeed(feed f)
    {
       
        DataClassesDataContext db = new DataClassesDataContext();
        db.feeds.InsertOnSubmit(f);
        db.SubmitChanges();
    }
    public static IQueryable<feed> getFeeds()
    {
        DataClassesDataContext db = new DataClassesDataContext();
       IQueryable<feed> var_feeds = from x in db.feeds
                        where DateTime.Compare(DateTime.Now, DateTime.Parse(x.feedenddate.ToString())) > 1
                        select x;

        return var_feeds;
    }
}