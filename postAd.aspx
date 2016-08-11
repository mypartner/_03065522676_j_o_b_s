<%@ Page Title="" Language="C#" MasterPageFile="~/recruitersmaster.master" AutoEventWireup="true" CodeFile="postAd.aspx.cs" Inherits="postAd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="banner_1"></div>
    <div class="container">
    <div class="single">
   
	   <div class="form-container">
        <h2>Publish your Job !</h2>
           <div class="row">
            <div class="form-group col-md-12">
                <label class="col-md-3 control-lable" for="email">JobTitle</label>
                <div class="col-md-9">
                    <input type="text" id="jobtitle" name="jobtitle" class="form-control input-sm"/>
                </div>
            </div>
         </div>
           <div class="row">
            <div class="form-group col-md-12">
                <label class="col-md-3 control-lable" for="req">Expected Salary</label>
                <div class="col-md-9">
                    <input type="text" id="expectedsalary" name="expectedsalary" class="form-control input-sm"/>
                </div>
            </div>
         </div>
           <div class="row">
            <div class="form-group col-md-12">
                <label class="col-md-3 control-lable" for="city">Country</label>
                <div class="col-md-9">
                    <input type="text" id="country" name="country" class="form-control input-sm"/>
                </div>
            </div>
         </div>
           <div class="row">
            <div class="form-group col-md-12">
                <label class="col-md-3 control-lable" for="company">city</label>
                <div class="col-md-9">
                    <input type="text" id="city" name="city" class="form-control input-sm"/>
                </div>
            </div>
         </div>
           <div class="row">
            <div class="form-group col-md-12">
                <label class="col-md-3 control-lable" for="salary">Job Catagory</label>
                <div class="col-md-9">
                    <input type="text" id="jobcatagory" name="jobcatagory" class="form-control input-sm"/>
                </div>
            </div>
         </div>
          
            <div class="row">
            <div class="form-group col-md-12">
                <label class="col-md-3 control-lable" for="adtitle">SalaryPeriod</label>
                <div class="col-md-9">
                    <select id="salaryperiod" name="salaryperiod">
                        <option value="Permnenet">Permnenet</option>
                        <option value="Permnenet">Temporary</option>
                    </select>
                </div>
            </div>
         </div>
            <div class="row">
            <div class="form-group col-md-12">
                <label class="col-md-3 control-lable" for="adtitle">LastDateToApply</label>
                <div class="col-md-9">
                     <input type="date" id="lastdatetoApply" name="lastdatetoApply" class="form-control input-sm"/>
                </div>
            </div>
         </div>
            <div class="row">
            <div class="form-group col-md-12">
                <label class="col-md-3 control-lable" for="adtitle">Miniumum Education</label>
                <div class="col-md-9">
                     <input type="text" id="meducation" name="meducation" class="form-control input-sm"/>
                </div>
            </div>
         </div>
            

            <div class="row">
            <div class="form-group col-md-12">
                <label class="col-md-3 control-lable" for="salary">MinimumLevelOfExperiance</label>
                <div class="col-md-9">
                    <input type="text" id="mlexperiance" name="mlexperiance" class="form-control input-sm"/>
                </div>
            </div>
         </div>
            <div class="row">
            <div class="form-group col-md-12">
                <label class="col-md-3 control-lable" for="adtitle">SpecificRequirments</label>
                <div class="col-md-9">
                     <input type="text" id="spacificRequirements" name="spacificRequirements" class="form-control input-sm"/>
                </div>
            </div>
         </div>
             <div class="row">
            <div class="form-group col-md-12">
                <label class="col-md-3 control-lable" for="description">Description</label>
                <div class="col-md-9 sm_1">
                   <textarea cols="77" rows="6" value="" id="description" name="description" onfocus="this.value='';" onblur="if (this.value == '') {this.value = '';}"> </textarea>
                </div>
            </div>
        </div>
            <div class="row">
            <div class="form-group col-md-12">
                <label class="col-md-3 control-lable" for="description"></label>
                <div class="col-md-9 sm_1">
                  <input type="submit"  value="Save" />
                </div>
            </div>
        </div>
        <div class="row">
            <div class="form-actions floatRight">
              
            </div>
        </div>
       </div>
    </div>
    </div>
    
</asp:Content>

