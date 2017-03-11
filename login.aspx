<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <!-- validator -->
    <link href="css/defaulttheme.css" rel="stylesheet" />
    <script src="js/formvalidator.js"></script>
    <script>

        $.validate({
            modules: 'location, date, security, file',
            onModulesLoaded: function () {
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
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="banner_1">
    </div>
    <div class="container">


        <div class="single">

            <div class="col-md-3"></div>
            <div class="single_right">

                <div class="login-form-section">


                    <div class="login-content">

                        <%-- <div class="section-title">
                            	   

                            <h3 style="">Login to your account</h3>
                        </div>
                     <%-- <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">Name <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input id="name" class="form-control col-md-7 col-xs-12" data-validate-length-range="6" data-validate-words="1-2" name="name" placeholder="both name(s) e.g Jon Doe" required="required" type="text">
                        </div>
                      </div>--%>
                        <%--<div class="col-md-3"></div>--%>

                        <div class="col-md-6">
                            <h3 style="">Login to your account</h3>
                            <div class="messagealert" id="alert_container"></div>

                            <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">Name <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input id="name" class="form-control col-md-7 col-xs-12" data-validate-length-range="6" data-validate-words="2" name="name" placeholder="both name(s) e.g Jon Doe" required="required" type="text">
                        </div>
                      </div>
                            <div class="textbox-wrap">
                                <div class="item input-group">
                                    <span class="input-group-addon " id="length" required><i class="fa fa-user"></i></span>
                                    <input type="text" id="username" style="color: black;" required="required" name="username" class="form-control" data-validate-length-range="6" data-validate-words="1-2" placeholder="both name(s) e.g Jon Doe" required="required" />
                                </div>
                            </div>


                            <div class="textbox-wrap">
                                <div class="item input-group">
                                    <span class="input-group-addon " id="pass_confirmation" required><i class="fa fa-key"></i></span>
                                    <input type="password" id="password" style="color: black;" required="required" name="password" class="form-control" placeholder="Password" data-validate-length="8" />
                                </div>
                            </div>
                            <div class="col-sm-9">
                                <div class="textbox-wrap">
                                    <div class="input-group">
                                        <label class="btn btn-warning active">
                                            Please select Login Type
                                        </label>
                                        <div class="btn-group" data-toggle="buttons">
                                            <input type="hidden" name="jobpageid" id="jobpageid" runat="server" value="" />
                                            <input type="hidden" name="jobpage" id="jobpage" runat="server" value="" />
                                            <label class="btn btn-default">
                                                <input type="radio" name="logintype" id="JobFinder" autocomplete="off" value="jobseeker">Job Seeker
                                            </label>
                                            <label class="btn btn-default">
                                                <input type="radio" name="logintype" id="recruiter" autocomplete="off" value="recruiter">
                                                Recruiter
                                            </label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <%--      <div class="col-sm-3">
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

<%--				 			<a href="#"> <u>Forgot Password?</u> </a></p>--%>
                            <%--	 </div>
					     <div class="clearfix"> </div>
			        </div>
                        </div>--%>
                        </div>


                    </div>
                </div>
            </div>
            <div class="clearfix"></div>
        </div>
        <div class="single">
            <div class="col-md-3"></div>
            <div class="col-md-6">
                <div class="login-btn">
                    <asp:Button ID="login_user" CssClass="btn btn-default" CausesValidation="false" runat="server" Text="Log in" UseSubmitBehavior="false" OnClick="login_user_Click" />

                </div>
                <a href="recruiterSignup.aspx"><u>Sign up as recruiter</u> </a>
                <a href="jobseekersignup.aspx"><u>Sign up as job seeker</u> </a>
            </div>
        </div>
    </div>
    <br />
    <!-- Custom Theme Scripts -->
    <script src="../build/js/custom.min.js"></script>
    <!-- validator -->
    <script src="../vendors/validator/validator.js"></script>

    <!-- validator -->
    <script>
        // initialize the validator function
        validator.message.date = 'not a real date';

        // validate a field on "blur" event, a 'select' on 'change' event & a '.reuired' classed multifield on 'keyup':
        $('form')
          .on('blur', 'input[required], input.optional, select.required', validator.checkField)
          .on('change', 'select.required', validator.checkField)
          .on('keypress', 'input[required][pattern]', validator.keypress);

        $('.multi.required').on('keyup blur', 'input', function () {
            validator.checkField.apply($(this).siblings().last()[0]);
        });

        $('form').submit(function (e) {
            e.preventDefault();
            var submit = true;

            // evaluate the form using generic validaing
            if (!validator.checkAll($(this))) {
                submit = false;
            }

            if (submit)
                this.submit();

            return false;
        });
    </script>
    <!-- /validator -->
</asp:Content>

