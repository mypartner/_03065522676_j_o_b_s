<%@ Page Title="" Language="C#" MasterPageFile="~/jobseekermaster.master" AutoEventWireup="true" CodeFile="jobseekerprofile.aspx.cs" Inherits="jobseekerprofile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
  
    
    
  

    
    <link href="css/StyleSheet.css" rel="stylesheet" />
    <!-- Custom Theme Style -->

<script>
    $(document).ready(function () {
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
    });
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
</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!-- page content -->
            
    <div class="banner_1"></div>
    <div class="single">  
	   <div class="form-container">
            
     
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
                                              <small>Personal Information</small>
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
                                              <small>Skills Information</small>
                                          </span>
                          </a>
                        </li>
                       
                       
                      </ul>

                      <div id="step-1">
                         <div class="col-md-9 col-md-offset-2">
                        <div class="form-horizontal form-label-left">
                        
                          <div class="row">
                     <div class="form-group col-md-10">
                        <label class="col-md-3 control-lable" for="experiance">Experience</label>
                     <div class="col-md-9">
                        <input type="text" id="experiance" name="experiance" class="form-control input-sm" />
                     </div>
                    </div>
                </div>
                 <div class="row">
                     <div class="form-group col-md-10">
                        <label class="col-md-3 control-lable" for="jobstartdate">Job Start Date</label>
                     <div class="col-md-9">
                        <input type="date" id="jobstartdate" name="jobstartdate" class="form-control input-sm"/>
                     </div>
                    </div>
                </div>
                
                <div class="row">
                     <div class="form-group col-md-10">
                        <label class="col-md-3 control-lable" for="jobenddate">Job End Date</label>
                     <div class="col-md-9">
                        <input type="date" id="jobenddate" name="jobenddate" class="form-control input-sm"/>
                     </div>
                    </div>
                </div>

                <div class="row">
                     <div class="form-group col-md-10">
                        <label class="col-md-3 control-lable" for="companyname">Company Name</label>
                     <div class="col-md-9">
                         
                        <input type="text" id="companyname" name="companyname" class="form-control input-sm" data-validate-length-range="6" data-validate-words="2" required onkeypress="return onlyAlphabets(event,this);"/>
                     </div>
                    </div>
                </div>
                <div class="row">
                     <div class="form-group col-md-10">
                        <label class="col-md-3 control-lable" for="description">Job Description</label>
                     <div class="col-md-9">
                        <input type="text" id="description" name="description" class="form-control input-sm" data-validate-length-range="6" data-validate-words="2"/>
                     </div>
                    </div>
                </div>
                <div class="row">
                     <div class="form-group col-md-10">
                        <label class="col-md-3 control-lable" for="workexperience">Work Experience</label>
                     <div class="col-md-9">
                        <input type="text" id="workexperience" name="workexperience" class="form-control" data-validate-length-range="6" data-validate-words="2"/>
                     </div>
                    </div>
                </div>
                
                 <div class="row">
                     <div class="form-group col-md-10">
                        <label class="col-md-3 control-lable" for="file">Upload Your CV</label>
                     <div class="col-md-9">
                        <asp:FileUpload ID="cvfile" runat="server"/>
                     </div>
                    </div>
                </div>
             <asp:Button ID="savePersonalInformation" runat="server" Text="Save" class="btn btn-danger " OnClick="savePersonalInformation_Click" />

                             </div>
                        </div>
                          
                      </div>
                        <!------------------- end of Step 1---------------->
                      <div id="step-2">
                          <div class="col-md-9 col-md-offset-2">
                          <div class="form-horizontal form-label-left">

                           <div class="row">
                     <div class="form-group col-md-10">
                        <label class="col-md-3 control-lable" for="institute">Institute Name</label>
                     <div class="col-md-9">
                        <input type="text" id="institute" name="institute" class="form-control input-sm" data-validate-length-range="6" data-validate-words="2"/>
                     </div>
                    </div>
                </div>
                 <div class="row">
                     <div class="form-group col-md-10">
                        <label class="col-md-3 control-lable" for="year_selector">Passing Year</label>
                     <div class="col-md-9">
                     
                        <select id='year_selector' required="required"></select>
                         
                         
                    
                     </div>
                    </div>
                </div>
                
                <div class="row">
                     <div class="form-group col-md-10">
                        <label class="col-md-3 control-lable" for="degree1">Degree 1</label>
                     <div class="col-md-9">
                        <input type="text" id="degree1" name="degree1" class="form-control input-sm" data-validate-length-range="6" data-validate-words="2"/>
                     </div>
                    </div>
                </div>
            <div class="row">
                     <div class="form-group col-md-10">
                        <label class="col-md-3 control-lable" for="specialization">Specialization</label>
                     <div class="col-md-9">
                        <input type="text" id="specialization" name="specialization" class="form-control input-sm" data-validate-length-range="6" data-validate-words="2"/>
                     </div>
                    </div>
                </div>
     
 <a data-toggle="collapse" href="#collapse4" style="width:100%;">Add another degree  </a>
      <div id="collapse4" class="panel-collapse collapse">

                <div class="row">
                     <div class="form-group col-md-10">
                        <label class="col-md-3 control-lable" for="degree2">Degree 2 (Optional)</label>
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
                     
                        <select id='second_year_selector'></select>​
                         
                    
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
          </div></div></div></div>

                     

                         <!------------------- end of Step 2---------------->
                      <div id="step-3">
                          <div class="col-md-9 col-md-offset-2">
                          <div class="form-horizontal form-label-left">

                        <div class="row">
                     <div class="form-group col-md-10">
                        <label class="col-md-3 control-lable" for="skill1">Skill 1 (Optional)</label>
                     <div class="col-md-9">
                        <input type="text" id="skill1" name="skill1" class="form-control input-sm"/>
                     </div>
                    </div>
                </div>
                 <div class="row">
                     <div class="form-group col-md-10">
                        <label class="col-md-3 control-lable" for="skill2">Skill 2 (Optional)</label>
                     <div class="col-md-9">
                        <input type="text" id="skill2" name="skill2" class="form-control input-sm"/>
                     </div>
                    </div>
                </div>
                   <div class="row">
                     <div class="form-group col-md-10">
                        <label class="col-md-3 control-lable" for="skill3">Skill 3 (Optional)</label>
                     <div class="col-md-9">
                        <input type="text" id="skill3" name="skill3" class="form-control input-sm"/>
                     </div>
                    </div>
                </div>
                    <div class="row">
                     <div class="form-group col-md-10">
                        <label class="col-md-3 control-lable" for="skill4">Skill 4 (Optional)</label>
                     <div class="col-md-9">
                        <input type="text" id="skill4" name="skill4" class="form-control input-sm"/>
                     </div>
                    </div>
                </div>
                    <div class="row">
                     <div class="form-group col-md-10">
                        <label class="col-md-3 control-lable" for="skill5">Skill 5 (Optional)</label>
                     <div class="col-md-9">
                        <input type="text" id="skill5" name="skill5" class="form-control input-sm"/>
                     </div>
                    </div>
                </div>
                          </div>

                              </div>
                              </div>



                      



                         



                       
                    </div>
                       <!------------------- end of Step 3---------------->

                    </div>
                    <!-- End SmartWizard Content -->
                      </div></div></div></div>
                  </div> </div></div></div>

                         <!-- jQuery -->
    <script src="../vendors/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap -->
    <script src="js/bootstrap.min.js"></script>
    <!-- FastClick -->
    <script src="../vendors/fastclick/lib/fastclick.js"></script>
    <!-- NProgress -->
    <script src="../vendors/nprogress/nprogress.js"></script>
    <!-- jQuery Smart Wizard -->
    <script src="../vendors/jQuery-Smart-Wizard/js/jquery.smartWizard.js"></script>
    <!-- Custom Theme Scripts -->
    <script src="../build/js/custom.min.js"></script>

    <!-- jQuery Smart Wizard -->
    <script>
        $(document).ready(function () {
            $('#wizard').smartWizard();
            $('#wizard_verticle').smartWizard({
                transitionEffect: 'slide'
            });
            $('.buttonNext').addClass('btn btn-success');
            $('.buttonPrevious').addClass('btn btn-primary');
            $('.buttonFinish').addClass('btn btn-default');
        });
    </script>
    <!-- /jQuery Smart Wizard -->
</asp:Content>

