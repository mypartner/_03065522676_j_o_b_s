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
        

        <h2>Update Your Profile</h2>
        <div class="newmargin">
                <div class="row">
                     <div class="form-group col-md-10">
                        <label class="col-md-3 control-lable" for="firstname">Firstname</label>
                     <div class="col-md-9">
                        <input type="text" id="firstname" name="firstname" class="form-control input-sm"/>
                     </div>
                    </div>
                </div>
                 <div class="row">
                     <div class="form-group col-md-10">
                        <label class="col-md-3 control-lable" for="lastname">Lastname</label>
                     <div class="col-md-9">
                        <input type="text" id="lastname" name="lastname" class="form-control input-sm"/>
                     </div>
                    </div>
                </div>
                <div class="row">
                     <div class="form-group col-md-10">
                        <label class="col-md-3 control-lable" for="mobile">Mobile</label>
                     <div class="col-md-9">
                        <input type="text" id="mobile" name="mobile" class="form-control input-sm"/>
                     </div>
                    </div>
                </div>
                <div class="row">
                     <div class="form-group col-md-10">
                        <label class="col-md-3 control-lable" for="email">Email</label>
                     <div class="col-md-9">
                        <input type="text" id="email" name="email" class="form-control input-sm"/>
                     </div>
                    </div>
                </div>
                <div class="row">
                     <div class="form-group col-md-10">
                        <label class="col-md-3 control-lable" for="lastname">Gender</label>
                     <div class="col-md-9">
                        
                              <label><input type="radio" name="sex" class="radio-inline" value="Male" />Male</label>
                            
                              <label><input type="radio" name="sex" class="radio-inline" value="Female"/>Female</label>
                            
                     </div>
                    </div>
                </div>
                <div class="row">
                     <div class="form-group col-md-10">
                        <label class="col-md-3 control-lable" for="education">Education</label>
                     <div class="col-md-9">
                        <input type="text" id="education" name="education" class="form-control input-sm"/>
                     </div>
                    </div>
                </div>
                <div class="row">
                     <div class="form-group col-md-10">
                        <label class="col-md-3 control-lable" for="country">Country</label>
                     <div class="col-md-9">
                        <input type="text" id="country" name="country" class="form-control input-sm"/>
                     </div>
                    </div>
                </div>
                <div class="row">
                     <div class="form-group col-md-10">
                        <label class="col-md-3 control-lable" for="dob">Date of birth</label>
                     <div class="col-md-9">
                        <input type="" id="dob" name="dob" class="form-control input-sm"/>
                     </div>
                    </div>
                </div>
                <div class="row">
                     <div class="form-group col-md-10">
                        <label class="col-md-3 control-lable" for="dob">Username</label>
                     <div class="col-md-9">
                        <input type="text" id="username" name="username" class="form-control input-sm"/>
                     </div>
                    </div>
                </div>
             <div class="row">
                     <div class="form-group col-md-10">
                        <label class="col-md-3 control-lable" for="dob">Password</label>
                     <div class="col-md-9">
                        <input type="password" id="password" name="password" class="form-control input-sm"/>
                     </div>
                    </div>
                </div>

                 <div class="row">
                     <div class="form-group col-md-12">
                        <label class="col-md-3 control-lable" for="Imageupload">Upload your image</label>
                     <div class="col-md-9">
                         <asp:FileUpload ID="imageupload" runat="server" />
                     </div>
                    </div>
                </div>
            <asp:Button ID="Button1" runat="server" Text="Sign Up" class="btn btn-danger " OnClick="Signup_button"/>
                			          <%--<input type="submit" value="Sign Up" class="btn btn-danger " />--%>
	    </div>
    </div>
 </div>
</div></div>
     <!-- jQuery -->
    <script src="../vendors/jquery/dist/jquery.min.js"></script>

    <!-- bootstrap-daterangepicker -->
    <script src="js/moment/moment.min.js"></script>
    <script src="js/datepicker/daterangepicker.js"></script>
  

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

        <script>
          $(document).ready(function() {
            $('#reservation').daterangepicker(null, function(start, end, label) {
              console.log(start.toISOString(), end.toISOString(), label);
            });
          });
        </script>
        <!-- /bootstrap-daterangepicker -->
</asp:Content>

