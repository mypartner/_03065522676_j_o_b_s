<%@ Page Title="" Language="C#" MasterPageFile="~/adminmasterpage.master" AutoEventWireup="true" CodeFile="admin_videos.aspx.cs" Inherits="admin_videos" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

         <div class="right_col" role="main">
          <div class="">

            
            <div class="clearfix"></div>

            <div class="row">
              <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>Videos </h2>
                    
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                  
                    <div class="col-md-9 col-sm-9 col-xs-12">



                      <div class="" role="tabpanel" data-example-id="togglable-tabs">
                        <ul id="myTab" class="nav nav-tabs bar_tabs" role="tablist">
                          <li role="presentation" class="active"><a href="#tab_content1" id="home-tab" role="tab" data-toggle="tab" aria-expanded="true">View Videos</a>
                          </li>
                          <li role="presentation" class=""><a href="#tab_content2" role="tab" id="profile-tab" data-toggle="tab" aria-expanded="false">Add Video
                                                           </a>
                          </li>
                         <%-- <li role="presentation" class=""><a href="#tab_content3" role="tab" id="profile-tab2" data-toggle="tab" aria-expanded="false">Update Feeds</a>
                          </li>--%>
                        </ul>
                        <div id="myTabContent" class="tab-content">
                          <div role="tabpanel" class="tab-pane fade active in" id="tab_content1" aria-labelledby="home-tab">

                            <!-- start recent activity -->
                             <table id="datatable" class="table table-striped table-bordered">
                      <thead>
                        <tr>
                          <%--<th>Image</th>--%>
                            <th>Title</th>
                          <th>Video link</th>
                          <th>Publish date</th>
                          <th>End date</th>
                          
                          
                        </tr>
                      </thead>


                      <tbody>
                          <% IQueryable<video> v = feedsclass.getVideos();
                              foreach (var x in v)
                              {
                                 
                               %>
                        <tr>
                          <td><%=x.video_title %></td>
                          <td><a href="<%=x.video_link %>" target="_blank" style="color:blue;text-decoration:underline"><%=x.video_link %></a></td>
                          <td><%=x.publish_date.ToShortDateString() %></td>
                          <td><%=x.end_date.ToShortDateString() %></td>
                    
                        </tr>
                          <%} %>
                      </tbody>
                    </table>
                            <!-- end recent activity -->

                          </div>
                          <div role="tabpanel" class="tab-pane fade" id="tab_content2" aria-labelledby="profile-tab">

                            <!-- start user projects -->
                         <div class="row">

                                        <div class="item col-md-5">
                                            <b>Title</b>
                                            <input runat="server" type="text" id="title" name="title" placeholder="Video title..."
                                                data-validate-length-range="6" data-validate-words="1" required="required" class="form-control" />
                                        </div>


                                        <div class=" col-md-5">
                                            <b>Video link</b>
                                            <input type="url" id="link" name="link" placeholder="Enter video link..." class="form-control" />
<%--                                            <input runat="server" type="url" id="link" name="link" placeholder="Enter video link..." class="form-control" />--%>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="item col-md-5">
                                            <b>Publish date</b>
                                            <div class="input-prepend input-group">
                                                <span class="add-on input-group-addon"><i class="glyphicon glyphicon-calendar fa fa-calendar"></i></span>
                                                <input type="text" name="startdate" id="startdate" required="required" value="<%=DateTime.Now.ToShortDateString() %>" class="form-control" />

                                            </div>
                                            <%--<input  type="text" id="eventstartdate" value="<%=DateTime.Now.ToShortDateString() %>" required="required" name="eventstartdate"  class="form-control"/>--%>
                                        </div>

                                        <div class="item col-md-5">
                                            <b>End date</b>

                                            <div class="input-prepend input-group">
                                                <span class="add-on input-group-addon"><i class="glyphicon glyphicon-calendar fa fa-calendar"></i></span>
                                                <input type="text" name="enddate" id="enddate" required="required" value="<%=DateTime.Now.ToShortDateString() %>" class="form-control" />

                                            </div>
                                            <%--<input  type="text" id="eventenddate" value="<%=DateTime.Now.ToShortDateString() %>" required="required"  name="eventenddate"   placeholder="Select date..." class="form-control has-feedback-left"/>--%>
                                        </div>

                                    </div>

                                    <asp:Button ID="VideoSubmit" runat="server" Text="Add new Video" class="btn btn-success"  OnClick="video_add" AutoPostBack="false" CausesValidation="true" />


                            <!-- end user projects -->

                          </div>
                          <%--<div role="tabpanel" class="tab-pane fade" id="tab_content3" aria-labelledby="profile-tab">
                            <p>xxFood truck fixie locavore, accusamus mcsweeney's marfa nulla single-origin coffee squid. Exercitation +1 labore velit, blog sartorial PBR leggings next level wes anderson artisan four loko farm-to-table craft beer twee. Qui
                              photo booth letterpress, commodo enim craft beer mlkshk </p>
                          </div>--%>
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


