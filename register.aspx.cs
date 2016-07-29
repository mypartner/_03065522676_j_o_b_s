using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    

    protected void register_user_Click(object sender, EventArgs e)
    {
        string fname = Request.Form["firstName"];
        string lname=Request.Form["lastName"];
        string mobileno = Request.Form["mobileno"];
        string username = Request.Form["username"];
        string password = Request.Form["password"];
        string sex = Request.Form["gender"].ToString();
        string dob = Request.Form["dob"];
        string email = Request.Form["email"];
        string country = Request.Form["country"].ToString();
        string workexperiance = Request.Form["experience"].ToString();
        string education = Request.Form["education"].ToString();
        string subject = Request.Form["subjects"].ToString();

        loginUser.addUser(fname,lname,mobileno,username,password,sex,dob,email,country,workexperiance,education,subject);

    }
}