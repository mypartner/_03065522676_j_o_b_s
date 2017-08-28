<%@ Page Title="" Language="C#" MasterPageFile="~/jobseekermaster.master" AutoEventWireup="true" CodeFile="jobseekerprofile.aspx.cs" Inherits="jobseekerprofile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
  
    
    <link href="css/StyleSheet.css" rel="stylesheet" />
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
  function validationControlProfesstion() {
      $(".addvalidation").prop('required', true);
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
  };

    
  

    /*$(document).ready(function () {
        var select = '';
        for (i = 1990; i <= 2017; i++) {
            select += '<option val=' + i + '>' + i + '</option>';
        }
        $('#year_selector').html(select);
    });
    $(document).ready(function () {
        var select = '';
        for (i = 1990; i <= 2017; i++) {
            select += '<option val=' + i + '>' + i + '</option>';
        }
        $('#second_year_selector').html(select);
    });*/
    //  secont_year_selector
    function onlyAlphabets(e, t) {
        try {
            if (window.event) {
                var charCode = window.event.keyCode;
            }
            else if (e) {
                var charCode = e.which;
            }
            else { return true; }
            if ((charCode > 64 && charCode < 91) || (charCode > 96 && charCode < 123))
                return true;
            else
                return false;
        }
        catch (err) {
            alert(err.Description);
        }
    }


    function appenddiv() {
        var counter = parseInt($('#<%=numberofRecords.ClientID%>').val());
        counter++;
        $('#<%=numberofRecords.ClientID%>').val(counter);
        $(".appendclass").append("<div class='row'>\
            <div class='form-group col-md-10'>\
                         <h1>Degree"+counter+"</h1>\
                        <label class='col-md-3 control-lable' for='experiance'>Experience</label>\
                     <div class='col-md-9'>\
                        <input type='text' id='experiance' name='experiance" + counter + "' class='form-control input-sm addvalidation' />\
                     </div>\
                    </div>\
                </div>\
                 <div class='row'>\
                     <div class='form-group col-md-10'>\
                        <label class='col-md-3 control-lable' for='jobstartdate'>Job Start Date</label>\
                     <div class='col-md-9'>\
                        <input type='date' id='jobstartdate' name='jobstartdate" + counter + "' class='form-control input-sm addvalidation'/>\
                     </div>\
                    </div>\
                </div>\
                <div class='row'>\
                     <div class='form-group col-md-10'>\
                        <label class='col-md-3 control-lable' for='jobenddate'>Job End Date</label>\
                     <div class='col-md-9'>\
                        <input type='date' id='jobenddate' name='jobenddate" + counter + "' class='form-control input-sm addvalidation'/>\
                     </div>\
                    </div>\
                </div>\
                <div class='row'>\
                     <div class='form-group col-md-10'>\
                        <label class='col-md-3 control-lable' for='companyname'>Company Name</label>\
                     <div class='col-md-9'>\
                        <input type='text' id='companyname' name='companyname" + counter + "' class='form-control input-sm addvalidation'/>\
                     </div>\
                    </div>\
                </div>\
                <div class='row'>\
                     <div class='form-group col-md-10'>\
                        <label class='col-md-3 control-lable' for='description'>Job Description</label>\
                     <div class='col-md-9'>\
                        <input type='text' id='description' name='description" + counter + "' class='form-control input-sm addvalidation' />\
                     </div>\
                    </div>\
                </div>\
                <div class='row'>\
                     <div class='form-group col-md-10'>\
                        <label class='col-md-3 control-lable' for='workexperience'>Work Experience</label>\
                     <div class='col-md-9'>\
                        <input type='text' id='workexperience' name='workexperience" + counter + "' class='form-control addvalidation' />\
                     </div>\
                    </div>\
                </div>\
                </div>");
        alert($('#<%=numberofRecords.ClientID%>').val());
    }
