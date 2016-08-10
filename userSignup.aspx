<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="userSignup.aspx.cs" Inherits="userSignup" %>

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
                        <label class="col-md-3 control-lable" for="firstname">Firstname</label>
                     <div class="col-md-9">
                        <input type="text" id="firstname" name="firstname" class="form-control input-sm"/>
                     </div>
                    </div>
                </div>
                 <div class="row">
                     <div class="form-group col-md-12">
                        <label class="col-md-3 control-lable" for="lastname">Lastname</label>
                     <div class="col-md-9">
                        <input type="text" id="lastname" name="lastname" class="form-control input-sm"/>
                     </div>
                    </div>
                </div>
                <div class="row">
                     <div class="form-group col-md-12">
                        <label class="col-md-3 control-lable" for="mobile">Mobile</label>
                     <div class="col-md-9">
                        <input type="text" id="mobile" name="mobile" class="form-control input-sm"/>
                     </div>
                    </div>
                </div>
                <div class="row">
                     <div class="form-group col-md-12">
                        <label class="col-md-3 control-lable" for="email">Email</label>
                     <div class="col-md-9">
                        <input type="text" id="email" name="email" class="form-control input-sm"/>
                     </div>
                    </div>
                </div>
                <div class="row">
                     <div class="form-group col-md-12">
                        <label class="col-md-3 control-lable" for="lastname">Sex</label>
                     <div class="col-md-9">
                        
                              <label><input type="radio" name="male" class="radio-inline">Male</label>
                            
                              <label><input type="radio" name="female" class="radio-inline">Female</label>
                            
                     </div>
                    </div>
                </div>
                <div class="row">
                     <div class="form-group col-md-12">
                        <label class="col-md-3 control-lable" for="education">Education</label>
                     <div class="col-md-9">
                        <input type="text" id="education" name="education" class="form-control input-sm"/>
                     </div>
                    </div>
                </div>
                <div class="row">
                     <div class="form-group col-md-12">
                        <label class="col-md-3 control-lable" for="country">Country</label>
                     <div class="col-md-9">
                        <input type="text" id="country" name="country" class="form-control input-sm"/>
                     </div>
                    </div>
                </div>
                <div class="row">
                     <div class="form-group col-md-12">
                        <label class="col-md-3 control-lable" for="dob">Date of birth</label>
                     <div class="col-md-9">
                        <input type="text" id="dob" name="dob" class="form-control input-sm"/>
                     </div>
                    </div>
                </div>
                 <div class="row">
                     <div class="form-group col-md-12">
                        <label class="col-md-3 control-lable" for="imagefile">Upload your image</label>
                     <div class="col-md-9">
                         <input type="file" name="imagefile">
                     </div>
                    </div>
                </div>
                <div class="row">
                     <div class="form-group col-md-12">
                        <label class="col-md-3 control-lable" for="file">Upload your CV</label>
                     <div class="col-md-9">
                         <input type="file" name="myfile">
                     </div>
                    </div>
                </div>
               
                			          <input type="submit" value="Post your CV">

	        </form>
	    </div>
    </div>
 </div>
</div>
</asp:Content>

