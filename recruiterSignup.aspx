<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="recruiterSignup.aspx.cs" Inherits="recruiterSignup" %>

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
          $('#presentation').restrictLength($('#pres-max-length'));

        

        //phone number validations

</script>
 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


          <br />
<div class="container" >
     <div class="single">   
 <div class="col-md-2"></div>
	 <div class="col-md-9 single_right">
         <div class="messagealert" id="alert_container" >  </div> 
	   <div class="form-container" >
       
        <h2>Recruiter SignUp</h2>
           <div class="newmargin">
               <!--Company name-->
           <div class="row">
           <div class="col-md-12">
           
            <div class="form-group col-md-12 ">
                
                    <label  for="companyname">Company Name</label>
                    <input type="text" id="companyname" name="companyname" class="form-control input-sm shorttb"  data-validation="length alphanumeric" 
		 data-validation-length="3-15" 
		 data-validation-error-msg="Enter company name again !" required/>

            </div>
         </div>
               </div>
               <div class="row">
           <div class="col-md-12">
          
            <div class="form-group col-md-12">
                <label  for="establishyear">Year of Establishment</label>
                    <input type="date" id="establishyear" name="establishyear" class="form-control input-sm shorttb" 
                        required data-validation="required" 
		 data-validation-error-msg="Select year of establishment !"
		 />
                </div>
            </div>

               </div>
       <!--end Company name-->

                        <!--Contact-->
           <div class="row">
           <div class="col-md-12">
           
            <div class="form-group col-md-12 ">
                
                    <label  for="contactoerson">Mobile</label>
                    <input type="text" id="contact" name="contactoerson" required class="form-control input-sm shorttb" data-validation="length alphanumeric" 
		 data-validation-length="3-15" 
		 data-validation-error-msg="Enter Your Mobile again !" />

            </div>
         </div>
               </div>
           <div class="row">
           <div class="col-md-12">
          
            <div class="form-group col-md-12">
                <label  for="phone">Phone</label>
                    <input type="text" id="phone" name="phone" class="form-control input-sm shorttb" 
                        required
		 data-validation="length alphanumeric" 
		 data-validation-length="3-15" 
		 data-validation-error-msg="Enter phone no. again !"/>
                </div>
            </div>

               </div>
       <!--end Contact-->
       
              <!--Start-->
           <div class="row">
           <div class="col-md-12">
           
            <div class="form-group col-md-12 ">
                
                    <label  for="fax">Fax</label>
                    <input type="text" id="fax" name="fax"  class="form-control input-sm shorttb" data-validation="length alphanumeric" 
		 data-validation-length="3-15" 
		 data-validation-error-msg="Enter fax again !"  />

            </div>
         </div>
               </div>
           <div class="row">
           <div class="col-md-12">
          
            <div class="form-group col-md-12">
                <label  for="email">Email</label>
                    <input type="text" id="email" name="email" class="form-control input-sm shorttb" 
                        required
		 data-validation="email"/>
                </div>
            </div>

               </div>
       <!--end -->

             <!--Start-->
           <div class="row">
           <div class="col-md-12">
           
            <div class="form-group col-md-12 ">
                
                    <label  for="website">Website</label>
                    <input type="text"  id="website" name="website" required class="form-control input-sm shorttb" data-validation="required" 
		 data-validation-error-msg="Enter your company website !"/>

            </div>
         </div>
               </div>
     
       <!--end -->


                <div class="row">
           <div class="col-md-12">
               <div class="form-group col-md-12 ">
                         <label  for="description">Brief Description</label>
                    (<span id="pres-max-length">100</span> characters left)
          
                    <textarea rows="4" name="description" id="description" class="form-control input-sm shorttb" ></textarea>
                     </div>
                         
                    </div>
                </div>

            <div class="row">
                      <div class="col-md-12">
               <div class="form-group col-md-12 ">
                        <label  for="username">Username</label>

                  <input type="text" id="username" name="username" class="form-control input-sm shorttb" required data-validation="length alphanumeric" 
		 data-validation-length="3-15" 
		 data-validation-error-msg="Enter correct username !"/>
                     </div>
                         
                    </div>
                </div>
            <div class="row">
                      <div class="col-md-12">
               <div class="form-group col-md-12 ">
                        <label  for="password">Password</label>

                   <input type="password" id="password" name="password" class="form-control input-sm shorttb" data-validation="strength" 
		 data-validation-strength="2" required/>
                     </div>
                         
                    </div>
                </div>
                 <div class="row">
                      <div class="col-md-12">
               <div class="form-group col-md-12 ">
                        <label  for="logo">Upload Company image</label>
            
                         <asp:FileUpload ID="logo" runat="server" data-validation="required" 
		 data-validation-error-msg="Choose company logo !" />
                     </div>
                    </div>
                </div>
                
               
                			          <input type="submit" value="Post your Profile" class="btn btn-danger "/>

	        
	    </div>
    </div>
</div>
    </div>
    </div>
</asp:Content>

