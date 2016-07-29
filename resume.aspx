<%@ Page Title="" Language="C#" MasterPageFile="~/siteMasterPage.master" AutoEventWireup="true" CodeFile="resume.aspx.cs" Inherits="resume" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="banner_1">
	 
</div>	
<div class="container">
    <div class="single">  
	   <div class="form-container">
        <h2>Upload Your Resume</h2>
        <div class="search_form1">
		    <form action="">
			  <input type="text" class="text" placeholder=" " value="Email Address" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Email Address';}"><br>
			  <input type="file" name="myfile">
			  <input type="submit" value="Post your CV">
	        </form>
	    </div>
    </div>
 </div>
</div>

</asp:Content>