</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!-- page content -->
    <asp:HiddenField ID="numberofRecords" value="1" runat="server" />    
    <div class="single" style="margin-top:3%">  
	   <div class="form-container">
                           <div class="messagealert" id="alert_container" >  </div>                	  

     
          <div class="">
           
            <div class="row">

              <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>Client Detail</h2>
                    
                  </div>
                   
                  <div class="x_content">


                    <!-- Smart Wizard -->
                    <div id="wizard" class="form_wizard wizard_horizontal">
                      <ul class="wizard_steps">
                        <li>
                          <a href="#step-1">
                            <span class="step_no">1</span>
                            <span class="step_descr">
                                              Step 1<br />
                                              <small>Professional Information</small>
                                          </span>
                          </a>
                        </li>
                        <li>
                          <a href="#step-2">
                            <span class="step_no">2</span>
                            <span class="step_descr">
                                              Step 2<br />
                                              <small>Educational Information</small>
                                          </span>
                          </a>
                        </li>
                        <li>
                          <a href="#step-3">
                            <span class="step_no">3</span>
                            <span class="step_descr">
                                              Step 3<br />
                                              <small>Skills &Resume Information</small>
                                          </span>
                          </a>
                        </li>
                       
                       
                      </ul>

                      <div id="step-1">
                         <div class="col-md-9 col-md-offset-2">
                        <div class="form-horizontal form-label-left appendclass">
                        <div class="row">
                     <div class="form-group col-md-10">
                        <label class="col-md-3 control-lable" for="experiance">Experience</label>
                     <div class="col-md-9">
                        <input type="text" id="experiance" name="experiance1" class="form-control input-sm addvalidation" />
                     </div>
                    </div>
                </div>
                 <div class="row">
                     <div class="form-group col-md-10">
                        <label class="col-md-3 control-lable" for="jobstartdate">Job Start Date</label>
                    
                          
  
                           
                              <div class="col-md-9">
                                <input type="text" class="form-control input-sm addvalidation"  id="jobstartdate" name="jobstartdate1"     />
                              
                            </div>
                    
<%--                        <input type="date" id="jobstartdate" name="jobstartdate1" class="form-control input-sm"/>--%>
                     </div>
                 
                </div>
                
                <div class="row">
                     <div class="form-group col-md-10">
                        <label class="col-md-3 control-lable" for="jobenddate">Job End Date</label>
  
                           
                              <div class="col-md-9">
                        <input type="text" id="jobenddate" name="jobenddate1"   class="form-control input-sm addvalidation"/>
                              
                            </div>
                    
                    </div>
                </div>

                <div class="row">
                     <div class="form-group col-md-10">
                        <label class="col-md-3 control-lable" for="companyname">Company Name</label>
                     <div class="col-md-9">
                         
                        <input type="text" id="companyname"   name="companyname1" class="form-control input-sm addvalidation"/>
                     </div>
                    </div>
                </div>
                <div class="row">
                     <div class="form-group col-md-10">
                        <label class="col-md-3 control-lable" for="description">Job Description</label>
                     <div class="col-md-9">
                        <input type="text" id="description"   name="description1" class="form-control input-sm addvalidation" />
                     </div>
                    </div>
                </div>
                <div class="row">
                     <div class="form-group col-md-10">
                        <label class="col-md-3 control-lable" for="workexperience">Work Experience</label>
                     <div class="col-md-9">
                        <input type="text" id="workexperience"   name="workexperience1" class="form-control input-lg addvalidation" />
                     </div>
                    </div>
                </div>
                </div>
                     
                <div style="float:left;">
                              <label id="appenddegree" onclick="appenddiv()">Add another</label>
                        </div>
                             <br />
                         <asp:Button ID="savePersonalInformation" runat="server" Text="Save" class="btn btn-danger " OnClick="savePersonalInformation_Click" OnClientClick="validationControlProfesstion()" />

                           

                             </div>
                          
                          
                      </div>
                        <!------------------- end of Step 1---------------->
                      <div id="step-2">
                          <div class="col-md-9 col-md-offset-2">
                          <div class="form-horizontal form-label-left">

                           <div class="row">
                     <div class="form-group col-md-10">
                        <label class="col-md-3 control-lable" for="institute">Institute Name<span class="required"></span></label>
                     <div class="col-md-9">
                        <input type="text" id="institute" name="institute" class="form-control input-sm"/>
                     </div>
                    </div>
                </div>
                 <div class="row">
                     <div class="form-group col-md-10">
                        <label class="col-md-3 control-lable" for="year_selector">Passing Year</label>
                     <div class="col-md-9">
                     
                      <!--  <select id='year_selector'  ></select>-->
                         
                         <input type="text" name="year_selector"   id="year_selector" class="form-control input-sm"/>
                    
                     </div>
                    </div>
                </div>
                
                <div class="row">
                     <div class="form-group col-md-10">
                        <label class="col-md-3 control-lable" for="degree1">Degree 1</label>
                     <div class="col-md-9">
                        <input type="text" id="degree1" name="degree1" class="form-control input-sm" />
                     </div>
                    </div>
                </div>
            <div class="row">
                     <div class="form-group col-md-10">
                        <label class="col-md-3 control-lable" for="specialization">Specialization</label>
                     <div class="col-md-9">
                        <input type="text" id="specialization" name="specialization"   class="form-control input-sm" />
                     </div>
                    </div>
                </div>
     
 <a data-toggle="collapse" href="#collapse4" style="width:100%;">Add another degree  </a>
      <div id="collapse4" class="panel-collapse collapse">

                <div class="row">
                     <div class="form-group col-md-10">
                        <label class="col-md-3 control-lable" for="degree2">Degree2</label>
                     <div class="col-md-9">
                        <input type="text" id="degree2" name="degree2" class="form-control input-sm"/>
                     </div>
                    </div>
                </div>
           <div class="row">
                     <div class="form-group col-md-10">
                        <label class="col-md-3 control-lable" for="secondinstitute">Institute Name</label>
                     <div class="col-md-9">
                        <input type="text" id="secondinstitute" name="secondinstitute" class="form-control input-sm"/>
                     </div>
                    </div>
                </div>
                 <div class="row">
                     <div class="form-group col-md-10">
                        <label class="col-md-3 control-lable" for="second_year_selector">Passing Year</label>
                     <div class="col-md-9">
                     
                        
                         <input type="date" name="second_year_selector" id="second_year_selector" />
                    
                     </div>
                    </div>
                </div>
          <div class="row">
                     <div class="form-group col-md-10">
                        <label class="col-md-3 control-lable" for="secondspecialization">Specialization</label>
                     <div class="col-md-9">
                        <input type="text" id="secondspecialization" name="secondspecialization" class="form-control input-sm"/>
                     </div>
                    </div>
