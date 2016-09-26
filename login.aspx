﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <!-- validator -->
    <link href="css/defaulttheme.css" rel="stylesheet" />
    <script src="js/formvalidator.js"></script>
    <script>

  $.validate({
    modules : 'location, date, security, file',
    onModulesLoaded : function() {
      $('#country').suggestCountry();
    }
  });

  // Restrict presentation length
  $('#username').restrictLength($('#pres-max-length'));
        //
  function ShowMessage(message, messagetype) {
      var cssclass;
      switch (messagetype) {
          case 'Success':
              cssclass = 'alert-success'
              break;
          case 'Error':
              cssclass = 'alert-danger'
              break;
          case 'Warning':
              cssclass = 'alert-warning'
              break;
          default:
              cssclass = 'alert-info'
      }
      $('#alert_container').append('<div id="alert_div" style="margin-top:40px;margin-left:0px;width:100%; -webkit-box-shadow: 3px 4px 6px #999;" class="alert fade in ' + cssclass + '"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a><strong>' + messagetype + '!</strong> <span>' + message + '</span></div>');
  }
</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="banner_1">
        </div>
<div class="container">
                                       

    <div class="single">   
	   
        <div class="col-md-3"></div>
	 <div class="col-md-9 single_right">
                             <div class="messagealert" id="alert_container" >  </div>                	  

	 	   <div class="login-form-section">

                <div class="login-content">
                    
                        <div class="section-title">
                            	   

                            <h3>Sign in</h3>
                        </div>
                        <div class="textbox-wrap">
                            <div class="input-group">
                                <span class="input-group-addon " id="length" required><i class="fa fa-user"></i></span>
                                <input type="text" id="username" required="required" name="username" class="form-control" placeholder="Username" data-validation="length alphanumeric" 
		 data-validation-length="3-12" 
		 data-validation-error-msg="Incorrect format ! " />
                            </div>
                        </div>

                        <div class="textbox-wrap">
                            <div class="input-group">
                                <span class="input-group-addon " id="pass_confirmation" required><i class="fa fa-key"></i></span>
                                <input type="password" id="password" required="required" name="password" class="form-control " placeholder="Password" data-validation="length alphanumeric"
                                     data-validation-error-msg="Password is not strong ! " />
                            </div>
                        </div>
                    <div class="col-sm-9">
                     <div class="textbox-wrap">
                            <div class="input-group">
                                 <label class="btn btn-warning active">
                                             Please select Login Type
                                          </label>
                               <div class="btn-group" data-toggle="buttons">
                                           <input type="hidden" name="jobpageid" id="jobpageid" runat="server" value=""/>
                                           <input type="hidden" name="jobpage" id="jobpage" runat="server" value=""/>       
                                   <label class="btn btn-default">
                                            <input type="radio" name="logintype" id="JobFinder" autocomplete="off" value="jobseeker" >Job Seeker
                                          </label>
                                          <label class="btn btn-default">
                                            <input type="radio" name="logintype" id="recruiter" autocomplete="off" value="recruiter" > Recruiter
                                          </label>
                            </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-3">
                     <div class="forgot">
						
				 		  <div class="login-para">
                               <ul class="nav pull-right">
                                  <li class="dropdown" id="menuLogin">
                                    <a class="dropdown-toggle" href="#" data-toggle="dropdown" id="navLogin">Sign Up</a>
                                    <div class="dropdown-menu" style="padding:17px;">
                                      <p>  <a href="recruiterSignup.aspx"> <u>Sign up as recruiter</u> </a></p>  
                               <p>  <a href="jobseekersignup.aspx"> <u>Sign up as job seeker</u> </a> </p>
                                    
                                    </div>
                                  </li>
                                </ul>
                               <p> 

				 			<a href="#"> <u>Forgot Password?</u> </a></p>
				 		 </div>
					     <div class="clearfix"> </div>
			        </div>
                        </div>
					<div class="login-btn">
                        <asp:Button ID="login_user" runat="server" Text="Log in" OnClick="login_user_Click" />
					 
					</div>
					
                </div>
         </div>
   </div>
  <div class="clearfix"> </div>
 </div>
    </div>

       
</asp:Content>

