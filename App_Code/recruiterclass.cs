using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.Linq;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;

/// <summary>
/// Summary description for recruiter
/// </summary>
public class recruiterclass
{
    public recruiterclass()
    {
        //
        // TODO: Add constructor logic here
        
    }
    public static string recruiterSignUp(recruiter u)
    {
        //DataClassesDataContext Database = new DataClassesDataContext();
        //Database.recruiters.InsertOnSubmit(u);
        //try
        //{
        //    Database.SubmitChanges();
        //}
        //catch (ChangeConflictException e)
        //{
        //    //report error, log error whatever...
        //}
        try
        {
            string message = string.Empty;
            int userId = 0;
            string constr = ConfigurationManager.ConnectionStrings["jobPortalDbConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("Jp.recruiter_Insertuser"))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@companyName", u.companyName);
                        cmd.Parameters.AddWithValue("@yearOfEstablishment", u.yearOfEstablishment);
                        cmd.Parameters.AddWithValue("@briefProfile", u.briefProfile);
                        cmd.Parameters.AddWithValue("@contactPerson", u.contactPerson);
                        cmd.Parameters.AddWithValue("@phone", u.phone);
                        cmd.Parameters.AddWithValue("@fax", u.fax);
                        cmd.Parameters.AddWithValue("@email", u.email);
                        cmd.Parameters.AddWithValue("@website", u.website);
                        cmd.Parameters.AddWithValue("@emailVerification", u.emailVerification);
                        cmd.Parameters.AddWithValue("@userName", u.userName);
                        cmd.Parameters.AddWithValue("@password", u.password);
                        SqlParameter file = new SqlParameter("@logo", SqlDbType.VarBinary);
                        file.Value = u.logo.ToArray();
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
                        SendActivationEmail(userId, u.userName, u.email);
                        break;
                }

            }
            return message;
        }catch(Exception ex)
        {
            return ex.Message ;
        }


    }
    public static int recruiterAuthentication(string uname, string password)
    {

        int returnid = 0;
        try
        {
            DataClassesDataContext Database = new DataClassesDataContext();

            var q = (from a in Database.GetTable<recruiter>()
                     where a.userName == uname && a.password == password
                     select new
                     {
                         a.userName,
                         a.Id
                     }).First();
            int x = q.Id;
            if (x > 0)
            {
                returnid = q.Id;
            }


        }
        catch (Exception e)
        {

        }
        return returnid;
    }
    private static void SendActivationEmail(int userId, string username, string email)
    {
        string constr = ConfigurationManager.ConnectionStrings["jobPortalDbConnectionString"].ConnectionString;
        string activationCode = Guid.NewGuid().ToString();
        using (SqlConnection con = new SqlConnection(constr))
        {
            using (SqlCommand cmd = new SqlCommand("INSERT INTO Jp.Activate_User VALUES(@id, @Activation_Code,@username,@userType)"))
            {
                using (SqlDataAdapter sda = new SqlDataAdapter())
                {
                    cmd.CommandType = CommandType.Text;
                    cmd.Parameters.AddWithValue("@id", userId);
                    cmd.Parameters.AddWithValue("@Activation_Code", activationCode);
                    cmd.Parameters.AddWithValue("@username", username);
                    cmd.Parameters.AddWithValue("@userType", "recruiter");
                    cmd.Connection = con;
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                }
            }
        }
        using (MailMessage mm = new MailMessage("vakaskhan341@gmail.com", email))
        {
            mm.Subject = "Account Activation";
            string body = "Hello " + username + ",";
            body += "<br /><br />Please click the following link to activate your account";
            body += "<br /><a href = '" + HttpContext.Current.Request.Url.AbsoluteUri.Replace("recruiterSignup.aspx", "UserActivationPage.aspx?ActivationCode=" + activationCode) + "'>Click here to activate your account.</a>";
            body += "<br /><br />Thanks";
            mm.Body = body;
            mm.IsBodyHtml = true;
            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.EnableSsl = true;
            NetworkCredential NetworkCred = new NetworkCredential("vakaskhan341@gmail.com", "Waqaskhan123");
            smtp.UseDefaultCredentials = true;
            smtp.Credentials = NetworkCred;
            smtp.Port = 587;
            smtp.DeliveryMethod = SmtpDeliveryMethod.Network;
            smtp.Send(mm);
        }
    }
    static public void addJob(job k)
    {
        DataClassesDataContext Database = new DataClassesDataContext();
        Database.jobs.InsertOnSubmit(k);
        try
        {
            Database.SubmitChanges();
        }
        catch (ChangeConflictException e)
        {
            //report error, log error whatever...
        }

    }
    //updating jobs
    public static void updateJobs(job r, int id)
    {
        DataClassesDataContext db = new DataClassesDataContext();
        var ra = (from x in db.jobs
                  where x.Id == id
                  select x).First();
        ra.jobTitle = r.jobTitle;
        ra.expectedSalary = r.expectedSalary;
        ra.country = r.country;
        ra.city = r.city;
        ra.salaryPeriod = r.salaryPeriod;
        ra.minimumEducation = r.minimumEducation;
        ra.minimumLevelOfExperience = r.minimumLevelOfExperience;
        ra.specificRequirement = r.specificRequirement;
        ra.description = r.description;
         
      
              db.SubmitChanges();
          
    }
    public static int getRecruiterID(string uname)
    {

        int returnid = 0;
        try
        {
            DataClassesDataContext Database = new DataClassesDataContext();

            var q = (from a in Database.GetTable<recruiter>()
                     where a.userName == uname
                     select new
                     {
                         a.userName,
                         a.Id
                     }).First();
            int x = q.Id;
            if (x > 0)
            {
                returnid = q.Id;
            }


        }
        catch (Exception e)
        {

        }
        return returnid;
    }
    public static IQueryable<job> getAllPostedJobbyRec(int rid)
    {

        IQueryable<job> jobs=null;
        try
        {
            DataClassesDataContext Database = new DataClassesDataContext();

            jobs = (from a in Database.GetTable<job>()
                     where a.rId == rid
                     select a);
           
          

        }
        catch (Exception e)
        {

        }
        return jobs; 
    }
}