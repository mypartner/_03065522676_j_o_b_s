<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="usersignup.aspx.cs" Inherits="userSignup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
        <script src="js/formvalidator.js"></script>
    <script src="js/jquery-1.10.2.min.js"></script>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery-form-validator/2.3.26/jquery.form-validator.min.js"></script>
     <script>
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
      $('#alert_container').append('<div id="alert_div" style="margin-top:40px;margin-left:10px;width:90%; -webkit-box-shadow: 3px 4px 6px #999;" class="alert fade in ' + cssclass + '"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a><strong>' + messagetype + '!</strong> <span>' + message + '</span></div>');
          }

          $.validate({
              modules: 'location, date, security, file',
              onModulesLoaded: function () {
                  $('#country').suggestCountry();
              }
          });

          // Restrict presentation length
          $('#description').restrictLength($('#pres-max-length'));

        

        //phone number validations

</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    
<div class="container">
    <div class="single">  
        <div class="col-md-2"></div>
	 <div class="col-md-9 single_right">
                 <div class="messagealert" id="alert_container" >  </div>
	   <div class="form-container">
    

        <h2>Create an account</h2>
        <div class="newmargin">

                <div class="row">
                     <div class="form-group col-md-12">
                    
                         <label>First name</label>
                        <input type="text" id="firstname" name="firstname" class="form-control input-sm shorttb" data-validation="length alphanumeric" 
		 data-validation-length="3-15" 
		 data-validation-error-msg="Firstname is not in correct format !" required/>
                     </div>
                    
                </div>
                 <div class="row">
                     <div class="form-group col-md-12">
                        <label >Lastname</label>

                        <input type="text" id="lastname" name="lastname" class="form-control input-sm shorttb" data-validation="length alphanumeric" 
		 data-validation-length="3-15" 
		 data-validation-error-msg="Lastname is not in correct format !" required/>
                     </div>

                </div>
                <div class="row">
                     <div class="form-group col-md-12">
                        <label >Mobile</label>

                        <input type="text" id="mobile" name="mobile" class="form-control input-sm shorttb" data-validation="length alphanumeric" 
		 data-validation-length="3-15" 
		 data-validation-error-msg="User name has to be a digit(0-9)" required/>
                     </div>

                </div>
                <div class="row">
                     <div class="form-group col-md-12">
                        <label >Email</label>

                        <input type="text" id="email" name="email" class="form-control input-sm shorttb" data-validation="email"/>

                    </div>
                </div>
                <div class="row">
                     <div class="form-group col-md-12">
                        <label class="col-md-2 control-lable" for="lastname" >Sex</label>
                     <div class="col-md-9">
                        
                              <label><input type="radio" name="sex" class="radio-inline" value="Male" />Male</label>
                            
                              <label><input type="radio" name="sex" class="radio-inline" value="Female" style="margin-left:18px"/>Female</label>
                            
                     </div>
                         </div>
                    </div>
             
                <div class="row">
                     <div class="form-group col-md-12">
                        <label>Education</label>
         
                        <input type="text" id="education" name="education" class="form-control input-sm shorttb" data-validation="length alphanumeric" 
		 data-validation-length="3-15" 
		 data-validation-error-msg="Enter correct format !"/>

                    </div>
                </div>
                <div class="row">
                     <div class="form-group col-md-12">
                        <label >Country</label>
 
                        <input type="text" id="country" name="country" class="form-control input-sm shorttb" data-validation="country" required/>
                     </div>
   
                </div>
                <div class="row">
                     <div class="form-group col-md-12">
                        <label >Date of birth</label>
 
                        <input type="date" id="dob" name="dob" class="form-control input-sm shorttb" required/>

                    </div>
                </div>
                <div class="row">
                     <div class="form-group col-md-12">
                        <label>Username</label>
      
                        <input type="text" id="username" name="username" class="form-control input-sm shorttb" data-validation="length alphanumeric" 
		 data-validation-length="3-15" 
		 data-validation-error-msg="Enter correct username" required/>

                    </div>
                </div>
             <div class="row">
                     <div class="form-group col-md-12">
                        <label>Password</label>
     
                        <input type="password" id="password" name="password" class="form-control input-sm shorttb" data-validation="strength" 
		 data-validation-strength="2" required/>
      
                    </div>
                </div>

                 <div class="row">
                     <div class="form-group col-md-12">
                        <label class="col-md-3 control-lable" for="Imageupload">Upload your image</label>
                     <div class="col-md-9">
                         <asp:FileUpload ID="imageupload" runat="server" data-validation="mime size required" 
		 data-validation-allowing="jpg, png" 
		 data-validation-max-size="300kb" 
		 data-validation-error-msg-required="No image selected" />
                     </div>
                    </div>
                </div>
               
                			          <input type="submit" value="Create an account" class="btn btn-danger " style="margin-bottom:10px"/>
           
	    </div>
    </div>
 </div>
</div>
    </div>
</asp:Content>

