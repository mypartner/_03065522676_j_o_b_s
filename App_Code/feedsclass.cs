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
    //public static bool addfeed(feed f)
    //{
       
    //    DataClassesDataContext db = new DataClassesDataContext();
    //    db.feeds.InsertOnSubmit(f);
    //    db.SubmitChanges();
    //    return true;
    //}
    public static bool deleteFeeds(int id)
    {
        try
        {
            DataClassesDataContext db = new DataClassesDataContext();
            feed x = (from f in db.feeds
                      where f.id == id
                      select f).First();
            db.feeds.DeleteOnSubmit(x);
            db.SubmitChanges();
            return true;
        }
        catch (Exception ex)
        {
            return false;
        }
        
    }
    public static bool deleteVideo(int id)
    {
        try
        {
            DataClassesDataContext db = new DataClassesDataContext();
            video x = (from v in db.videos
                      where v.Id == id
                      select v).First();
            db.videos.DeleteOnSubmit(x);
            db.SubmitChanges();
            return true;
        }
        catch (Exception ex)
        {
            return false;
        }

    }
    public static IQueryable<feed> getFeeds()
    {
        DataClassesDataContext db = new DataClassesDataContext();
       IQueryable<feed> var_feeds = from x in db.feeds
                        //where DateTime.Compare(DateTime.Now, DateTime.Parse(x.feedenddate.ToString())) > 1
                        select x;

        return var_feeds;
    }

    public static bool addfeed(feed f)
    {
        try
        {
            DataClassesDataContext db = db = new DataClassesDataContext();
            //db.event_calenders.InsertOnSubmit(ev);
            //db.SubmitChanges();
            //return true;
            int count = (from x in db.feeds
                         where x.shortDescription == f.shortDescription
                         select x).Count();
            if (count == 0)
            {
                db.feeds.InsertOnSubmit(f);
                db.SubmitChanges();
                return true;
            }
            else
            {
                return false;
            }

        }
        catch (Exception ex)
        {
            return false;
        }
    }
    public static IQueryable<video> getVideos()
    {
        DataClassesDataContext db = new DataClassesDataContext();
        IQueryable<video> var_video = from x in db.videos
                                         //where DateTime.Compare(DateTime.Now, DateTime.Parse(x.feedenddate.ToString())) > 1
                                     select x;

        return var_video;
    }

    public static bool addVideo(video v)
    {
        try
        {
            DataClassesDataContext db = db = new DataClassesDataContext();
            
            int count = (from x in db.videos
                         where x.video_title == v.video_title
                         select x).Count();
            if (count == 0)
            {
                db.videos.InsertOnSubmit(v);
                
                db.SubmitChanges();
                return true;
            }
            else
            {
                return false;
            }

        }
        catch (Exception ex)
        {
            return false;
        }
    }
}