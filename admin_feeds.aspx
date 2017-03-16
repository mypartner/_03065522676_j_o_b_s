<%@ Page Title="" Language="C#" MasterPageFile="~/adminmasterpage.master" AutoEventWireup="true" CodeFile="admin_feeds.aspx.cs" Inherits="admin_feeds" %>

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
                    <h2>Feeds </h2>
                    
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                  
                    <div class="col-md-9 col-sm-9 col-xs-12">



                      <div class="" role="tabpanel" data-example-id="togglable-tabs">
                        <ul id="myTab" class="nav nav-tabs bar_tabs" role="tablist">
                          <li role="presentation" class="active"><a href="#tab_content1" id="home-tab" role="tab" data-toggle="tab" aria-expanded="true">View Feeds</a>
                          </li>
                          <li role="presentation" class=""><a href="#tab_content2" role="tab" id="profile-tab" data-toggle="tab" aria-expanded="false">Add Feeds
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
                          <th>Image</th>
                            <th>Title</th>
                          <th>Description</th>
                          <th>Start date</th>
                          <th>End date</th>
                          
                          
                        </tr>
                      </thead>


                      <tbody>
                          <% IQueryable<feed> f = feedsclass.getFeeds();
                              foreach (var x in f)
                              {
                                  byte[] img1 = null;
                                  if (x.image != null)
                                  {
                                      img1 = x.image.ToArray();
                                  }
                                  else
                                  {
                                      img1 = System.Text.Encoding.UTF8.GetBytes ("images/banner_1.jpg");
                                  }
                               %>
                        <tr>
                          <td><img src='data:image/jpg;base64,<%= Convert.ToBase64String(img1) %>' id="clientimage"  alt="Select Photograph"  height="80px" width="80px"/></td>
                          <td><%=x.shortDescription %></td>
                          <td><%=x.longDescription %></td>
                          <td><%=x.feedstartdate.ToShortDateString() %></td>
                          <td><%=x.feedenddate.ToShortDateString() %></td>
                    
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
                                            <input runat="server" type="text" id="title" name="title" placeholder="Event title..."
                                                data-validate-length-range="6" data-validate-words="1" required="required" class="form-control" />
                                        </div>


                                        <div class=" col-md-5">
                                            <b>Description</b>

                                            <input runat="server" type="text" id="desc" name="desc" placeholder="Event description..." class="form-control" />
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="item col-md-5">
                                            <b>Start date</b>
                                            <div class="input-prepend input-group">
                                                <span class="add-on input-group-addon"><i class="glyphicon glyphicon-calendar fa fa-calendar"></i></span>
                                                <input type="text" name="feedstartdate" id="feedstartdate" value="<%=DateTime.Now.ToShortDateString() %>" required="required"  class="form-control" />

                                            </div>
                                            <%--<input  type="text" id="eventstartdate" value="<%=DateTime.Now.ToShortDateString() %>" required="required" name="eventstartdate"  class="form-control"/>--%>
                                        </div>

                                        <div class="item col-md-5">
                                            <b>End date</b>

                                            <div class="input-prepend input-group">
                                                <span class="add-on input-group-addon"><i class="glyphicon glyphicon-calendar fa fa-calendar"></i></span>
                                                <input type="text" name="feedenddate" id="feedenddate" required="required" value="<%=DateTime.Now.ToShortDateString() %>" class="form-control" />

                                            </div>
                                            <%--<input  type="text" id="eventenddate" value="<%=DateTime.Now.ToShortDateString() %>" required="required"  name="eventenddate"   placeholder="Select date..." class="form-control has-feedback-left"/>--%>
                                        </div>

                                    </div>

                                    <div class="row">
                                        <div class="item col-md-5">
                                            <b>Upload image</b>
                                            <div class=" input-group demo2">
                                                <asp:FileUpload ID="feedImage" runat="server" required="required"/>
                                                
                                            </div>
                                        </div>
                                    </div>
                                    <asp:Button ID="FeedSubmit" runat="server" Text="Submit new feed" class="btn btn-success"  OnClick="feed_add" AutoPostBack="false" CausesValidation="true" />


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
    <!-- jQuery -->
    <script src="../vendors/jquery/dist/jquery.min.js"></script>

    <!-- bootstrap-daterangepicker -->
    <script src="js/moment/moment.min.js"></script>
    <script src="js/datepicker/daterangepicker.js"></script>
   
    
        <!-- /page content -->

</asp:Content>

