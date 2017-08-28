<%@ Page Title="" Language="C#" MasterPageFile="~/jobseekermaster.master" AutoEventWireup="true" CodeFile="jobseekerupdateprofile.aspx.cs" Inherits="jobseekerupdateprofile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
   
    
        <style> 
fieldset {overflow: hidden;}
.form-field {overflow: hidden; width: 200px; float:left; margin-left: 20px;}
.form-field label { display: block;font-style:oblique;color:black;font-size:large }
.form-field input, .form-field select .form-field textarea {display: block; width: 100%;}
</style>
   
   
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
        
         function dopostback(id,btn) {
             __doPostBack(btn, id);
         }
         function hidesavebtn() {
             $(".hidebtn").hide();
         }
         $(document).ready(function(){
             hidesavebtn();
});
        function setVal(val) {
           // $("eduid").val(e);
            document.getElementById("eduid").value =  val;
        }
        function pupdatebutton(id) {
            $(".requirdclass").prop("required", true);
            $("#experiance" + id).attr("readonly", false);
            $("#startdate" + id).attr("readonly", false);
            $("#enddate" + id).attr("readonly", false);
            $("#company" + id).attr("readonly", false);
            $("#workexperiance" + id).attr("readonly", false);
            $("#description" + id).attr("readonly", false);
            $("#btnunableupdate" + id).hide();
            $("#save"+id).show();
        }
        function savebtnclick(id) {
            if ($("#experiance" + id).val() == "" || 
                $("#startdate" + id).val() == "" ||
            $("#enddate" + id).val() == "" ||
            $("#company" + id).val() == "" ||
            $("#workexperiance" + id).val() == "" ||
            $("#description" + id).val() == "") {
                // you have empty fields if this section is reached

                ShowMessage("Please fill all the Textboxes you cannot leave textbox empty .","Error");
            } else {
                $("#experiance" + id).attr("readonly", true);
                $("#startdate" + id).attr("readonly", true);
                $("#enddate" + id).attr("readonly", true);
                $("#company" + id).attr("readonly", true);
                $("#workexperiance" + id).attr("readonly", true);
                $("#description" + id).attr("readonly", true);
                dopostback(id,'professionbtn');//post back with this id then get value from forms with this id
                $("#btnunableupdate" + id).show();
                $("#save" + id).hide();
            }

        }


        function eduupdatebtn(id) {
            $("#institute" + id).attr("readonly", false);
            $("#passingyear" + id).attr("readonly", false);
            $("#degree" + id).attr("readonly", false);
            $("#specialization" + id).attr("readonly", false);

            $("#eduupdate" + id).hide();
            $("#edusave" + id).show();
        }

        
        function edusavebtn(id) {
            if ($("#institute" + id).val() == "" ||
               $("#passingyear" + id).val() == "" ||
           $("#degree" + id).val() == "" ||
           $("#specialization" + id).val() == ""
           ) {
                // you have empty fields if this section is reached

                ShowMessage("Please fill all the Textboxes you cannot leave textbox empty .","Error");
            } else {
                $("#institute" + id).attr("readonly", true);
                $("#passingyear" + id).attr("readonly", true);
                $("#degree" + id).attr("readonly", true);
                $("#specialization" + id).attr("readonly", true);
               
                dopostback(id,"edubtn");//post back with this id then get value from forms with this id
                $("#eduupdate" + id).show();
                $("#edusave" + id).hide();
            }

        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
  <% int jobsekerid = jobseekerclass.getSeekerID(Session["LoginSession"].ToString());%>
    
    <div style="margin-top: 3%"></div>


    <div class="container">
        <div class="single">
             <div id="alert_container"></div>
            <div class="form-container" style="margin-top: 3%">


                <div class="row">

                    <div class="col-md-12 col-sm-12 col-xs-12">
                        <div class="x_panel">
                            <div class="x_title">
                                <h2>Update jobseeker detail</h2>

                            </div>

                            <div class="x_content" style="margin-left: 30px">
                                <div class="" role="tabpanel" data-example-id="togglable-tabs">
                                    <ul id="myTab" class="nav nav-tabs bar_tabs" role="tablist">
                                        <li role="presentation" class="active"><a href="#tab_content1" id="home-tab" role="tab" data-toggle="tab" aria-expanded="true">Professional info</a>
                                        </li>
                                        <li role="presentation" class=""><a href="#tab_content2" role="tab" id="profile-tab" data-toggle="tab" aria-expanded="false">Educational info</a>
                                        </li>
                                        <li role="presentation" class=""><a href="#tab_content3" role="tab" id="profile-tab2" data-toggle="tab" aria-expanded="false">Skills info</a>
                                        </li>
                                    </ul>
                                    <div id="myTabContent" class="tab-content">
                                        <div role="tabpanel" class="tab-pane fade active in" id="tab_content1" aria-labelledby="home-tab" style="margin-top: 2%">

                                            <div id="pupdateid" runat="server">
                                                <% 
                                                   int jobsekerid = jobseekerclass.getSeekerID(Session["LoginSession"].ToString());
                                                    int pid = newClass.getSeekerID(jobsekerid);
                                                    IQueryable<jobSeekerProfessionalInfo> jspi = newClass.getProfessionalInfo(jobsekerid);
                                                %>
                                              
                                                <div class="table-responsive" >

                                                    <table class="table">
                                                        <thead>
                                                            <tr >
                                                                <%--<th class="input-text form-field">Designation</th>
                                                                <th class="input-text form-field">Job Start Date</th>
                                                                <th class="input-text form-field">Job End Date</th>
                                                                <th class="input-text form-field">Comapany Name</th>
                                                                <th class="input-text form-field">Job Description</th>
                                                                <th class="input-text form-field">Work Experience</th>
                                                                <th></th>
                                                                <th></th>--%>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <%
                                                                    foreach (var x in jspi)
                                                                    {
                                                                         %>
                                                           
                                                            <tr>
                                                                
                                                                <td class="input-text form-field">
                                                                    <label class="input-text form-field">Designation</label>
                                                                    <input type="text" class="requirdclass" name="experiance<%=x.Id %>" id="experiance<%=x.Id%>"  value="<%=x.experience%>" readonly="true"/>  </td>
                                                                <td class="input-text form-field">
                                                                    <label class="input-text form-field">Job Start Date</label>
                                                                    <input type="text"  class="requirdclass startdate" name="startdate<%=x.Id%>" id="startdate<%=x.Id%>" value="<%=x.jobStartDate.Value.ToString("d-M-yyyy") %>" readonly="true" /></td>
                                                                <td class="input-text form-field">
                                                                     <label class="input-text form-field">Job End Date</label>
                                                                    <input type="text" class="requirdclass enddate" id="enddate<%=x.Id%>" name="enddate<%=x.Id%>"  value="<%=x.jobEndDate.Value.ToString("d-M-yyyy") %>" readonly="true"/></td>
                                                                <td class="input-text form-field">
                                                                     <label class="input-text form-field">Company Name</label>
                                                                    <input type="text" class="requirdclass" id="company<%=x.Id%>" name="company<%=x.Id%>" value="<%=x.company %>" readonly="true"/></td>
                                                                <td class="input-text form-field">
                                                                     <label class="input-text form-field">Job Description</label>
                                                                    <input type="text" class="requirdclass" id="description<%=x.Id%>" name="description<%=x.Id%>"  value="<%=x.jobDescription %>" readonly="true"/></td>
                                                                <td class="input-text form-field">
                                                                     <label class="input-text form-field">Work Experience</label>
                                                                    <input type="text" class="requirdclass" id="workexperiance<%=x.Id%>" name="workexperiance<%=x.Id%>"  value="<%=x.workExperience %>" readonly="true"/></td>
                                                            
                                                                
                                                               
                                                                
                                                             </tr>
                                                            <tr><td class="input-text form-field" >
                                                                <a id="btnunableupdate<%=x.Id %>" onclick="pupdatebutton(<%=x.Id %>)"  class="btn btn-default">update</a>
                                                                <a id="save<%=x.Id %>"  onclick="savebtnclick(<%=x.Id %>)"  class="hidebtn btn btn-default">Save</a>
                                                                </td></tr>
                                                            <%} %>
                                                                
                                                        </tbody>
                                                    </table>
                                                    
                                                </div>
                                            </div>
                                           
                                            
                                            </div>
                                            <!-- start user projects -->

                                            <!-- end user projects -->

                                       
                                          <div role="tabpanel" class="tab-pane fade" id="tab_content2" aria-labelledby="profile-tab">

                                               <div id="divviewedu" runat="server">
                                                <% 
                                                    int jobsekerid = jobseekerclass.getSeekerID(Session["LoginSession"].ToString());
                                               
                                                   IQueryable<jobseekereducationalInfo> jsei = newClass.getEducationalInfo(jobsekerid);
                                                %>
                                                <div class="table-responsive">

                                                    <table class="table">
                                                        <thead>
                                                            <tr>
                                                                <%--<th>Institute name</th>
                                                                <th>Passing year</th>
                                                                <th>Degree</th>
                                                                <th>Specialization</th>
                                                                <th></th>--%>

                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <%
                                                                foreach (var x in jsei)
                                                                {
                                                                 %>
                                                            <tr>

                                                                <td  class="input-text form-field">
                                                                     <label class="input-text form-field">Institute name</label>
                                                                    
                                                                 <input type="text" value="<%=x.instituteName %>" id="institute<%=x.Id%>" name="institute<%=x.Id%>" readonly="true" /></td>
                                                                <td  class="input-text form-field">
                                                                     <label class="input-text form-field">Passing year</label>
                                                                  <input type="text" value="<%=x.passingOutYear.Year %>" id="passingyear<%=x.Id%>" name="passingyear<%=x.Id%>" readonly="true" /></td>
                                                                <td  class="input-text form-field">
                                                                     <label class="input-text form-field">Degree</label>
                                                                  <input type="text" value="<%=x.degreeName %>" id="degree<%=x.Id%>" name="degree<%=x.Id%>" readonly="true" /></td>
                                                                <td  class="input-text form-field">
                                                                     <label class="input-text form-field">Specialization</label>
                                                                 <input type="text" value="<%=x.specialization %>" id="specialization<%=x.Id%>" name="specialization<%=x.Id%>" readonly="true" />

                                                                </td>
                                                             
                                                                
                                                            </tr>
                                                            <tr>
                                                                
       
                                                                <td class="input-text form-field" >
                                                                <a id="eduupdate<%=x.Id %>" onclick="eduupdatebtn(<%=x.Id %>)"  class="btn btn-default">update</a>
                                                                <a id="edusave<%=x.Id %>"  onclick="edusavebtn(<%=x.Id %>)"  class="hidebtn btn btn-default">Save</a>
                                                                </td>

                                                               
                                                            </tr>
                                                            <%} %>
                                                        </tbody>
                                                    </table>
                                                </div>
                                            </div>
                                            
                                              </div>


                                        <%


                                
                                            skillsandcv skill = adminJobseekerProfile.getjobseekerSkills(jobsekerid); %>
                          
                                        <div role="tabpanel" class="tab-pane fade" id="tab_content3" aria-labelledby="profile-tab">
                                            <div class="row">
                                                <div class="form-group col-md-10">
                                                    <label class="col-md-3 control-lable" for="skill1">Skills(Seperated with comma)</label>
                                                    <div class="col-md-9">
                                                        <input type="text" id="skill1" name="skill1" class="form-control input-sm" value="<%=skill.skills %>" />
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="form-group col-md-12">
                                                    
                                                    <div class="col-md-6">
                                                        <label class="col-md-3 control-lable" for="file">Upload New CV</label>
                                                        <asp:FileUpload ID="cvfile" runat="server" />
                                                    </div>
                                                     <div class="col-md-6">
                                                        <label class="col-md-3 control-lable" for="file">View CV</label>
                                                        <input type="button" class="btn btn-primary" value="View" />
                                                    </div>
                                                </div>
                                            </div>
                                         
                                            <asp:Button ID="updateskills" runat="server" Text="Update skills" class="btn btn-danger" />
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
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
      
          $('.startdate').daterangepicker({
          singleDatePicker: true,
          calender_style: "picker_2"
        }, function(start, end, label) {
          console.log(start.toISOString(), end.toISOString(), label);
        });


          $('.enddate').daterangepicker({
              singleDatePicker: true,
              calender_style: "picker_2"
          }, function (start, end, label) {
              console.log(start.toISOString(), end.toISOString(), label);
          });
     
       
      });
        </script>



</asp:Content>

