using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.Linq;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Net.Mail;
using System.Net;

/// <summary>
/// Summary description for login
/// </summary>
public class jobseekerclass
{
    public jobseekerclass()
    {
        //
        // TODO: Add constructor logic here
        //
    }
    public static string signUpJobSeeker(jobSeeker u)
    {

        try
        {
            string return_msg = "";
            int userId = 0;
            string message = string.Empty;
            string constr = ConfigurationManager.ConnectionStrings["jobPortalDbConnectionString1"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("dbo.Jobseeker_Insertuser"))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@firstName", u.firstName);
                        cmd.Parameters.AddWithValue("@lastName", u.lastName);
                        cmd.Parameters.AddWithValue("@mobile", u.mobile);
                        cmd.Parameters.AddWithValue("@email", u.email);
                        cmd.Parameters.AddWithValue("@sex", u.sex);
                        cmd.Parameters.AddWithValue("@education", u.education);
                        cmd.Parameters.AddWithValue("@country", u.country);
                        cmd.Parameters.AddWithValue("@dob", u.dob);
                        cmd.Parameters.AddWithValue("@username", u.username);
                        cmd.Parameters.AddWithValue("@password", u.password);
                        SqlParameter file = new SqlParameter("@image", SqlDbType.VarBinary);
                        file.Value = u.image.ToArray();
                        cmd.Parameters.Add(file);
                        // cmd.Parameters.AddWithValue("@image",, u.image);
                        cmd.Parameters.AddWithValue("@signupdate", u.signupdate);
                        cmd.Connection = con;
                        con.Open();
                        userId = Convert.ToInt32(cmd.ExecuteScalar());
                        con.Close();
                    }
                }

