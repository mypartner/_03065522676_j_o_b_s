<%@ Page Title="" Language="C#" MasterPageFile="~/jobseekermaster.master" AutoEventWireup="true" CodeFile="jobseekerupdateinfo.aspx.cs" Inherits="jobseekerupdateinfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
.logo_image img{
            width:100%;
            height:100%;
        }
        .client_image{
            margin-left:50%;
            float:left;
           
             width:200px;
             height:200px;
             
        }
        .client_image img{
            margin-top:1%;
             width:100%;
            height:100%;
        }
    </style>
    <script>
        $(function () {
            $(":file").change(function () {
                if (this.files && this.files[0]) {
                    var reader = new FileReader();
                    reader.onload = imageIsLoaded;
                    reader.readAsDataURL(this.files[0]);
                    alert(this.files[0]);
                }
            });
        });
        function imageIsLoaded(e) {
            $('#clientimage').attr('src', e.target.result);

        };
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
    <div class="single">  
	   <div class="form-container">
           <div class="well">

        <h2>Update Your Profile</h2>
        <div class="newmargin">
            <div class="row" >
             <div class="client_image">
               
               <div class="logo_image">
                <img src="" id="clientimage"  alt="Select Photograph" />
                <asp:FileUpload ID="imageupload" runat="server" />
                </div>
            </div>
                </div>
                <div class="row">
                     <div class="form-group col-md-10">
                        <label class="col-md-3 control-lable" for="firstname">Firstname</label>
                     <div class="col-md-9">
                        <input type="text" id="firstname" name="firstname"  class="form-control input-sm"/>
                     </div>
                    </div>
                </div>
                 <div class="row">
                     <div class="form-group col-md-10">
                        <label class="col-md-3 control-lable" for="lastname">Lastname</label>
                     <div class="col-md-9">
                        <input type="text" id="lastname"  name="lastname" class="form-control input-sm"/>
                     </div>
                    </div>
                </div>
                <div class="row">
                     <div class="form-group col-md-10">
                        <label class="col-md-3 control-lable" for="mobile">Mobile</label>
                     <div class="col-md-9">
                        <input type="text" id="mobile" name="mobile" class="form-control input-sm"/>
                     </div>
                    </div>
                </div>
                <div class="row">
                     <div class="form-group col-md-10">
                        <label class="col-md-3 control-lable" for="email">Email</label>
                     <div class="col-md-9">
                        <input type="text" id="email" name="email" class="form-control input-sm"/>
                     </div>
                    </div>
                </div>
                <div class="row">
                     <div class="form-group col-md-10">
                        <label class="col-md-3 control-lable" for="lastname">Sex</label>
                     <div class="col-md-9">
                        
                              <label><input type="radio" name="sex" class="radio-inline" value="Male" />Male</label>
                            
                              <label><input type="radio" name="sex" class="radio-inline" value="Female"/>Female</label>
                            
                     </div>
                    </div>
                </div>
                <div class="row">
                     <div class="form-group col-md-10">
                        <label class="col-md-3 control-lable" for="education">Education</label>
                     <div class="col-md-9">
                        <input type="text" id="education" name="education" class="form-control input-sm"/>
                     </div>
                    </div>
                </div>
                <div class="row">
                     <div class="form-group col-md-10">
                        <label class="col-md-3 control-lable" for="country">Country</label>
                     <div class="col-md-9">
                        <input type="text" id="country" name="country" class="form-control input-sm"/>
                     </div>
                    </div>
                </div>
                <div class="row">
                     <div class="form-group col-md-10">
                        <label class="col-md-3 control-lable" for="dob">Date of birth</label>
                     <div class="col-md-9">
                        <input type="date" id="dob" name="dob" class="form-control input-sm"/>
                     </div>
                    </div>
                </div>
                <div class="row">
                     <div class="form-group col-md-10">
                        <label class="col-md-3 control-lable" for="dob">Username</label>
                     <div class="col-md-9">
                        <input type="text" id="username" name="username" class="form-control input-sm"/>
                     </div>
                    </div>
                </div>
             <div class="row">
                     <div class="form-group col-md-10">
                        <label class="col-md-3 control-lable" for="dob">Password</label>
                     <div class="col-md-9">
                        <input type="password" id="password" name="password" class="form-control input-sm"/>
                     </div>
                    </div>
                </div>

                 
               
                			          <input type="submit" value="Update info" class="btn btn-danger " />
	    </div>
    </div>
 </div>
</div></div>
</asp:Content>

