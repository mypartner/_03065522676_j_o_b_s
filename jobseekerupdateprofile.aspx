<%@ Page Title="" Language="C#" MasterPageFile="~/jobseekermaster.master" AutoEventWireup="true" CodeFile="jobseekerupdateprofile.aspx.cs" Inherits="jobseekerupdateprofile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script>
        function setVal(val) {
           // $("eduid").val(e);
            document.getElementById("eduid").value =  val;
        }
        function pupdatebutton(v) {
            
            alert("update");
         
          

        
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div style="margin-top: 3%"></div>


    <div class="container">
        <div class="single">
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

                                            <!-- start recent activity -->
                                            <!--        <ul class="messages">
                              <li>
                                <img src="images/img.jpg" class="avatar" alt="Avatar">
                                <div class="message_date">
                                  <h3 class="date text-info">24</h3>
                                  <p class="month">May</p>
                                </div>
                                <div class="message_wrapper">
                                  <h4 class="heading">Desmond Davison</h4>
                                  <blockquote class="message">Raw denim you probably haven't heard of them jean shorts Austin. Nesciunt tofu stumptown aliqua butcher retro keffiyeh dreamcatcher synth.</blockquote>
                                  <br />
                                  <p class="url">
                                    <span class="fs1 text-info" aria-hidden="true" data-icon=""></span>
                                    <a href="#"><i class="fa fa-paperclip"></i> User Acceptance Test.doc </a>
                                  </p>
                                </div>
                              </li>
                              <li>
                                <img src="images/img.jpg" class="avatar" alt="Avatar">
                                <div class="message_date">
                                  <h3 class="date text-error">21</h3>
                                  <p class="month">May</p>
                                </div>
                                <div class="message_wrapper">
                                  <h4 class="heading">Brian Michaels</h4>
                                  <blockquote class="message">Raw denim you probably haven't heard of them jean shorts Austin. Nesciunt tofu stumptown aliqua butcher retro keffiyeh dreamcatcher synth.</blockquote>
                                  <br />
                                  <p class="url">
                                    <span class="fs1" aria-hidden="true" data-icon=""></span>
                                    <a href="#" data-original-title="">Download</a>
                                  </p>
                                </div>
                              </li>
                              <li>
                                <img src="images/img.jpg" class="avatar" alt="Avatar">
                                <div class="message_date">
                                  <h3 class="date text-info">24</h3>
                                  <p class="month">May</p>
                                </div>
                                <div class="message_wrapper">
                                  <h4 class="heading">Desmond Davison</h4>
                                  <blockquote class="message">Raw denim you probably haven't heard of them jean shorts Austin. Nesciunt tofu stumptown aliqua butcher retro keffiyeh dreamcatcher synth.</blockquote>
                                  <br />
                                  <p class="url">
                                    <span class="fs1 text-info" aria-hidden="true" data-icon=""></span>
                                    <a href="#"><i class="fa fa-paperclip"></i> User Acceptance Test.doc </a>
                                  </p>
                                </div>
                              </li>
                              <li>
                                <img src="images/img.jpg" class="avatar" alt="Avatar">
                                <div class="message_date">
                                  <h3 class="date text-error">21</h3>
                                  <p class="month">May</p>
                                </div>
                                <div class="message_wrapper">
                                  <h4 class="heading">Brian Michaels</h4>
                                  <blockquote class="message">Raw denim you probably haven't heard of them jean shorts Austin. Nesciunt tofu stumptown aliqua butcher retro keffiyeh dreamcatcher synth.</blockquote>
                                  <br />
                                  <p class="url">
                                    <span class="fs1" aria-hidden="true" data-icon=""></span>
                                    <a href="#" data-original-title="">Download</a>
                                  </p>
                                </div>
                              </li>

                            </ul>-->
                                              
                                            <div id="pupdateid" runat="server">
                                                <% 
                                                    int jobsekerid = jobseekerclass.getSeekerID(Session["LoginSession"].ToString());
                                                    int pid = newClass.getSeekerID(jobsekerid);
                                                    IQueryable<jobSeekerProfessionalInfo> jspi = newClass.getProfessionalInfo(jobsekerid);
                                                %>
                                              
                                                <div class="table-responsive">

                                                    <table class="table">
                                                        <thead>
                                                            <tr>
                                                                <th>Designation</th>
                                                                <th>Job Start Date</th>
                                                                <th>Job End Date</th>
                                                                <th>Comapany Name</th>
                                                                <th>Job Description</th>
                                                                <th>Work Experience</th>
                                                                <th></th>
                                                                <th></th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <%
                                                                    foreach (var x in jspi)
                                                                    {
                                                                         %>
                                                            <tr>
                                                                
                                                                <td><%=x.experience %></td>
                                                                <td><%=x.jobStartDate %></td>
                                                                <td><%=x.jobEndDate %></td>
                                                                <td><%=x.company %></td>
                                                                <td><%=x.jobDescription %></td>
                                                                <td><%=x.workExperience %></td>
                                                                <td><a href="jobseekerupdateprofessionalinfo.aspx?id=<%=x.Id %>"  onclick="pupdatebutton()"  class="btn btn-default">update</a></td>
                                                               
                                                                
                                                            </tr>
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
                                                                <th>Institute name</th>
                                                                <th>Passing year</th>
                                                                <th>Degree</th>
                                                                <th>Specialization</th>
                                                                <th></th>

                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <%
                                                                foreach (var x in jsei)
                                                                {
                                                                 %>
                                                            <tr>

                                                                <td><%=x.instituteName %></td>
                                                                <td><%=x.passingOutYear %></td>
                                                                <td><%=x.degreeName %></td>
                                                                <td><%=x.specialization %></td>
                                                             
                                                                <td><a href="jobseekerupdateeducationalinfo.aspx?id=<%=x.Id %>"  class="btn btn-default" onserverclick="vieweducationalinfo_click">update</a></td>
                                                            </tr>
                                                            <%} %>
                                                        </tbody>
                                                    </table>
                                                </div>
                                            </div>
                                            
                                              </div>

<%--                                <div class="row">
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
                     
                      <!--  <select id='year_selector' required="required"></select>-->
                         
                         <input type="date" name="year_selector" id="year_selector" />
                    
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
                        <input type="text" id="specialization" name="specialization" class="form-control input-sm" />
                     </div>
                    </div>
                </div>
     
 <a data-toggle="collapse" href="#collapse4" style="width:100%;">Update another degree  </a>
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
              </div></div>
  <asp:Button ID="updateeducationalinfo" runat="server" Text="Update educational info" class="btn btn-danger" />  --%>
                            <!-- start user projects -->
                           
                            <!-- end user projects -->

                          
                                        <div role="tabpanel" class="tab-pane fade" id="tab_content3" aria-labelledby="profile-tab">
                                            <div class="row">
                                                <div class="form-group col-md-10">
                                                    <label class="col-md-3 control-lable" for="skill1">Skill 1 (Seperated with comma)</label>
                                                    <div class="col-md-9">
                                                        <input type="text" id="skill1" name="skill1" class="form-control input-sm" />
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="form-group col-md-10">
                                                    <label class="col-md-3 control-lable" for="file">Upload Your CV</label>
                                                    <div class="col-md-9">
                                                        <asp:FileUpload ID="cvfile" runat="server" />
                                                    </div>
                                                </div>
                                            </div>
                                            <%--   <div class="row">
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
                </div>--%>
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
</asp:Content>

