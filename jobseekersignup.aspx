<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="jobseekersignup.aspx.cs" Inherits="userSignup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script>
        function hidesignupform(div,msg) {

            $(div).hide("slow", function () {
                // Animation complete.
                ShowMessage(msg, "");
            });
               

        }

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
        }
    </script>
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  

<div class="container">
    <div class="single"> 
        
        <div class="messagealert" id="alert_container" >  </div>  
	   <div class="form-container" style="margin-top:3%">
        

        <h2>Sign up Your Jobseeker Profile</h2>
        
                <div class="row">
                   <div class="item form-group  ">
                
                <label class="control-label col-md-3 col-sm-3 col-xs-12"  for="companyname">First Name</label>
                <div class="col-md-6 col-sm-6 col-xs-12">
                     
                        <input type="text" id="firstname" placeholder="Enter your firstname" required name="firstname" class="form-control input-sm"/>
                     </div>
                   </div>
                </div>
                 <div class="row">
                     <div class="item form-group  ">
                
                <label class="control-label col-md-3 col-sm-3 col-xs-12"  for="companyname">Last Name</label>
                <div class="col-md-6 col-sm-6 col-xs-12">
                     
                        <input type="text" id="lastname" name="lastname" required placeholder="Enter your lastname" class="form-control input-sm"/>
                     
                    </div>
                </div>
                     </div>
                <div class="row">
                     <div class="item form-group  ">
                
                <label class="control-label col-md-3 col-sm-3 col-xs-12"  for="mobile">Mobile</label>
                <div class="col-md-6 col-sm-6 col-xs-12">
                   
                        <input type="number" id="mobile" required="required" placeholder="Enter phone number" name="mobile" class="form-control input-sm"/>
                     </div>
                    
                </div>
                    </div>
           <br />
                <div class="row">
                     <div class="item form-group  ">
                
                <label class="control-label col-md-3 col-sm-3 col-xs-12"  for="email">Email</label>
                <div class="col-md-6 col-sm-6 col-xs-12">
                        <input type="email" id="email" required="required" placeholder="example@domain.com" name="email" class="form-control input-sm"/>
                     </div>
                    </div>
                </div>
                <div class="row">
                     <div class="item form-group  ">
                
                <label class="control-label col-md-3 col-sm-3 col-xs-12"  for="mobile">Gender</label>
                <div class="col-md-6 col-sm-6 col-xs-12">
                        
                              <label><input type="radio" name="sex" class="radio-inline" value="Male" />Male</label>
                            
                              <label><input type="radio" name="sex" class="radio-inline" value="Female"/>Female</label>
                            
                     </div>
                    </div>
                </div>
           <br />
                <div class="row">
                     <div class="item form-group  ">
                
                <label class="control-label col-md-3 col-sm-3 col-xs-12"  for="mobile">Education</label>
                <div class="col-md-6 col-sm-6 col-xs-12">
                        <input type="text" placeholder="Enter your education" required="required" id="education" name="education" class="form-control input-sm"/>
                     </div>
                    </div>
                </div>
                <div class="row">
                    <div class="item form-group  ">
                
                <label class="control-label col-md-3 col-sm-3 col-xs-12"  for="mobile">Country</label>
                <div class="col-md-6 col-sm-6 col-xs-12">
                        <input type="text" id="country" placeholder="Select your country" required="required" name="country" class="form-control input-sm"/>
                     </div>
                    </div>
                </div>
                <div class="row">
                     <div class="item form-group  ">
                
                <label class="control-label col-md-3 col-sm-3 col-xs-12"  for="mobile">Date of birth</label>
                <div class="col-md-6 col-sm-6 col-xs-12">
                        <input type="" id="dob" required="required" placeholder="Select your Date of birth" name="dob" class="form-control input-sm"/>
                     </div>
                    </div>
                </div>
           <br />
                <div class="row">
                     <div class="item form-group  ">
                
                <label class="control-label col-md-3 col-sm-3 col-xs-12"  for="mobile">Username</label>
                <div class="col-md-6 col-sm-6 col-xs-12">
                        <input type="text" id="username" placeholder="Enter username" required="required" value="" name="username" class="form-control input-sm"/>
                     </div>
                    </div>
                </div>
             <div class="row">
                     <div class="item form-group  ">
                
                <label class="control-label col-md-3 col-sm-3 col-xs-12"  for="mobile">Password</label>
                <div class="col-md-6 col-sm-6 col-xs-12">
                        <input type="password" id="password" value="" required="required" placeholder="Enter your password" name="password" class="form-control input-sm"/>
                     </div>
                    </div>
                </div>

                 <div class="row">
                     <div class="item form-group  ">
                
                <label class="control-label col-md-3 col-sm-3 col-xs-12"  for="mobile">Upload your image</label>
                <div class="col-md-6 col-sm-6 col-xs-12">
                         <asp:FileUpload ID="imageupload" runat="server" required=""/>
                     </div>
                    </div>
                </div>
           <br />
            <asp:Button ID="Button1" runat="server" Text="Sign Up" class="btn btn-danger " OnClick="Signup_button"/>
                			          <%--<input type="submit" value="Sign Up" class="btn btn-danger " />--%>
	    </div>
    </>
 </div>
