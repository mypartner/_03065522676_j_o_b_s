using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
///  by waqas khan
///  applied job and jobseekers class to get jobs and applier of the job join
/// </summary>
public class jobsapplierclass
{
   public  int ap_id;
    public int ap_jobseekerid;
    public int ap_jobid;
    public DateTime ap_date;
    public int js_id;
    public string js_firstname;
    public string js_lastname;
    public byte[] js_cv;
    public string js_mobile;
    public string js_email;
    public string js_sex;
    public string js_education;
    public string js_country;
    public string js_dob;
    public byte[] js_image;

    public jobsapplierclass()
    {
       ap_id=0;
       ap_jobseekerid=0;
       ap_jobid=0;
       ap_date=DateTime.Now;
       js_id=0;
       js_firstname="";
       js_lastname="";
        js_cv = null; ;
       js_mobile="";
       js_email="";
       js_sex="";
       js_education="";
       js_country="";
       js_dob="";
       js_image=null;
}
}