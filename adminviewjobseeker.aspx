<%@ Page Title="" Language="C#" MasterPageFile="~/adminmasterpage.master" AutoEventWireup="true" CodeFile="adminviewjobseeker.aspx.cs" Inherits="adminviewjobseeker" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        .headingclass{
            text-align:center;
            font-weight:400;
            background-color:#2A3F54;
            color:white;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!-- page content -->
        <div class="right_col" role="main">
          <div class="">
            <div class="page-title">
              <div class="title_left">
                <h3>Job Detail</h3>
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
                         
                       
                         <div class="profile_view"><!-- well class is been removed-->
                               <% IQueryable<jobSeeker> data = adminjobseekers.getjobseekers();
                             foreach (var j in data)
                             {
                                     %>
                      <div class="col-md-4 col-sm-4 col-xs-12 profile_details">
                          
                         
                          <div class="col-sm-12">
                            <h4 class="brief headingclass"><i><%=(j.firstName+" " + j.lastName).ToString().ToUpper(System.Globalization.CultureInfo.InvariantCulture) %></i></h4>
                            <div class="left col-xs-8">
                             
                              <ul class="list-unstyled">
                                  
                                <li><strong><i class="fa fa-graduation-cap"></i></strong><%=j.education %> </li>
                                <li><strong><i class="fa fa-phone"></i></strong><%=j.mobile %> </li>
                                 
                                   <li><strong><i class="fa fa-flag" aria-hidden="true"></i></strong> <%=j.country%></li>
                                  <li><strong><i class="fa fa-calendar" aria-hidden="true"></i>Dob</strong> <%=j.dob%></li>
                                  <li><strong><i class="fa fa-calendar" aria-hidden="true"></i>SignupDate: </strong> <%=j.signupdate.Value.ToShortDateString()%></li>
                                   <li><strong><i class="fa fa-envelope"></i></strong><%=j.email %></li>
                              </ul>
                            </div>
                             
                            <div class="right col-xs-4 text-center">
                                   <%
                                          byte[] img = null;
                                          if (j.image != null)
                                          {
                                               img = j.image.ToArray();
                                          } %>
                                <img src='data:image/jpg;base64,<%= Convert.ToBase64String(img) %>' alt="Image not found" class="img-circle img-responsive"/>
                                
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

