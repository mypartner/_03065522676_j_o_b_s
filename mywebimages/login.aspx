<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="banner_1">
        </div>
<div class="container">
    <div class="single">  
	   <div class="col-md-4">
	   	  <div class="col_3">
	   	  	<h3>Todays Jobs</h3>
	   	  	<ul class="list_1">
	   	  		<li><a href="#">Department of Health - Western Australia</a></li>
	   	  		<li><a href="#">Australian Nursing Agency currently require experiences</a></li>		
	   	  		<li><a href="#">Russia Nursing Agency currently require experiences</a></li>
	   						
	   	  	</ul>
	   	  </div>
	 </div>
	 <div class="col-md-8 single_right">
	 	   <div class="login-form-section">
                <div class="login-content">
                   
                        <div class="section-title">
                            <h3>LogIn to your Account</h3>
                        </div>
                        <div class="textbox-wrap">
                            <div class="input-group">
                                <span class="input-group-addon "><i class="fa fa-user"></i></span>
                                <input type="text" required="required" name="username" data-validate-length-range="6" data-validate-words="2" class="form-control" placeholder="Username"/>
                            </div>
                        </div>
                        <div class="textbox-wrap">
                            <div class="input-group">
                                <span class="input-group-addon "><i class="fa fa-key"></i></span>
                                <input type="password" required="required" name="password" class="form-control " placeholder="Password"/>
                            </div>
                        </div>
                     <div class="textbox-wrap">
                            <div class="input-group">
                                 <label class="btn btn-warning active">
                                             Please select Login Type
                                          </label>
                               <div class="btn-group" data-toggle="buttons">
                                           <input type="hidden" name="jobpageid" id="jobpageid" runat="server" value=""/>
                                           <input type="hidden" name="jobpage" id="jobpage" runat="server" value=""/>       
                                   <label class="btn btn-default">
                                            <input type="radio" name="logintype" id="JobFinder" autocomplete="off" value="jobseeker"/>Job Seeker
                                          </label>
                                          <label class="btn btn-default">
                                            <input type="radio" name="logintype" id="recruiter" autocomplete="off" value="recruiter"/> Recruiter
                                          </label>
                            </div>
                            </div>
                        </div>
                    
                     <div class="forgot">
						
				 		  <div class="login-para">
                               <ul class="nav pull-right">
                                  <li class="dropdown" id="menuLogin">
                                    <a class="dropdown-toggle" href="#" data-toggle="dropdown" id="navLogin">Sign Up</a>
                                    <div class="dropdown-menu" style="padding:17px;">
                                      <p>  <a href="recruiterSignup.aspx"> <u>Sign up as recruiter</u> </a></p>  
                               <p>  <a href="userSignup.aspx"> <u>Sign up as job seeker</u> </a> </p>
                                      
                                    </div>
                                  </li>
                                </ul>
                               <p> 

				 			<a href="#"> <u>Forgot Password?</u> </a></p>
				 		 </div>
					     <div class="clearfix"> </div>
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

