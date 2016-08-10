﻿<%@ Page Title="" Language="C#" MasterPageFile="~/jobseekermaster.master" AutoEventWireup="true" CodeFile="clientDetail.aspx.cs" Inherits="clientDetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
         <div class="banner_1">
	 
</div>	
<div class="container">
    <div class="single">  
	   <div class="form-container">

        <h2>Client Details</h2>
        <div class="search_form1">

		    <form action="">
                        <h2>Professional Information</h2>

                <div class="row">
                     <div class="form-group col-md-12">
                        <label class="col-md-3 control-lable" for="companyname">Experience</label>
                     <div class="col-md-9">
                        <input type="text" id="companyname" name="companyname" class="form-control input-sm"/>
                     </div>
                    </div>
                </div>
                 <div class="row">
                     <div class="form-group col-md-12">
                        <label class="col-md-3 control-lable" for="establishyear">Job Start Date</label>
                     <div class="col-md-9">
                        <input type="text" id="establishyear" name="establishyear" class="form-control input-sm"/>
                     </div>
                    </div>
                </div>
                
                <div class="row">
                     <div class="form-group col-md-12">
                        <label class="col-md-3 control-lable" for="contact">Job End Date</label>
                     <div class="col-md-9">
                        <input type="text" id="contact" name="contact" class="form-control input-sm"/>
                     </div>
                    </div>
                </div>

                <div class="row">
                     <div class="form-group col-md-12">
                        <label class="col-md-3 control-lable" for="company">Company Name</label>
                     <div class="col-md-9">
                        <input type="text" id="company" name="company" class="form-control input-sm"/>
                     </div>
                    </div>
                </div>
                <div class="row">
                     <div class="form-group col-md-12">
                        <label class="col-md-3 control-lable" for="description">Job Description</label>
                     <div class="col-md-9">
                        <input type="text" id="description" name="description" class="form-control input-sm"/>
                     </div>
                    </div>
                </div>
                <div class="row">
                     <div class="form-group col-md-12">
                        <label class="col-md-3 control-lable" for="workexperience">Work Experience</label>
                     <div class="col-md-9">
                        <input type="text" id="workexperience" name="workexperience" class="form-control"/>
                     </div>
                    </div>
                </div>
                
                 <div class="row">
                     <div class="form-group col-md-12">
                        <label class="col-md-3 control-lable" for="file">Upload Your CV</label>
                     <div class="col-md-9">
                         <input type="file" name="file">
                     </div>
                    </div>
                </div>
                <input type="submit" value="Save">

	        </form>
             <form >
                                         <h2>Educational Information</h2>

                <div class="row">
                     <div class="form-group col-md-12">
                        <label class="col-md-3 control-lable" for="institute">Institute Name</label>
                     <div class="col-md-9">
                        <input type="text" id="institute" name="institute" class="form-control input-sm"/>
                     </div>
                    </div>
                </div>
                 <div class="row">
                     <div class="form-group col-md-12">
                        <label class="col-md-3 control-lable" for="passingyear">Passing Year</label>
                     <div class="col-md-9">
                        <input type="text" id="passingyear" name="passingyear" class="form-control input-sm"/>
                     </div>
                    </div>
                </div>
                
                <div class="row">
                     <div class="form-group col-md-12">
                        <label class="col-md-3 control-lable" for="degree1">Degree 1</label>
                     <div class="col-md-9">
                        <input type="text" id="degree1" name="degree1" class="form-control input-sm"/>
                     </div>
                    </div>
                </div>
                  
                <div class="row">
                     <div class="form-group col-md-12">
                        <label class="col-md-3 control-lable" for="degree2">Degree 2 (Optional)</label>
                     <div class="col-md-9">
                        <input type="text" id="degree2" name="degree2" class="form-control input-sm"/>
                     </div>
                    </div>
                </div>

                <div class="row">
                     <div class="form-group col-md-12">
                        <label class="col-md-3 control-lable" for="specialization">Specialization</label>
                     <div class="col-md-9">
                        <input type="text" id="specialization" name="specialization" class="form-control input-sm"/>
                     </div>
                    </div>
                </div>
                
                <input type="submit" value="Save">

	        </form>
             <form >
                                         <h2>Skills Information</h2>

                <div class="row">
                     <div class="form-group col-md-12">
                        <label class="col-md-3 control-lable" for="skill1">Skill 1 (Optional)</label>
                     <div class="col-md-9">
                        <input type="text" id="skill1" name="skill1" class="form-control input-sm"/>
                     </div>
                    </div>
                </div>
                 <div class="row">
                     <div class="form-group col-md-12">
                        <label class="col-md-3 control-lable" for="skill2">Skill 2 (Optional)</label>
                     <div class="col-md-9">
                        <input type="text" id="skill2" name="skill2" class="form-control input-sm"/>
                     </div>
                    </div>
                </div>
                   <div class="row">
                     <div class="form-group col-md-12">
                        <label class="col-md-3 control-lable" for="skill3">Skill 3 (Optional)</label>
                     <div class="col-md-9">
                        <input type="text" id="skill3" name="skill3" class="form-control input-sm"/>
                     </div>
                    </div>
                </div>
                    <div class="row">
                     <div class="form-group col-md-12">
                        <label class="col-md-3 control-lable" for="skill4">Skill 4 (Optional)</label>
                     <div class="col-md-9">
                        <input type="text" id="skill4" name="skill4" class="form-control input-sm"/>
                     </div>
                    </div>
                </div>
                    <div class="row">
                     <div class="form-group col-md-12">
                        <label class="col-md-3 control-lable" for="skill5">Skill 5 (Optional)</label>
                     <div class="col-md-9">
                        <input type="text" id="skill5" name="skill5" class="form-control input-sm"/>
                     </div>
                    </div>
                </div>
             
                <input type="submit" value="Save">

	        </form>
	    </div>
    </div>
 </div>
</div>
</asp:Content>
