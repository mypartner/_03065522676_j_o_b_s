<%@ Page Title="" Language="C#" MasterPageFile="~/adminmasterpage.master" AutoEventWireup="true" CodeFile="adminviewdescription.aspx.cs" Inherits="viewDescription" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 
    
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
                         
                       
                         <div class="profile_view"><!-- well class is been removed-->
                               <div class="col-md-6 single_right">
           <%
               IQueryable<job> jobss= clientJob.getJobByid(int.Parse(Request.QueryString["id"]));
               foreach (job j in jobss)
               { %>
             
           <h3>Job Description</h3>
	       <p><%=j.description %></p>
	       <br />
               
	      
	      
       
       </div>
                              <div class="col-md-6 jobdecleft table-responsive">
	   	  
          <table class="table-striped ">
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
                             
                      </div>
                         
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>  
    

</asp:Content>

