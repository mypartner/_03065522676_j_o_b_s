<%@ Page Title="" Language="C#" MasterPageFile="~/adminmasterpage.master" AutoEventWireup="true" CodeFile="adminviewjobseeker.aspx.cs" Inherits="adminviewjobseeker" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!-- page content -->
        <div class="right_col" role="main">
          <div class="">
            <div class="page-title">
              <div class="title_left">
                <h3>View Job Seekers</h3>
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
              <div class="col-md-12">
                <div class="x_panel">
                  <div class="x_content">
                    <div class="row">
                     

                      <div class="clearfix"></div>
                         
                       
                         <div class="well profile_view">
                               <% IQueryable<jobSeeker> data = adminjobseekers.getjobseekers();
                             foreach (var j in data)
                             {
                                     %>
                      <div class="col-md-4 col-sm-4 col-xs-12 profile_details">
                          
                         
                          <div class="col-sm-12">
                            <h4 class="brief"><i><%=j.firstName + j.lastName %></i></h4>
                            <div class="left col-xs-7">
                              <h2>Email:<%=j.email %></h2>
                              <p><strong>SignupDate: </strong> <%=j.signupdate%></p>
                              <ul class="list-unstyled">
                                <li><i class="fa fa-building"></i>Education: <%=j.education %> </li>
                                <li><i class="fa fa-phone"></i> Phone :<%=j.mobile %> </li>
                              </ul>
                            </div>
                            <div class="right col-xs-5 text-center">
                                <img src="images/a2.jpg" alt="" class="img-circle img-responsive"/>
                            </div>
                          </div>
                          <div class="col-xs-12 bottom text-center">
                            <div class="col-xs-12 col-sm-6 emphasis">
                              <a href="adminviewjobseekerprofile.aspx?id=<%=j.id %>" class="btn btn-primary btn-xs"><i class="fa fa-user"> </i>View Profile</a>
                              
                            </div>
                          </div>
                                
                        </div>
                        <%} %>
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

