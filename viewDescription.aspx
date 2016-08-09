<%@ Page Title="" Language="C#" MasterPageFile="~/jobseekermaster.master" AutoEventWireup="true" CodeFile="viewDescription.aspx.cs" Inherits="viewDescription" %>

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
			 <label class="btn2 btn-2 btn2-1b"><input type="submit" value="Find Jobs"></label>
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
                <asp:Button ID="Button1" runat="server" Text="Apply job" class="btn btn-warning "/>
           
	      
	      
       
       </div>
       <div class="col-md-3">
	   	  
          <table class="condidate_detail">
          	<h4>Candidate Details</h4>
			<tbody>
				<tr>
					<td>Name</td>
					<td>Lorem Ipsum</td>
				</tr>

				<tr>
					<td>Age</td>
					<td>35 Years Old</td>
				</tr>

				<tr>
					<td>Resident </td>
					<td><%=j.address %></td>
				</tr>

				<tr>
					<td>Min experiance</td>
					<td><%=j.experience %></td>
				</tr>

				<tr>
					<td>Dgree</td>
					<td>MCA</td>
				</tr>

				<tr>
					<td>Career Lavel</td>
					<td>Mid-Level</td>
				</tr>

				<tr>
					<td>Minium degree level</td>
					<td>Bechlors</td>
				</tr>

				<tr>
					<td>Fax</td>
					<td>(800) 1247-256</td>
				</tr>

				<tr>
					<td>E-mail</td>
					<td></td>
				</tr>

				<tr>
					<td>Website</td>
					<td><a href="#">example.com</a></td>
				</tr>
			</tbody>
		 </table>
       </div><%} %>
       <div class="clearfix"> </div>
    </div>
</div>    
</asp:Content>

