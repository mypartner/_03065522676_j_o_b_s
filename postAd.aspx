<%@ Page Title="" Language="C#" MasterPageFile="~/jobseekermaster.master" AutoEventWireup="true" CodeFile="postAd.aspx.cs" Inherits="postAd" %>

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
                <label class="col-md-3 control-lable" for="email">Email</label>
                <div class="col-md-9">
                    <input type="text" id="email" name="email" class="form-control input-sm"/>
                </div>
            </div>
         </div>
             <div class="row">
            <div class="form-group col-md-12">
                <label class="col-md-3 control-lable" for="adtitle">Ad Title</label>
                <div class="col-md-9">
                    <input type="text" id="adtitle" name="adtitle" class="form-control input-sm"/>
                </div>
            </div>
         </div>
           
           <div class="row">
            <div class="form-group col-md-12">
                <label class="col-md-3 control-lable" for="req">Requirements</label>
                <div class="col-md-9">
                    <input type="text" id="req" name="req" class="form-control input-sm"/>
                </div>
            </div>
         </div>
           <div class="row">
            <div class="form-group col-md-12">
                <label class="col-md-3 control-lable" for="city">Province / City</label>
                <div class="col-md-9">
                    <input type="text" id="city" name="city" class="form-control input-sm"/>
                </div>
            </div>
         </div>
           <div class="row">
            <div class="form-group col-md-12">
                <label class="col-md-3 control-lable" for="company">Company</label>
                <div class="col-md-9">
                    <input type="text" id="company" name="company" class="form-control input-sm"/>
                </div>
            </div>
         </div>
           <div class="row">
            <div class="form-group col-md-12">
                <label class="col-md-3 control-lable" for="salary">Salary</label>
                <div class="col-md-9">
                    <input type="text" id="salary" name="salary" class="form-control input-sm"/>
                </div>
            </div>
         </div>
            <div class="row">
            <div class="form-group col-md-12">
                <label class="col-md-3 control-lable" for="description">Description</label>
                <div class="col-md-9 sm_1">
                   <textarea cols="77" rows="6" value="" name="description" onfocus="this.value='';" onblur="if (this.value == '') {this.value = '';}"> </textarea>
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

