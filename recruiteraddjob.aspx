<%@ Page Title="" Language="C#" MasterPageFile="~/recruitersmaster.master" AutoEventWireup="true" CodeFile="recruiteraddjob.aspx.cs" Inherits="recruiteraddjob" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
         .shorttb{
		  border:1px solid #c19f45;
            width:100%;
			  margin-right:3%;
        }
        .shortgroupdiv{
            width:50%;
            float:left;
        }
        .midgroupdiv{
            width:33.33%;
            float:left;
        }
        .longgrouptb{
            width:100%;
            clear:both;
        }
        .btn{
          background-color:#daa520;
          color:white;
          border-color:#C19E45;
         margin-left:30% 
        }
    </style>
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery-form-validator/2.3.26/jquery.form-validator.min.js"></script>
<script>

  $.validate({
    modules : 'location, date, security, file',
    onModulesLoaded : function() {
      $('#country').suggestCountry();
    }
  });

  // Restrict presentation length
  $('#description').restrictLength($('#pres-max-length'));
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
      $('#alert_container').append('<div id="alert_div" style="margin-top:40px;margin-left:10px;width:90%; -webkit-box-shadow: 3px 4px 6px #999;" class="alert fade in ' + cssclass + '"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a><strong>' + messagetype + '!</strong> <span>' + message + '</span></div>');
  }
</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="well">
    <div class="container" >
    <div class="single">
       
	   <div class="form-container" style="background-color:white">
               <div class="messagealert" id="alert_container" >  </div>                	  
           <br />
        <h2>Upload your Job !</h2>

             

           <div class="row">
           <div class="col-md-6">
           
            <div class="form-group col-md-12 ">
                
                    <label  for="jobtitle">JobTitle</label>
                    <input type="text" id="jobtitle" name="jobtitle" class="form-control input-sm shorttb"  data-validation="length alphanumeric" 
		 data-validation-length="3-12" 
		 data-validation-error-msg="Enter correct length XXX !"/>

            </div>
         </div>
               
           <div class="col-md-6">
          
            <div class="form-group col-md-12">
                <label  for="req">Expected Salary</label>
                    <input type="text" id="expectedsalary" name="expectedsalary" class="form-control input-sm shorttb" 
                        data-validation="length numeric" 
		 data-validation-length="3-12" 
		 data-validation-error-msg="Enter correct format i.e. 999!"/>
                </div>
            </div>

               </div>
              
           <div class="row">
               <div class="col-md-6">
            <div class="form-group col-md-12">
                
                <label  for="city">Country</label>
                    <input  id="country" name="country" class="form-control input-sm shorttb"  data-validation="country"/>
                </div>
            </div>

               <div class="col-md-6">
            <div class="form-group col-md-12">
               
                 <label  for="company">City</label>
                    <input type="text" id="city" name="city" class="form-control input-sm shorttb"
                        data-validation="length alphabet" 
		 data-validation-length="3-12" 
		 data-validation-error-msg="Enter correct format XXX!"/>
                </div>
            </div>
                
         </div>
           
           <div class="row">
               <div class="col-md-6">
            <div class="form-group col-md-12">
                
                <label  for="salary">Job Catagory</label>
                    <input type="text" id="jobcatagory" name="jobcatagory" class="form-control input-sm shorttb" />
                </div>
                   </div>
           <div class="col-md-6">
                <div class="form-group col-md-12">
                <label class="col-md-3 control-lable" for="adtitle">Job Type</label>
                    <select id="salaryperiod" name="salaryperiod" class="shorttb" style="padding:10px">
                        <option value="Permnenet">Permanent</option>
                        <option value="Temporary">Temporary</option>
                    </select>
                </div>
               </div>
            
   </div>
        
         
            <div class="row">
                <div class="col-md-6">
            <div class="form-group col-md-12">
                
                <label  for="adtitle">Miniumum Education</label>
                     <input type="text" id="meducation" name="meducation" class="form-control input-sm shorttb"
                  
                        data-validation="length alphabet" 
		 data-validation-length="3-12" 
		 data-validation-error-msg="Enter correct format (a-z)!"/>
                </div>
            </div>
        
            <div class="col-md-6">

            <div class="form-group col-md-12">
                <label for="salary">Minimum Experiance</label>
        
                    <input type="text" id="mlexperiance" name="mlexperiance" class="form-control input-sm shorttb"/>
                </div>
        
         </div>
                </div>
           
            <div class="row">
                <div class="col-md-6">
            <div class="form-group col-md-12">
                <label for="adtitle">Specific Requirements</label>
              
                     <input type="text" id="spacificRequirements" name="spacificRequirements" class="form-control input-sm shorttb"/>
                </div>
           
                    </div>
                 <div class="col-md-6">
            <div class="form-group col-md-12">
                
                <label  for="adtitle">Last Date To Apply</label>
                     <input type="" id="lastdatetoApply" name="lastdatetoApply" class="form-control input-sm shorttb"/>
                </div>
            </div>
         </div>
             <div class="row">
                    <div class="col-md-12">
            <div class="form-group col-md-12">
                <span id="pres-max-length">100</span>
                <label for="description">Description</label>
     
                   <textarea cols="77" class="form-control input-sm shorttb" rows="5" value="" id="description" name="description" onfocus="this.value='';" onblur="if (this.value == '') {this.value = '';}"> </textarea>
                </div>
         </div>
        </div>
            <div class="row">
            <div class="form-group col-md-12">
                <label class="col-md-3 control-lable" for="description"></label>
                <div class="col-md-9 sm_1">
                  <input type="submit"  value="Save" class="btn btn" />
                </div>
            </div>
        </div>
        <div class="row">
            <div class="form-actions floatRight">
              
            </div>
        </div></div>
       </div>

    </div>
        </div>
    
     <!-- jQuery -->
    <script src="../vendors/jquery/dist/jquery.min.js"></script>

    <!-- bootstrap-daterangepicker -->
    <script src="js/moment/moment.min.js"></script>
    <script src="js/datepicker/daterangepicker.js"></script>
  


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
      
          $('#lastdatetoApply').daterangepicker({
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

