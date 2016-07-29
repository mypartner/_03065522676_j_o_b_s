<%@ Page Title="" Language="C#" MasterPageFile="~/siteMasterPage.master" AutoEventWireup="true" CodeFile="viewDescription.aspx.cs" Inherits="viewDescription" %>

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
           <h3>Job Description</h3>
	       <p>"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."</p>
	       <p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>
	       
	      
	      
       
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
					<td>Location</td>
					<td>Australia</td>
				</tr>

				<tr>
					<td>Experiance</td>
					<td>10 Years</td>
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
					<td>Phone</td>
					<td>(800) 2547-879</td>
				</tr>

				<tr>
					<td>Fax</td>
					<td>(800) 1247-256</td>
				</tr>

				<tr>
					<td>E-mail</td>
					<td><a href="mailto:example@example.com">example@example.com</a></td>
				</tr>

				<tr>
					<td>Website</td>
					<td><a href="#">example.com</a></td>
				</tr>
			</tbody>
		 </table>
       </div>
       <div class="clearfix"> </div>
    </div>
</div>    
</asp:Content>

