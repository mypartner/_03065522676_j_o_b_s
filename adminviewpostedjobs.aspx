﻿<%@ Page Title="" Language="C#" MasterPageFile="~/adminmasterpage.master" AutoEventWireup="true" CodeFile="adminviewpostedjobs.aspx.cs" Inherits="adminviewpostedjobs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <!-- page content -->
        <div class="right_col" role="main">
          <div class="">
            <div class="page-title">
              <div class="title_left">
                <h3>Projects <small>View Posted Jobs</small></h3>
              </div>

              <div class="title_right">
                <div class="col-md-5 col-sm-5 col-xs-12 form-group pull-right top_search">
                  <div class="input-group">
                    <input type="text" class="form-control" placeholder="Search for..."/>
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
                  <div class="x_title">
                    <h2>Projects</h2>
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
                  <div class="x_content">

<!--                    <p>Simple table with project listing with progress and editing options</p>-->

                    <!-- start project list -->
                    <table class="table table-striped projects">
                      <thead>
                        <tr>
                          <th style="width: 1%">#</th>
                          <th style="width: 20%">Job</th>
                          <th>Company logo</th>
                          <th>People applied</th>
                          <th>Status</th>
                          <th style="width: 20%"></th>
                        </tr>
                      </thead>
                      <tbody>
                          <%IQueryable<job> j = adminjobseekerjobs.getAlljobs();
                              foreach (var x in j) { %>
                        <tr>
                          <td>#</td>
                          <td>
                            <a><%=x.jobTitle %></a>
                            <br />
                            <small><%=x.postedDate %></small>
                          </td>
                          <td>
                              <%
                                  byte[] img = adminrecruiterjobs.getlogo(x.Id); %>
                              <img src='data:image/jpg;base64,<%= Convert.ToBase64String(img) %>' class="avatar" alt="Avatar">
                           
                          </td>
                          <td class="project_progress">
                            <div class="progress progress_sm">
                                <% int count = adminjobseekerjobs.getjobapplieronjob(x.Id); %>
                              <div class="progress-bar bg-green" role="progressbar" data-transitiongoal="<%=count%>"></div>
                            </div>
                            <small>JobApplied:<%=count%></small>
                          </td>
                          <td>
                            <button type="button" class="btn btn-success btn-xs">Success</button>
                          </td>
                          <td><
                            <a href="adminviewdescription.aspx?id=<%=x.Id %>" class="btn btn-primary btn-xs"><i class="fa fa-folder"></i> View </a>
                            <a href="adminupdatejobdescription.aspx" class="btn btn-info btn-xs"><i class="fa fa-pencil"></i> Edit </a>
                            <a href="#" class="btn btn-danger btn-xs"><i class="fa fa-trash-o"></i> Delete </a>
                              
                          </td>
                        </tr>
                          <%Session["id"] = x.Id;
                              } %>
                      
                     
                        
                      
                    
                       
                      </tbody>
                    </table>
                    <!-- end project list -->

                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- /page content -->
</asp:Content>