</div>
          </div>
                           
                        
                          </div> 
<a href="#" runat="server"  class="btn btn-danger" onserverclick="saveeducationalinfoo_Click">Save</a>   </div>

                               <%--<asp:Button ID="saveeducationalinfoo" runat="server" Text="Save" class="btn btn-danger" OnClick="saveeducationalinfoo_Click"/>   </div>--%>
                         
                      </div>

                     

                         <!------------------- end of Step 2---------------->
                      <div id="step-3">
                          <div class="col-md-9 col-md-offset-2">
                          <div class="form-horizontal form-label-left">

                <div class="row">
                     <div class="form-group col-md-10">
                        <label class="col-md-3 control-lable" for="skill1">Skill 1 (Optional)</label>
                     <div class="col-md-9">
                        <textarea rows="4" cols="50"  id="skills" name="skills" class="form-control input-sm">
                            </textarea>
                     </div>
                    </div>
                </div>
                  <div class="form-group col-md-10">
                        <label class="col-md-3 control-lable" for="file">Upload Your CV</label>
                     <div class="col-md-9">
                        <asp:FileUpload ID="cvfile" runat="server"/>
                     </div>
                 
                               <asp:Button ID="saveskills" runat="server" Text="Save" class="btn btn-danger" OnClick="saveskill_Click"/>
                          </div>

                              </div>
                              </div>



                      



                         



                       
                    </div>
                       <!------------------- end of Step 3---------------->

                    </div>
                    <!-- End SmartWizard Content -->
                      </div></div></div></div>
                  </div> </div>

                         <!-- jQuery -->
    <script src="../vendors/jquery/dist/jquery.min.js"></script>
   
    <!-- FastClick -->
    <script src="../vendors/fastclick/lib/fastclick.js"></script>
    <!-- NProgress -->
    <script src="../vendors/nprogress/nprogress.js"></script>
    <!-- jQuery Smart Wizard -->
    <script src="../vendors/jQuery-Smart-Wizard/js/jquery.smartWizard.js"></script>


    <!-- jQuery Smart Wizard -->
    <script>
        $(document).ready(function () {
            $('#wizard').smartWizard();
            $('#wizard_verticle').smartWizard({
                transitionEffect: 'slide'
            });
            $('.buttonNext').addClass('btn btn-success');
            $('.buttonPrevious').addClass('btn btn-primary');
           // $('.buttonFinish').addClass('btn btn-default');
        });
    </script>
    <!-- /jQuery Smart Wizard -->
      

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
        $(document).ready(function () {

            $('#jobenddate').daterangepicker({
                singleDatePicker: true,
                calender_style: "picker_2"
            }, function (start, end, label) {
                console.log(start.toISOString(), end.toISOString(), label);
            });


        });
        $(document).ready(function () {

            $('#year_selector').daterangepicker({
                singleDatePicker: true,
                calender_style: "picker_2"
            }, function (start, end, label) {
                console.log(start.toISOString(), end.toISOString(), label);
            });


        });
        
        
      $(document).ready(function() {
      
          $('#jobstartdate').daterangepicker({
          singleDatePicker: true,
          calender_style: "picker_2"
        }, function(start, end, label) {
          console.log(start.toISOString(), end.toISOString(), label);
        });
     
       
      });
    </script>

       
        <!-- /bootstrap-daterangepicker -->

</asp:Content>

