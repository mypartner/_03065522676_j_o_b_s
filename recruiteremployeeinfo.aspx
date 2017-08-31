<%@ Page Title="" Language="C#" MasterPageFile="~/recruitersmaster.master" AutoEventWireup="true" CodeFile="recruiteremployeeinfo.aspx.cs" Inherits="recruiteremployeeinfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
        <link href="css/StyleSheet.css" rel="stylesheet" />
    <script>
        function generateCvpage(x) {
            var output = "waqas khan";
            var OpenWindow = window.open("cvView.aspx?id=" + x, "mywin", "width=1000,height=1000");
            OpenWindow.dataFromParent = output; // dataFromParent is a variable in child.html
            OpenWindow.init();
        };
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <!-- page content -->
    
  

        
      
    <div class="single">  
	   <div class="form-container">
            <div class="row">
              <div class="col-md-12">
                <div class="x_panel">
                  <div class="x_content">
                    <div class="row">
                      <div class="col-md-12 col-sm-12 col-xs-12 text-center">
                          Job Appliers
                      </div>

                      <div class="clearfix"></div>
                       
                      <%
                          int jid=int.Parse(Request.QueryString["id"].ToString());
                          jobsapplierclass[] appliers= clientJob.getjobappler(jid);
                          for (int i = 0; i < appliers.Length; i++)
                          {
                      %>
                      <div class="col-md-4 col-sm-4 col-xs-12 profile_details">
                        <div class="well profile_view">
                          <div class="col-sm-12">
                            <h4 class="brief"><i><%=appliers[i].js_firstname + "&nbsp" + appliers[i].js_lastname%></i></h4>
                            <div class="left col-xs-7">
                              <h2></h2>
                              <p><strong>Applied Date: </strong><%=appliers[i].ap_date %></p>
                              <ul class="list-unstyled">
                                <li><i class="fa fa-building">Country</i> <%=appliers[i].js_country %> </li>
                                <li><i class="fa fa-phone">Mobile</i> <%=appliers[i].js_mobile%></li>
                              </ul>
                            </div>
                            <div class="right col-xs-5 text-center">
                                      <%
                                          byte[] img = null;
                                          if (appliers[i].js_image != null)
                                          {
                                               img = appliers[i].js_image.ToArray();
                                          } %>
                                     <img src='data:image/jpg;base64,<%= Convert.ToBase64String(img) %>' alt="" class="img-circle img-responsive" />
                            </div>
                          </div>
                          <div class="col-xs-12 bottom text-center">
                            <div class="col-xs-12 col-sm-6 emphasis">
                              <p class="ratings">
                                <a>4.0</a>
                                <a href="#"><span class="fa fa-star"></span></a>
                                <a href="#"><span class="fa fa-star"></span></a>
                                <a href="#"><span class="fa fa-star"></span></a>
                                <a href="#"><span class="fa fa-star"></span></a>
                                <a href="#"><span class="fa fa-star-o"></span></a>
                              </p>
                            </div>
                            <div class="col-xs-12 col-sm-6 emphasis">
                              <button type="button" class="btn btn-success btn-xs"> <i class="fa fa-user">
                                </i> <i class="fa fa-comments-o"></i>

                              </button>
                              <button type="button" onclick="generateCvpage(<%=appliers[i].ap_jobseekerid%>)" >
                                <i class="fa fa-user"> </i> View Profile
                              </button>
                              
                            </div>
                          </div>
                        </div>
                      </div><%} %>


                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
    <div class="banner_1"></div>
        <!-- /page content -->
</asp:Content>

