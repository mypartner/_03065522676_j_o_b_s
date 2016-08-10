<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="recruiterSignup.aspx.cs" Inherits="recruiterSignup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
         <div class="banner_1">
	 
</div>	
<div class="container">
    <div class="single">  
	   <div class="form-container">

        <h2>Update Your Profile</h2>
        <div class="search_form1">

		    <form action="">
                <div class="row">
                     <div class="form-group col-md-12">
                        <label class="col-md-3 control-lable" for="companyname">Company Name</label>
                     <div class="col-md-9">
                        <input type="text" id="companyname" name="companyname" class="form-control input-sm"/>
                     </div>
                    </div>
                </div>
                 <div class="row">
                     <div class="form-group col-md-12">
                        <label class="col-md-3 control-lable" for="establishyear">Year of Establishment</label>
                     <div class="col-md-9">
                        <input type="text" id="establishyear" name="establishyear" class="form-control input-sm"/>
                     </div>
                    </div>
                </div>
                
                <div class="row">
                     <div class="form-group col-md-12">
                        <label class="col-md-3 control-lable" for="contact">Contact</label>
                     <div class="col-md-9">
                        <input type="text" id="contact" name="contact" class="form-control input-sm"/>
                     </div>
                    </div>
                </div>

                <div class="row">
                     <div class="form-group col-md-12">
                        <label class="col-md-3 control-lable" for="phone">Phone</label>
                     <div class="col-md-9">
                        <input type="text" id="phone" name="phone" class="form-control input-sm"/>
                     </div>
                    </div>
                </div>
                <div class="row">
                     <div class="form-group col-md-12">
                        <label class="col-md-3 control-lable" for="fax">Fax</label>
                     <div class="col-md-9">
                        <input type="text" id="fax" name="fax" class="form-control input-sm"/>
                     </div>
                    </div>
                </div>
                <div class="row">
                     <div class="form-group col-md-12">
                        <label class="col-md-3 control-lable" for="email">Email</label>
                     <div class="col-md-9">
                        <input type="text" id="email" name="email" class="form-control"/>
                     </div>
                    </div>
                </div>
                <div class="row">
                     <div class="form-group col-md-12">
                        <label class="col-md-3 control-lable" for="description">Brief Description</label>
                          <div class="col-md-5">
                    <textarea class="form-control" rows="5" name="description" id="description"></textarea>
                     </div>
                         
                    </div>
                </div>
                 <div class="row">
                     <div class="form-group col-md-12">
                        <label class="col-md-3 control-lable" for="imagefile">Upload Company image</label>
                     <div class="col-md-9">
                         <input type="file" name="imagefile">
                     </div>
                    </div>
                </div>
               
                
               
                			          <input type="submit" value="Post your Profile">

	        </form>
	    </div>
    </div>
 </div>
</div>
</asp:Content>

