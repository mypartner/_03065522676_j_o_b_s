<%@ Page Title="" Language="C#" MasterPageFile="~/adminmasterpage.master" AutoEventWireup="true" CodeFile="adminupdatejobseekerprofile.aspx.cs" Inherits="adminupdatejobseekerprofile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <!-- page content -->
        <div class="right_col" role="main">
          <div class="">
            <div class="page-title">
              <div class="title_left">
                <h3>Job Seeker Profile</h3>
              </div>

              <div class="title_right">
                <div class="col-md-5 col-sm-5 col-xs-12 form-group pull-right top_search">
                  <div class="input-group">
                    <input type="text" class="form-control" placeholder="Search for...">
                    <span class="input-group-btn">
                      <button class="btn btn-default" type="button">Go!</button>
                    </span>
                  </div>
                </div>
              </div>
            </div>
            
            <div class="clearfix"></div>

            <div class="row">
              <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>User Report <small>Activity report</small></h2>
                    <ul class="nav navbar-right panel_toolbox">
                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                      </li>
                      <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
                        <ul class="dropdown-menu" role="menu">
                          <li><a href="#">Settings 1</a>
                          </li>
                          <li><a href="#">Settings 2</a>
                          </li>
                        </ul>
                      </li>
                      <li><a class="close-link"><i class="fa fa-close"></i></a>
                      </li>
                    </ul>
                    <div class="clearfix"></div>
                  </div>
                    <% int jobseekrid = int.Parse(Session["jobseekerid"].ToString());
                        jobSeeker js = adminJobseekerProfile.getJobseekerDetail(jobseekrid);
                         byte[] img1 = null;
                                          if (js.image != null)
                                          {
                                               img1 = js.image.ToArray();
                                          }
                         %>
                  <div class="x_content">
                    <div class="col-md-3 col-sm-3 col-xs-12 profile_left">
                      <div class="profile_img">
                        <div id="crop-avatar">
                          <!-- Current avatar -->
                        <img class="img-responsive avatar-view" src='data:image/jpg;base64,<%= Convert.ToBase64String(img1) %>' alt="Avatar" title="Change the avatar"/>
                         <asp:FileUpload ID="FileUpload1" runat="server" />
                        </div>
                      </div>
                      <h3><%=js.firstName+"  "+js.lastName %></h3>

                      <ul class="list-unstyled user_data">
                        <li><i class="fa fa-map-marker user-profile-icon"></i> <%=js.country %>
                                 
                        </li>

                        <li>
                          <i class="fa fa-briefcase user-profile-icon"></i>UserSince: <%=js.signupdate %>
                        </li>

                       <%-- <li class="m-top-xs">--%>
                          <li class="fa fa-external-link user-profile-icon">Email:<%=js.email%></li>
                           <li class="fa fa-external-link user-profile-icon">Phone:<%=js.mobile%></li>
                           <%-- </li>--%>
                      </ul>

                      <br />

                   

                    </div>
                    <div class="col-md-9 col-sm-9 col-xs-12">



                      <div class="" role="tabpanel" data-example-id="togglable-tabs">
                        <ul id="myTab" class="nav nav-tabs bar_tabs" role="tablist">
                          <li role="presentation" class="active"><a href="#tab_content1" id="home-tab" role="tab" data-toggle="tab" aria-expanded="true">Update Professional Info</a>
                          </li>
                        <li role="presentation" class=""><a href="#tab_content2" role="tab" id="profile-tab2" data-toggle="tab" aria-expanded="false">Update Education</a>
                          </li>
                          <li role="presentation" class=""><a href="#tab_content3" role="tab" id="profile-tab3" data-toggle="tab" aria-expanded="false">Update skills</a>
                          </li>
                        </ul>
                        <div id="myTabContent" class="tab-content">

                            <!--start professional info-->
                          <div role="tabpanel" class="tab-pane fade active in" id="tab_content1" aria-labelledby="home-tab">

                            <!-- start recent activity -->
                         <div id="step-1">
                         <div class="col-md-9 col-md-offset-2" style="margin-top:2%">
                        <div class="form-horizontal form-label-left">
                        
                          <div class="row">
                     <div class="form-group col-md-10">
                        <label class="col-md-3 control-lable" for="experiance">Experience</label>
                     <div class="col-md-9">
                        <input type="text" id="experiance" name="experiance" class="form-control input-sm" runat="server"/>
                     </div>
                    </div>
                </div>
                 <div class="row">
                     <div class="form-group col-md-10">
                        <label class="col-md-3 control-lable" for="jobstartdate" runat="server">Job Start Date</label>
                     <div class="col-md-9">
                        <input type="date" id="jobstartdate" name="jobstartdate" class="form-control input-sm" />
                     </div>
                    </div>
                </div>
                
                <div class="row">
                     <div class="form-group col-md-10">
                        <label class="col-md-3 control-lable" for="jobenddate">Job End Date</label>
                     <div class="col-md-9">
                        <input type="date" id="jobenddate" name="jobenddate"  class="form-control input-sm"/>
                     </div>
                    </div>
                </div>

                <div class="row">
                     <div class="form-group col-md-10">
                        <label class="col-md-3 control-lable" for="companyname">Company Name</label>
                     <div class="col-md-9">
                         
                        <input type="text" id="companyname" name="companyname" runat="server" class="form-control input-sm"/>
                     </div>
                    </div>
                </div>
                <div class="row">
                     <div class="form-group col-md-10">
                        <label class="col-md-3 control-lable" for="description">Job Description</label>
                     <div class="col-md-9">
                        <input type="text" id="description" name="description" runat="server" class="form-control input-sm" />
                     </div>
                    </div>
                </div>
                <div class="row">
                     <div class="form-group col-md-10">
                        <label class="col-md-3 control-lable" for="workexperience">Work Experience</label>
                     <div class="col-md-9">
                        <input type="text" id="workexperience" name="workexperience" runat="server" class="form-control" />
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
             <asp:Button ID="updateprofessionalinfo" runat="server" Text="Update" class="btn btn-success " OnClick="updateprofessionalinfo_Click"/>

                             </div>
                        </div>
                          
                      </div>
                            <!-- end recent activity -->

                          </div>
                            <!--end professional info-->

                            <!--start educational info-->
                        <div role="tabpanel" class="tab-pane fade" id="tab_content2" aria-labelledby="profile-tab">

                            <!-- start user projects -->
                              <!------------------- end of Step 1---------------->
                      <div id="step-2">
                          <div class="col-md-9 col-md-offset-2">
                          <div class="form-horizontal form-label-left">

                           <div class="row">
                     <div class="form-group col-md-10">
                        <label class="col-md-3 control-lable" for="institute">Institute Name<span class="required"></span></label>
                     <div class="col-md-9">
                        <input type="text" id="institute" name="institute" class="form-control input-sm" runat="server"/>
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
                        <input type="text" id="degree1" name="degree1" class="form-control input-sm" runat="server"/>
                     </div>
                    </div>
                </div>
            <div class="row">
                     <div class="form-group col-md-10">
                        <label class="col-md-3 control-lable" for="specialization">Specialization</label>
                     <div class="col-md-9">
                        <input type="text" id="specialization" name="specialization" class="form-control input-sm" runat="server" />
                     </div>
                    </div>
                </div>
     
 <a data-toggle="collapse" href="#collapse4" style="width:100%;">Add another degree  </a>
      <div id="collapse4" class="panel-collapse collapse">

                <div class="row">
                     <div class="form-group col-md-10">
                        <label class="col-md-3 control-lable" for="degree2">Degree 2 (Optional)</label>
                     <div class="col-md-9">
                        <input type="text" id="degree2" name="degree2" class="form-control input-sm" runat="server"/>
                     </div>
                    </div>
                </div>
           <div class="row">
                     <div class="form-group col-md-10">
                        <label class="col-md-3 control-lable" for="secondinstitute">Institute Name</label>
                     <div class="col-md-9">
                        <input type="text" id="secondinstitute" name="secondinstitute" class="form-control input-sm" runat="server"/>
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
                        <input type="text" id="secondspecialization" name="secondspecialization" runat="server" class="form-control input-sm"/>
                     </div>
                    </div>
