<%@ Page Title="" Language="C#" MasterPageFile="~/adminmasterpage.master" AutoEventWireup="true" CodeFile="adminviewjobseekerprofile.aspx.cs" Inherits="adminviewjobseekerprofile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="css/StyleSheet.css" rel="stylesheet" />
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
                    <% int jobseekrid = int.Parse(Request.QueryString["id"].ToString());
                        Session["jobseekerid"] = jobseekrid.ToString();
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

                      <a class="btn btn-success" href="adminupdatejobseekerprofile.aspx"><i class="fa fa-edit m-right-xs"></i>Edit Profile</a>
                      <br />

                      <!-- start skills -->
             <!--             <h4>Skills</h4>
                  <ul class="list-unstyled user_data">
                        <li>
                          <p>Web Applications</p>
                          <div class="progress progress_sm">
                            <div class="progress-bar bg-green" role="progressbar" data-transitiongoal="50"></div>
                          </div>
                        </li>
                        <li>
                          <p>Website Design</p>
                          <div class="progress progress_sm">
                            <div class="progress-bar bg-green" role="progressbar" data-transitiongoal="70"></div>
                          </div>
                        </li>
                        <li>
                          <p>Automation & Testing</p>
                          <div class="progress progress_sm">
                            <div class="progress-bar bg-green" role="progressbar" data-transitiongoal="30"></div>
                          </div>
                        </li>
                        <li>
                          <p>UI / UX</p>
                          <div class="progress progress_sm">
                            <div class="progress-bar bg-green" role="progressbar" data-transitiongoal="50"></div>
                          </div>
                        </li>
                      </ul>-->
                      <!-- end of skills -->

                    </div>
                    <div class="col-md-9 col-sm-9 col-xs-12">

                      <!-- start of user-activity-graph -->
                   <!--   <div id="graph_bar" style="width:100%; height:280px;"></div>-->
                      <!-- end of user-activity-graph -->

                      <div class="" role="tabpanel" data-example-id="togglable-tabs">
                        <ul id="myTab" class="nav nav-tabs bar_tabs" role="tablist">
                          <li role="presentation" class="active"><a href="#tab_content1" id="home-tab" role="tab" data-toggle="tab" aria-expanded="true">Applied Jobs</a>
                          </li>
                        <li role="presentation" class=""><a href="#tab_content2" role="tab" id="profile-tab2" data-toggle="tab" aria-expanded="false">Profile</a>
                          </li>
                         
                        </ul>
                        <div id="myTabContent" class="tab-content">
                          <div role="tabpanel" class="tab-pane fade active in" id="tab_content1" aria-labelledby="home-tab">

                            <!-- start recent activity -->
                            <ul class="messages">
                                <%
                                   
                                    appliedjobdataclass[] jobs = adminjobseekerjobs.getappliedjob(jobseekrid);
                                    foreach (appliedjobdataclass j in jobs)
                                    {
                                       
                                         byte[] img = null;
                                          if (j.logo != null)
                                          {
                                               img = j.logo.ToArray();
                                          }
                                %>
                                     
                              
                              <li>
                                  
                                <img src='data:image/jpg;base64,<%= Convert.ToBase64String(img) %>' class="avatar" alt="Avatar"/>
                                <div class="message_date">
                                  <h3 class="date text-info"><%=j.app_applydate.Day %></h3>
                                  <p class="month"><%=j.app_applydate.ToString("MMMM") %></p>
                                    <p class="month"><%=j.app_applydate.Year %></p>
                                </div>
                                <div class="message_wrapper">
                                  <h4 class="heading"><%=j.job_jobtitle %></h4>
                                     <% int len = j.job_decription.Length;
                           int Start = 0;

                           Start = j.job_decription.IndexOf(".");
                           string dec = "";
                           if (Start > 0)
                           {
                               dec = j.job_decription.Remove(Start, len - Start);
                           }
                           else if (Start > 195)
                           {
                               dec = j.job_decription.Remove(195, len - 195);
                           }
                           else
                           {
                               dec = j.job_decription.Remove(195, len - 195);
                           }
                            %>
                                  <p class="description">Description:<%=dec + ".....<br>"  %>  <a href="adminviewdescription.aspx?id=<%=j.job_id%>" >Read More</a></p>
                                  <br />
                                  
                                </div>
                              </li>
                                <%} %>
                            </ul>
                            <!-- end recent activity -->

                          </div>
                        <div role="tabpanel" class="tab-pane fade" id="tab_content2" aria-labelledby="profile-tab">

                            <!-- start user projects -->
                            <table class="data table table-striped no-margin">
                             
                              <tbody>
                                  <tr><td colspan="5" class="adimjobseekerprofile">Personal Information</td></tr>
                                <tr>
                                  
                                  <td>Name :<%=js.firstName +" "+js.lastName %></td>
                                  <td>Education:<%=js.education %></td>
                                  <td>Gender:<%=js.sex %></td>
                                    <td>Country:<%=js.country%></td>
                                    
                                
                                </tr>
                                   <tr>
                                    <td>Dob:<%= js.dob%></td>
                                    <td>Mobile:<%= js.mobile%></td>
                                    <td>Email:<%= js.email%></td>
                                    <td>SignupDate:<%=js.signupdate.Value.ToShortDateString()%></td>
                                
                                </tr>
                                <tr><td colspan="5" class="adimjobseekerprofile">Educational Information</td></tr>
                                  <%IQueryable<jobseekereducationalInfo> jeinfo = adminJobseekerProfile.getJobseekerEdu_info(jobseekrid);
                                      foreach (jobseekereducationalInfo x in jeinfo)
                                      { %>
                                <tr>
                                  
                                  <td>Institute :<%=x.instituteName %></td>
                                  <td>Passing year:<%=x.passingOutYear.ToShortDateString()%></td>
                                  <td>Degree:<%=x.degreeName %></td>
                                  <td>Specialization:<%=x.specialization%></td>
                                    
                                
                                </tr>
                                  <%} %>
                                  <tr><td colspan="5" class="adimjobseekerprofile">Profesional Information</td></tr>
                                  <%IQueryable<jobSeekerProfessionalInfo> eduinfo = adminJobseekerProfile.getJobseekerPro_info(jobseekrid);
                                      foreach (jobSeekerProfessionalInfo x in eduinfo)
                                      { %>
                                <tr>
                                  
                                  <td>Company:<%=x.company%></td>
                                  <td>Start Date:<%=x.jobStartDate.Value.ToShortDateString()%></td>
                                  <td>End Date:<%=x.jobEndDate.Value.ToShortDateString()%></td>
                                  
                                    <td>Experiance:<%=x.workExperience%></td>
                                    
                                    
                                
                                </tr>
                                  <tr>
                                      <td>WorkExperiance:<%=x.jobDescription%></td>
                                  </tr>
                                  <%} %>
                                  <tr><td colspan="5" class="adimjobseekerprofile">Skills</></tr>
                                  <%  skillsandcv skill = adminJobseekerProfile.getjobseekerSkills(jobseekrid);%>
                                     
                                <tr>
                                  <%if (skill != null)
                                      { %>
                                    <td><%=skill.skills%></td>
                                   <%-- <td><%=skill.skill2%></td>
                                    <td><%=skill.skill3%></td>
                                    <td><%=skill.skill4%></td>
                                    <td><%=skill.skill5%></td> --%>
                                    <%} %>
                                </tr>
                                  
                                
                                 
                              </tbody>
                            </table>
                            <!-- end user projects -->

                          </div>
                          <div role="tabpanel" class="tab-pane fade" id="tab_content3" aria-labelledby="profile-tab">
                          
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
        <!-- /page content -->
</asp:Content>

