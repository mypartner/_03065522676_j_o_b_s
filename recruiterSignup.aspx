<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="recruiterSignup.aspx.cs" Inherits="recruiterSignup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  
<div class="container">
    <div class="single">  
	   <div class="form-container">
           <div class="well">
        <h2>Recruiter SignUp</h2>
               <div class="newmargin">
      
                <div class="row">
                     <div class="form-group col-md-10">
                        <label class="col-md-3 control-lable" for="companyname">Company Name</label>
                     <div class="col-md-9 ">
                        <input type="text" id="companyname" name="companyname" class="form-control input-sm"/>
                     </div>
                    </div>
                </div>
                 <div class="row">
                     <div class="form-group col-md-10">
                        <label class="col-md-3 control-lable" for="establishyear">Year of Establishment</label>
                     <div class="col-md-9">
                        <input type="date" id="establishyear" name="establishyear" class="form-control input-sm"/>
                     </div>
                    </div>
                </div>
                
                <div class="row">
                     <div class="form-group col-md-10">
                        <label class="col-md-3 control-lable" for="contact">Contact</label>
                     <div class="col-md-9">
                        <input type="text" id="contact" name="contactoerson" class="form-control input-sm"/>
                     </div>
                    </div>
                </div>

                <div class="row">
                     <div class="form-group col-md-10">
                        <label class="col-md-3 control-lable" for="phone">Phone</label>
                     <div class="col-md-9">
                        <input type="text" id="phone" name="phone" class="form-control input-sm"/>
                     </div>
                    </div>
                </div>
                <div class="row">
                     <div class="form-group col-md-10">
                        <label class="col-md-3 control-lable" for="fax">Fax</label>
                     <div class="col-md-9">
                        <input type="text" id="fax" name="fax" class="form-control input-sm"/>
                     </div>
                    </div>
                </div>
                <div class="row">
                     <div class="form-group col-md-10">
                        <label class="col-md-3 control-lable" for="email">Email</label>
                     <div class="col-md-9">
                        <input type="text" id="email" name="email" class="form-control"/>
                     </div>
                    </div>
                </div>
                <div class="row">
                     <div class="form-group col-md-10">
                        <label class="col-md-3 control-lable" for="description">Brief Description</label>
                          <div class="col-md-9">
                    <textarea class="form-control" rows="5" name="description" id="description"></textarea>
                     </div>
                         
                    </div>
                </div>
            <div class="row">
                     <div class="form-group col-md-10">
                        <label class="col-md-3 control-lable" for="description">Website</label>
                          <div class="col-md-9">
                 <input type="text" id="website" name="website" class="form-control"/>
                     </div>
                         
                    </div>
                </div>
            <div class="row">
                     <div class="form-group col-md-10">
                        <label class="col-md-3 control-lable" for="description">Username</label>
                          <div class="col-md-9">
                  <input type="text" id="username" name="username" class="form-control"/>
                     </div>
                         
                    </div>
                </div>
            <div class="row">
                     <div class="form-group col-md-10">
                        <label class="col-md-3 control-lable" for="description">Password</label>
                          <div class="col-md-9">
                   <input type="password" id="password" name="password" class="form-control"/>
                     </div>
                         
                    </div>
                </div>
                 <div class="row">
                     <div class="form-group col-md-12">
                        <label class="col-md-3 control-lable" for="imagefile">Upload Company image</label>
                     <div class="col-md-9">
                         <asp:FileUpload ID="logo" runat="server" />
                     </div>
                    </div>
                </div>
               
                
               
                			          <input type="submit" value="Post your Profile" class="btn btn-danger "/>

	        
	    </div>
    </div>
</div>
</div>
    </div>
</asp:Content>