</div>
          </div>
                           
                        
                          </div>  <asp:Button ID="updateeducationalinfoo" runat="server" Text="Update" class="btn btn-success" OnClick="updateeducationalinfoo_Click"/>   </div>
                         
                      </div>

                     

                         <!------------------- end of Step 2---------------->
                            <!-- end user projects -->

                          </div>
                             <!--end educational info-->

                            <!--start skills info-->
                          <div role="tabpanel" class="tab-pane fade" id="tab_content3" aria-labelledby="profile-tab">
                            <div id="step-3">
                          <div class="col-md-9 col-md-offset-2">
                          <div class="form-horizontal form-label-left">

                        <div class="row">
                     <div class="form-group col-md-10">
                        <label class="col-md-3 control-lable" for="skill1">Skill 1 (Optional)</label>
                     <div class="col-md-9">
                        <input type="text" id="skill1" name="skill1" class="form-control input-sm" runat="server"/>
                     </div>
                    </div>
                </div>
                 <div class="row">
                     <div class="form-group col-md-10">
                        <label class="col-md-3 control-lable" for="skill2">Skill 2 (Optional)</label>
                     <div class="col-md-9">
                        <input type="text" id="skill2" name="skill2" class="form-control input-sm" runat="server"/>
                     </div>
                    </div>
                </div>
                   <div class="row">
                     <div class="form-group col-md-10">
                        <label class="col-md-3 control-lable" for="skill3">Skill 3 (Optional)</label>
                     <div class="col-md-9">
                        <input type="text" id="skill3" name="skill3" class="form-control input-sm" runat="server"/>
                     </div>
                    </div>
                </div>
                    <div class="row">
                     <div class="form-group col-md-10">
                        <label class="col-md-3 control-lable" for="skill4">Skill 4 (Optional)</label>
                     <div class="col-md-9">
                        <input type="text" id="skill4" name="skill4" class="form-control input-sm" runat="server"/>
                     </div>
                    </div>
                </div>
                    <div class="row">
                     <div class="form-group col-md-10">
                        <label class="col-md-3 control-lable" for="skill5">Skill 5 (Optional)</label>
                     <div class="col-md-9">
                        <input type="text" id="skill5" name="skill5" class="form-control input-sm" runat="server"/>
                     </div>
                    </div>
                </div>
                               <asp:Button ID="updateskills" runat="server" Text="Update" class="btn btn-danger" OnClick="updateskill_Click"/>
                          </div>

                              </div>
                              </div>



                      



                         



                       
                    </div>
                       <!------------------- end of Step 3---------------->
                         
                            <!--end skills info-->
                        </div>
                      </div>
                           <input type="hidden" id="hiddenid" runat="server"/>

                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- /page content -->
</asp:Content>

