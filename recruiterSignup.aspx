<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="recruiterSignup.aspx.cs" Inherits="recruiterSignup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script src="js/formvalidator.js"></script>
    <script src="js/jquery-1.10.2.min.js"></script>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery-form-validator/2.3.26/jquery.form-validator.min.js"></script>
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
       
              <%--  <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">Name <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input id="name" class="form-control col-md-7 col-xs-12" data-validate-length-range="6" data-validate-words="2" name="name" placeholder="both name(s) e.g Jon Doe" required="required" type="text">
                        </div>
                      </div>--%>
               <!--Company name-->
         
           
           <div class="row">
            <div class="item form-group  ">
                
                <label class="control-label col-md-3 col-sm-3 col-xs-12"  for="companyname">Company Name</label>
                <div class="col-md-6 col-sm-6 col-xs-12">
                    
                    <input type="text" id="companyname" name="companyname" 
                        class="form-control col-md-7 col-xs-12"  data-validate-length-range="6" data-validate-words="1" required="required" autofocus="autofocus"/>
                    </div>
            </div>
         
               </div>
           <br />
        <div class="row">
          
            <div class="item form-group  ">
                <label class="control-label col-md-3 col-sm-3 col-xs-12"  for="establishyear">Year of Establishment</label>
                <div class="col-md-6 col-sm-6 col-xs-12">
                    <input type="text" id="establishyear" name="establishyear" class="form-control col-md-7 col-sm-3 col-xs-12" 
                         required="required" />
                </div>
            </div>
            </div>
           <br />
       <!--end Company name-->

                        <!--Contact-->
           <div class="row">
      
           
            <div class="item form-group  ">
                
                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="contactoerson">Mobile</label>
                    <div class="col-md-6 col-sm-6 col-xs-12">
                    <input type="number"   id="contact" name="contactoerson" required="required" class="form-control col-md-7 col-sm-3 col-xs-12"  
                         <%--data-validate-minmax="10,15"--%> />

            </div>
         </div>
               </div><br />
           <div class="row">
           
          
            <div class="item form-group ">
                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="phone">Phone</label>
                <div class="col-md-6 col-sm-6 col-xs-12">
                    <input type="number" id="phone" name="phone" class="form-control col-md-7 col-sm-3 col-xs-12" 
                        required="required" <%--data-validate-minmax="10,15"--%>/>
                </div>
            </div>

               </div>
       <!--end Contact-->
       <br />
              <!--Start-->
           <div class="row">
           <div class="item form-group ">
                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="fax">Fax</label>
                <div class="col-md-6 col-sm-6 col-xs-12">
                   <input type="text" id="fax" name="fax" class="form-control col-md-7 col-sm-3 col-xs-12" 
                        required="required" <%--data-validate-minmax="5,100"--%>/>
                </div>
            </div>
               </div>
          <br />
           <div class="row">
                <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="email">Email <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="email" id="email" name="email" required="required" class="form-control col-md-7 col-xs-12">
                        </div>
                      </div>
           

               </div>
       <!--end -->
           <br />
             <!--Start-->
           <div class="row">
                <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="website">Website URL <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="url" id="website" name="website" required="required" placeholder="www.website.com" 
                              class="form-control col-md-7 col-xs-12">
                        </div>
                      </div>
          
               </div>
     
       <!--end -->
           <br />

                <div class="row">
                <div class="item form-group">
                         <label class="control-label col-md-3 col-sm-3 col-xs-12" for="description">Brief Description</label>
                    (<span id="pres-max-length">100</span> characters left)
           <div class="col-md-6 col-sm-6 col-xs-12">
                    <textarea rows="4" name="description" id="description" class="form-control col-md-7 col-xs-12" ></textarea>
                     </div>
                        </div> 
                    </div>
               <br />

            <div class="row">
                <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="username">Company Username <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input id="username" name="username" class="form-control col-md-7 col-xs-12" data-validate-length-range="6" data-validate-words="1,2"  placeholder="both name(s) e.g Jon Doe" required="required" type="text">
                        </div>
                      </div>
                 
                </div><br />
            <div class="row">
                <div class="item form-group">
                        <label for="password" class="control-label col-md-3" >Password</label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input id="password" type="password" name="password" data-validate-length="8" 
                              class="form-control col-md-7 col-xs-12" required="required">
                        </div>
                      </div>
                      
                </div><br />
                 <div class="row">
                      <div class="item form-group">
                        <label  for="logo" class="control-label col-md-3" >Upload Company logo</label>
            <div class="col-md-6 col-sm-6 col-xs-12">
                         <asp:FileUpload ID="logo" runat="server" class="form-control col-md-7 col-xs-12" required="required" />
                     </div>
                    </div>
           </div>
                <br />
               
                			          <input type="submit" value="Post your Profile" class="btn btn-danger "/>

	        <br />
	    </div>
    </div>
    </div>
    </div>
     <!-- jQuery -->
    <script src="../vendors/jquery/dist/jquery.min.js"></script>

    <!-- bootstrap-daterangepicker -->
    <script src="js/moment/moment.min.js"></script>
    <script src="js/datepicker/daterangepicker.js"></script>
    <!-- validator -->
    <script src="../vendors/validator/validator.js"></script>


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
      
          $('#establishyear').daterangepicker({
          singleDatePicker: true,
          calender_style: "picker_2"
        }, function(start, end, label) {
          console.log(start.toISOString(), end.toISOString(), label);
        });
     
       
      });
    </script>

        <script>
           
            $(document).ready(function () {
                
            $('#reservation').daterangepicker(null, function(start, end, label) {
              console.log(start.toISOString(), end.toISOString(), label);
            });
          });
        </script>
        <!-- /bootstrap-daterangepicker -->
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
    <!-- /validator -->
</asp:Content>