                switch (userId)
                {
                    case -1:
                        message = "Username already exists.\\nPlease choose a different username.";
                        break;
                    case -2:
                        message = "Supplied email address has already been used.";
                        break;
                    default:
                        message = "";
                        SendActivationEmail(userId, u.username,u.email);
                        break;
                }

            }
            return message;
        }catch(Exception ex)
        {
            return ex.Message;
        }

    }
    private static void  SendActivationEmail(int userId,string username,string email)
    {
        string constr = ConfigurationManager.ConnectionStrings["jobPortalDbConnectionString1"].ConnectionString;
        string activationCode = Guid.NewGuid().ToString();
        using (SqlConnection con = new SqlConnection(constr))
        {
            using (SqlCommand cmd = new SqlCommand("INSERT INTO Activate_User VALUES(@id, @Activation_Code,@username,@userType)"))
            {
                using (SqlDataAdapter sda = new SqlDataAdapter())
                {
                    cmd.CommandType = CommandType.Text;
                    cmd.Parameters.AddWithValue("@id", userId);
                    cmd.Parameters.AddWithValue("@Activation_Code", activationCode);
                    cmd.Parameters.AddWithValue("@username", username);
                    cmd.Parameters.AddWithValue("@userType", "jobseeker");
                    cmd.Connection = con;
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                }
            }
        }
        using (MailMessage mm = new MailMessage("maryahchaudhry@gmail.com", email))
        {
            mm.Subject = "Account Activation";
            string body = "Hello " + username + ",";
            body += "<br /><br />Please click the following link to activate your account";
            body += "<br /><a href = '" + HttpContext.Current.Request.Url.AbsoluteUri.Replace("jobseekersignup.aspx", "UserActivationPage.aspx?ActivationCode=" + activationCode) + "'>Click here to activate your account.</a>";
            body += "<br /><br />Thanks";
            mm.Body = body;
            mm.IsBodyHtml = true;
            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.EnableSsl = true;
            NetworkCredential NetworkCred = new NetworkCredential("maryahchaudhry@gmail.com", "maria@1991");
            smtp.UseDefaultCredentials = true;
            smtp.Credentials = NetworkCred;
            smtp.Port = 587;
            smtp.DeliveryMethod = SmtpDeliveryMethod.Network;
            smtp.Send(mm);
        }
    }
    public static void updatejobseeker(jobSeeker u,int jobseekerid)
    {
        DataClassesDataContext Database = new DataClassesDataContext();
        jobSeeker jobseekr = (from x in Database.jobSeekers
                             where x.id == jobseekerid
                             select x).First();
        jobseekr.firstName = u.firstName;
        jobseekr.lastName = u.lastName;
        jobseekr.mobile = u.mobile;
        jobseekr.sex = u.sex;
        jobseekr.image = u.image;
        jobseekr.email = u.email;
        jobseekr.education = u.education;
        jobseekr.dob = u.dob;
        jobseekr.country = u.country;
            
      //  Database.jobSeekers.InsertOnSubmit(jobseekr);
        try
        {
            Database.SubmitChanges();
        }
        catch (ChangeConflictException e)
        {
            //report error, log error whatever...
        }


    }
    public static int userAuthentication(string uname, string password)
    {

        int returnid =0;
        try
        {
            DataClassesDataContext Database = new DataClassesDataContext();

            var q = (from a in Database.GetTable<jobSeeker>()
                     where a.username == uname && a.password == password
                     select new
                     {
                         a.username,
                         a.id
                     }).First();
            int x = q.id;
           if (x>0)
            {
                returnid =q.id;
            }
           

        }
        catch (Exception e)
        {
            string str = e.Message.ToString();
        }
        return returnid;
    }
    public static bool CheckUserActivation(string uname, string type)
    {

       
        try
        {
            DataClassesDataContext Database = new DataClassesDataContext();

            int count= (from a in Database.Activate_Users
                     where a.username == uname && a.userType == type
                     select a).Count();
            
            if (count > 0)
            {
                return false;
            }else
            {
                return true;
            }


        }
        catch (Exception e)
        {
            string str = e.Message.ToString();
            return false;
        }
    }
    public static int getSeekerID(string uname)
    {

        int returnid = 0;
        try
        {
            DataClassesDataContext Database = new DataClassesDataContext();

            var q = (from a in Database.GetTable<jobSeeker>()
                     where a.username == uname
                     select new
                     {
                         a.username,
                         a.id
                     }).First();
            int x = q.id;
            if (x > 0)
            {
                returnid = q.id;
            }


        }
        catch (Exception e)
        {

        }
        return returnid;
    }
    public static jobSeeker getjobseekerdata(int seekerid)
    {
        DataClassesDataContext db = new DataClassesDataContext();
        jobSeeker js = (from x in db.jobSeekers
                        where x.id == seekerid
                        select x).First();
        return js;
    }
    public static appliedjobdataclass[] getappliedjob(int  jobid)
    {
       
       
        try
        {
            DataClassesDataContext db = new DataClassesDataContext();

            var result = from apjob in db.appliedJobs
                         join jdetail in db.jobs on apjob.jobid equals jdetail.Id
                         where apjob.jobSeekerId == jobid
                         select new { appliedjob = apjob, jobdetail = jdetail};

            int count = result.Count();
            appliedjobdataclass[] appliedjobdetail = new appliedjobdataclass[count];
            int i = 0;
            foreach (var x in result)
            {
                appliedjobdetail[i] = new appliedjobdataclass();
                appliedjobdetail[i].app_id = x.appliedjob.Id;
                appliedjobdetail[i].app_jobSeekerid = x.appliedjob.jobSeekerId;
                appliedjobdetail[i].app_jobid = x.appliedjob.jobid;
                appliedjobdetail[i].app_applydate = x.appliedjob.date;
                appliedjobdetail[i].job_id = x.jobdetail.Id;
                appliedjobdetail[i].job_rid = x.jobdetail.rId;
                appliedjobdetail[i].job_jobtitle = x.jobdetail.jobTitle;
                appliedjobdetail[i].job_decription = x.jobdetail.description;
                appliedjobdetail[i].job_expecredsalary = x.jobdetail.expectedSalary;
                appliedjobdetail[i].job_posteddate = x.jobdetail.postedDate;
                appliedjobdetail[i].job_country = x.jobdetail.country;
                appliedjobdetail[i].job_city = x.jobdetail.city ;
                appliedjobdetail[i].job_jobcatagory = x.jobdetail.jobCatagory;
                appliedjobdetail[i].job_salaryperiod = x.jobdetail.salaryPeriod;
                appliedjobdetail[i].job_lastdatetoApply = x.jobdetail.lastDateToApply;
                appliedjobdetail[i].job_mineducation = x.jobdetail.minimumEducation;
                appliedjobdetail[i].job_minexperiance = x.jobdetail.minimumLevelOfExperience;
                appliedjobdetail[i].job_specificrequirment = x.jobdetail.specificRequirement;
                


                i++;

            }
            return appliedjobdetail;
        }
        catch (Exception e)
        {
            string str = e.Message.ToString();
            return null;
        }
      
    }
}