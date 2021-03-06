﻿<%@ Page Title="" Language="C#" MasterPageFile="~/jobseekermaster.master" AutoEventWireup="true" CodeFile="jobseekerjobs.aspx.cs" Inherits="jobs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <div class="banner_1">
	<div class="container">
		<div id="search_wrapper1">
		   <div id="search_form" class="clearfix">
		    <h1>Start your job search</h1>
		    <p>
			 <input type="text" class="text" placeholder=" " value="Enter Keyword(s)" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Enter Keyword(s)';}">
			 <input type="text" class="text" placeholder=" " value="Location" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Location';}">
			 <label class="btn2 btn-2 btn2-1b"><input type="submit" value="Find Jobs"/></label>
			</p>
           </div>
		</div>
   </div> 
</div>	
   <div class="container">
    <div class="single">  
	   <div class="col-md-9 single_right">
	      <div class="but_list">
	       <div class="bs-example bs-example-tabs" role="tabpanel" data-example-id="togglable-tabs">
			<ul id="myTab" class="nav nav-tabs" role="tablist">
			  <li role="presentation" class="active"><a href="#home" id="home-tab" role="tab" data-toggle="tab" aria-controls="home" aria-expanded="true">Available jobs</a></li>
		   </ul>
		<div id="myTabContent" class="tab-content">
		  <div role="tabpanel" class="tab-pane fade in active" id="home" aria-labelledby="home-tab">
              <% 
                  IQueryable<job> jobss= clientJob.gettodayjobs();
                  foreach (job j in jobss)
                  {%>
		    <div class="tab_grid">''
			    <div class="jobs-item with-thumb">
				    <div class="thumb"><a href="jobs_single.html"><img src="images/a2.jpg" class="img-responsive" alt=""/></a></div>
				    <div class="jobs_right">
						<div class="date"><%=j.postedDate.Day.ToString()%><span><%=j.postedDate.ToString("MMMM") %></span></div>
						<div class="date_desc"><h6 class="title"><a href="jobs_single.html"><%=j.jobTitle %></a></h6>
						  <span class="meta"><%=j.country %></span>
						</div>
						<div class="clearfix"> </div>
                        <ul class="top-btns">
							<li><a href="#" class="fa fa-plus toggle"></a></li>
							
						</ul>
                        <% int len = j.description.Length;
                            int Start = 0;

                            Start = j.description.IndexOf(".");
                            string dec = "";
                            if (Start > 0) {
                                dec = j.description.Remove(Start, len - Start);
                            }
                            else if (Start > 195)
                            {
                                 dec= j.description.Remove(195, len - 195);
                            }
                            else
                            {
                                dec= j.description.Remove(195, len - 195);
                            }
                            %>
                        
						<p class="description">Description:<%=dec+".....<br>"  %> <a href="jobseekerviewdescription.aspx?id=<%=j.Id%>" class="read-more">Read More</a></p>
                    </div>
					<div class="clearfix"> </div>
				</div>
		      </div><%} %>
		  </div>
	  </div>
     </div>
    </div>
    <ul class="pagination jobs_pagination">
		<li class="disabled"><a href="#" aria-label="Previous"><span aria-hidden="true">«</span></a></li>
		<li class="active"><a href="#">1 <span class="sr-only">(current)</span></a></li>
		<li><a href="#">2</a></li>
		<li><a href="#">3</a></li>
		<li><a href="#">4</a></li>
		<li><a href="#">5</a></li>
		<li><a href="#" aria-label="Next"><span aria-hidden="true">»</span></a></li>
	</ul>
   </div>
  <!-- <div class="col-md-3">
	   	  <div class="widget_search">
			<h5 class="widget-title">Search</h5>
			<div class="widget-content">
				<span>I'm looking for a ...</span>
                <select class="form-control jb_1">
					<option value="0">Job</option>
					<option value="">Category</option>
					<option value="">Category</option>
					<option value="">Category</option>
					<option value="">Category</option>
				</select>
                <span>in</span>
                <input type="text" class="form-control jb_2" placeholder="Location">
                <input type="text" class="form-control jb_2" placeholder="Industry / Role">
                <input type="submit" class="btn btn-default" value="Search">
			</div>
		  </div>
	   	  <div class="col_3">
	   	  	<h3>Work Experiance</h3>
	   	  	  <table class="table">
                    <tbody>
                        <tr class="unread checked">
                            <td class="hidden-xs">
                                <input type="checkbox" class="checkbox">
                            </td>
                            <td class="hidden-xs">
                                Junior
                            </td>
                            <td>
                                (56)
                            </td>
                        </tr>
                        <tr class="unread checked">
                            <td class="hidden-xs">
                                <input type="checkbox" class="checkbox">
                            </td>
                            <td class="hidden-xs">
                                Senior
                            </td>
                            <td>
                                (56)
                            </td>
                        </tr>
                        <tr class="unread checked">
                            <td class="hidden-xs">
                                <input type="checkbox" class="checkbox">
                            </td>
                            <td class="hidden-xs">
                                Middle
                            </td>
                            <td>
                                (56)
                            </td>
                        </tr>
                        <tr class="unread checked">
                            <td class="hidden-xs">
                                <input type="checkbox" class="checkbox">
                            </td>
                            <td class="hidden-xs">
                                Junior
                            </td>
                            <td>
                                (56)
                            </td>
                        </tr>
                        <tr class="unread checked">
                            <td class="hidden-xs">
                                <input type="checkbox" class="checkbox">
                            </td>
                            <td class="hidden-xs">
                                Junior
                            </td>
                            <td>
                                (56)
                            </td>
                        </tr>
                        <tr class="unread checked">
                            <td class="hidden-xs">
                                <input type="checkbox" class="checkbox">
                            </td>
                            <td class="hidden-xs">
                                Junior
                            </td>
                            <td>
                                (56)
                            </td>
                        </tr>
                        <tr class="unread checked">
                            <td class="hidden-xs">
                                <input type="checkbox" class="checkbox">
                            </td>
                            <td class="hidden-xs">
                                Junior
                            </td>
                            <td>
                                (56)
                            </td>
                        </tr>
                        <tr class="unread checked">
                            <td class="hidden-xs">
                                <input type="checkbox" class="checkbox">
                            </td>
                            <td class="hidden-xs">
                                Junior
                            </td>
                            <td>
                                (56)
                            </td>
                        </tr>
                        <tr class="unread checked">
                            <td class="hidden-xs">
                                <input type="checkbox" class="checkbox">
                            </td>
                            <td class="hidden-xs">
                                Junior
                            </td>
                            <td>
                                (56)
                            </td>
                        </tr>
                </tbody>
             </table>
	   	  </div>
	   	  <div class="col_3">
	   	  	<h3>Work Permit</h3>
	   	  	<table class="table">
                    <tbody>
                        <tr class="unread checked">
                            <td class="hidden-xs">
                                <input type="checkbox" class="checkbox">
                            </td>
                            <td class="hidden-xs">
                                Full time
                            </td>
                        </tr>
                        <tr class="unread checked">
                            <td class="hidden-xs">
                                <input type="checkbox" class="checkbox">
                            </td>
                            <td class="hidden-xs">
                                Parttime
                            </td>
                        </tr>
                    </tbody>
             </table>
	   	  </div>
	   </div>-->
  <div class="clearfix"> </div>
 </div>
</div>
        
 
</asp:Content>