</div>
     <!-- jQuery -->
    <script src="../vendors/jquery/dist/jquery.min.js"></script>

    <!-- bootstrap-daterangepicker -->
    <script src="js/moment/moment.min.js"></script>
    <script src="js/datepicker/daterangepicker.js"></script>
   <!-- validator -->
    <script src="../vendors/validator/validator.js"></script>

     <script>
        function signup(){
            <%
        //Response.Redirect("jobseekerdashboard.aspx");
        %>
        }
    </script>
    <!-- bootstrap-daterangepicker -->
    <script>
      $(document).ready(function() {
        var cb = function(start, end, label) {
          console.log(start.toISOString(), end.toISOString(), label);
          $('#reportrange_right span').html(start.format('MMMM D, YYYY') + ' - ' + end.format('MMMM D, YYYY'));
        };

        var optionSet1 = {
          startDate: moment().subtract(29, 'days'),
          endDate: moment(),
          minDate: '01/01/2012',
          maxDate: '12/31/2015',
          dateLimit: {
            days: 60
          },
          showDropdowns: true,
          showWeekNumbers: true,
          timePicker: false,
          timePickerIncrement: 1,
          timePicker12Hour: true,
          ranges: {
            'Today': [moment(), moment()],
            'Yesterday': [moment().subtract(1, 'days'), moment().subtract(1, 'days')],
            'Last 7 Days': [moment().subtract(6, 'days'), moment()],
            'Last 30 Days': [moment().subtract(29, 'days'), moment()],
            'This Month': [moment().startOf('month'), moment().endOf('month')],
            'Last Month': [moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month')]
          },
          opens: 'right',
          buttonClasses: ['btn btn-default'],
          applyClass: 'btn-small btn-primary',
          cancelClass: 'btn-small',
          format: 'MM/DD/YYYY',
          separator: ' to ',
          locale: {
            applyLabel: 'Submit',
            cancelLabel: 'Clear',
            fromLabel: 'From',
            toLabel: 'To',
            customRangeLabel: 'Custom',
            daysOfWeek: ['Su', 'Mo', 'Tu', 'We', 'Th', 'Fr', 'Sa'],
            monthNames: ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December'],
            firstDay: 1
          }
        };

        $('#reportrange_right span').html(moment().subtract(29, 'days').format('MMMM D, YYYY') + ' - ' + moment().format('MMMM D, YYYY'));

        $('#reportrange_right').daterangepicker(optionSet1, cb);

        $('#reportrange_right').on('show.daterangepicker', function() {
          console.log("show event fired");
        });
        $('#reportrange_right').on('hide.daterangepicker', function() {
          console.log("hide event fired");
        });
        $('#reportrange_right').on('apply.daterangepicker', function(ev, picker) {
          console.log("apply event fired, start/end dates are " + picker.startDate.format('MMMM D, YYYY') + " to " + picker.endDate.format('MMMM D, YYYY'));
        });
        $('#reportrange_right').on('cancel.daterangepicker', function(ev, picker) {
          console.log("cancel event fired");
        });

        $('#options1').click(function() {
          $('#reportrange_right').data('daterangepicker').setOptions(optionSet1, cb);
        });

        $('#options2').click(function() {
          $('#reportrange_right').data('daterangepicker').setOptions(optionSet2, cb);
        });

        $('#destroy').click(function() {
          $('#reportrange_right').data('daterangepicker').remove();
        });

      });
    </script>

    <script>
      $(document).ready(function() {
        var cb = function(start, end, label) {
          console.log(start.toISOString(), end.toISOString(), label);
          $('#reportrange span').html(start.format('MMMM D, YYYY') + ' - ' + end.format('MMMM D, YYYY'));
        };

        var optionSet1 = {
          startDate: moment().subtract(29, 'days'),
          endDate: moment(),
          minDate: '01/01/2012',
          maxDate: '12/31/2015',
          dateLimit: {
            days: 60
          },
          showDropdowns: true,
          showWeekNumbers: true,
          timePicker: false,
          timePickerIncrement: 1,
          timePicker12Hour: true,
          ranges: {
            'Today': [moment(), moment()],
            'Yesterday': [moment().subtract(1, 'days'), moment().subtract(1, 'days')],
            'Last 7 Days': [moment().subtract(6, 'days'), moment()],
            'Last 30 Days': [moment().subtract(29, 'days'), moment()],
            'This Month': [moment().startOf('month'), moment().endOf('month')],
            'Last Month': [moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month')]
          },
          opens: 'left',
          buttonClasses: ['btn btn-default'],
          applyClass: 'btn-small btn-primary',
          cancelClass: 'btn-small',
          format: 'MM/DD/YYYY',
          separator: ' to ',
          locale: {
            applyLabel: 'Submit',
            cancelLabel: 'Clear',
            fromLabel: 'From',
            toLabel: 'To',
            customRangeLabel: 'Custom',
            daysOfWeek: ['Su', 'Mo', 'Tu', 'We', 'Th', 'Fr', 'Sa'],
            monthNames: ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December'],
            firstDay: 1
          }
        };
        $('#reportrange span').html(moment().subtract(29, 'days').format('MMMM D, YYYY') + ' - ' + moment().format('MMMM D, YYYY'));
        $('#reportrange').daterangepicker(optionSet1, cb);
        $('#reportrange').on('show.daterangepicker', function() {
          console.log("show event fired");
        });
        $('#reportrange').on('hide.daterangepicker', function() {
          console.log("hide event fired");
        });
        $('#reportrange').on('apply.daterangepicker', function(ev, picker) {
          console.log("apply event fired, start/end dates are " + picker.startDate.format('MMMM D, YYYY') + " to " + picker.endDate.format('MMMM D, YYYY'));
        });
        $('#reportrange').on('cancel.daterangepicker', function(ev, picker) {
          console.log("cancel event fired");
        });
        $('#options1').click(function() {
          $('#reportrange').data('daterangepicker').setOptions(optionSet1, cb);
        });
        $('#options2').click(function() {
          $('#reportrange').data('daterangepicker').setOptions(optionSet2, cb);
        });
        $('#destroy').click(function() {
          $('#reportrange').data('daterangepicker').remove();
        });
      });
    </script>

    <script>
      $(document).ready(function() {
      
          $('#dob').daterangepicker({
          singleDatePicker: true,
          calender_style: "picker_2"
        }, function(start, end, label) {
          console.log(start.toISOString(), end.toISOString(), label);
        });
     
       
      });
    </script>
      <!-- validator -->
    <script>
      // initialize the validator function
      validator.message.date = 'not a real date';

      // validate a field on "blur" event, a 'select' on 'change' event & a '.reuired' classed multifield on 'keyup':
      $('form')
        .on('blur', 'input[required], input.optional, select.required', validator.checkField)
        .on('change', 'select.required', validator.checkField)
        .on('keypress', 'input[required][pattern]', validator.keypress);

      $('.multi.required').on('keyup blur', 'input', function() {
        validator.checkField.apply($(this).siblings().last()[0]);
      });

      $('form').submit(function(e) {
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
        <script>
          $(document).ready(function() {
            $('#reservation').daterangepicker(null, function(start, end, label) {
              console.log(start.toISOString(), end.toISOString(), label);
            });
          });
        </script>
        <!-- /bootstrap-daterangepicker -->
</asp:Content>

