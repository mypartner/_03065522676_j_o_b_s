<%@ Page Title="" Language="C#" MasterPageFile="~/jobseekermaster.master" AutoEventWireup="true" CodeFile="jobseekerviewdescription.aspx.cs" Inherits="viewDescription" %>

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
           <%
               IQueryable<job> jobss= clientJob.getJobByid(int.Parse(Request.QueryString["id"]));
               foreach (job j in jobss)
               { %>
             
           <h3>Job Description</h3>
	       <p><%=j.description %></p>
	       <br />
               
	      
	      
       
       </div>
       <div class="col-md-3">
	   	  
          <table class="condidate_detail">
          	<h4>Candidate Details</h4>
			<tbody>
				<tr>
					<td>Job Title</td>
					<td><%=j.jobTitle%></td>
				</tr>

				<tr>
					<td>Expected Salary</td>
					<td><%=j.expectedSalary %></td>
				</tr>

				<tr>
					<td>Posted Date </td>
					<td><%=j.postedDate %></td>
				</tr>

				<tr>
					<td>Country</td>
					<td><%=j.country%></td>
				</tr>

				<tr>
					<td>City</td>
					<td><%=j.city %></td>
				</tr>

				<tr>
					<td>Salary Period</td>
					<td><%=j.salaryPeriod %></td>
				</tr>

				<tr>
					<td>Last Date To Apply</td>
					<td><%=j.lastDateToApply %></td>
				</tr>

				<tr>
					<td>Minimum Education</td>
					<td><%=j.minimumEducation %></td>
				</tr>

				<tr>
					<td>Minimum Experiance</td>
					<td><%=j.minimumLevelOfExperience %></td>
				</tr>

				<tr>
					<td>Specific Requirments
					</td>
					<td><%=j.specificRequirement%></td>
				</tr>
			</tbody>
		 </table>
       </div><%} %>
       <div class="clearfix"> </div>
    </div>
</div>    
</asp:Content>

