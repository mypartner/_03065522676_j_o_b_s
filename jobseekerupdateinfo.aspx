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
    <%

        int id= jobseekerclass.getSeekerID(Session["LoginSession"].ToString());
        tbjid.Value = id.ToString();
        jobSeeker myseeker = jobseekerclass.getjobseekerdata(id);
        byte[] imgarray=new byte[myseeker.image.Length];
        if (myseeker.image != null)
        {
            imgarray = myseeker.image.ToArray();
        }

         %>
    <asp:HiddenField ID="tbjid" runat="server" />
    <div class="container">
    <div class="single">  
	   <div class="form-container">
           <div class="well">

        <h2>Update Your Profile</h2>
        <div class="newmargin">
            <div class="row" >
             <div class="client_image">
               
               <div class="logo_image">
                <img src='data:image/jpg;base64,<%= Convert.ToBase64String(imgarray) %>' id="clientimage"  alt="Select Photograph"  height="200px" width="200px"/>
                <asp:FileUpload ID="imageupload" runat="server" />
                </div>
            </div>
                </div>
                <div class="row">
                     <div class="form-group col-md-10">
                        <label class="col-md-3 control-lable" for="firstname">Firstname</label>
                     <div class="col-md-9">
                        <input type="text" id="firstname" name="firstname" value="<%=myseeker.firstName %>"  class="form-control input-sm"/>
                     </div>
                    </div>
                </div>
                 <div class="row">
                     <div class="form-group col-md-10">
                        <label class="col-md-3 control-lable" for="lastname">Lastname</label>
                     <div class="col-md-9">
                        <input type="text" id="lastname"  name="lastname" value="<%=myseeker.lastName %>" class="form-control input-sm"/>
                     </div>
                    </div>
                </div>
                <div class="row">
                     <div class="form-group col-md-10">
                        <label class="col-md-3 control-lable" for="mobile">Mobile</label>
                     <div class="col-md-9">
                        <input type="text" id="mobile" name="mobile" value="<%=myseeker.mobile %>" class="form-control input-sm"/>
                     </div>
                    </div>
                </div>
                <div class="row">
                     <div class="form-group col-md-10">
                        <label class="col-md-3 control-lable" for="email">Email</label>
                     <div class="col-md-9">
                        <input type="text" id="email" name="email" value="<%=myseeker.email%>" class="form-control input-sm"/>
                     </div>
                    </div>
                </div>
                <div class="row">
                     <div class="form-group col-md-10">
                        <label class="col-md-3 control-lable" for="lastname">Sex</label>
                     <div class="col-md-9">
                            <% if (myseeker.sex == "Male")
                                { %>
                              <label><input type="radio" name="sex" class="radio-inline" value="Male"  checked="checked"/>Male</label>
                            
                              <label><input type="radio" name="sex" class="radio-inline" value="Female"/>Female</label>
                            <%}
    else
    { %>
                                  <label><input type="radio" name="sex" class="radio-inline" value="Male"  />Male</label>
                            
                              <label><input type="radio" name="sex" class="radio-inline" value="Female" checked="checked"/>Female</label>
                           <%} %>
                     </div>
                    </div>
                </div>
                <div class="row">
                     <div class="form-group col-md-10">
                        <label class="col-md-3 control-lable" for="education">Education</label>
                     <div class="col-md-9">
                        <input type="text" id="education" name="education"  value="<%=myseeker.education%>" class="form-control input-sm"/>
                     </div>
                    </div>
                </div>
                <div class="row">
                     <div class="form-group col-md-10">
                        <label class="col-md-3 control-lable" for="country">Country</label>
                     <div class="col-md-9">
                        <input type="text" id="country" name="country"  value="<%=myseeker.country%>" class="form-control input-sm"/>
                     </div>
                    </div>
                </div>
                <div class="row">
                     <div class="form-group col-md-10">
                        <label class="col-md-3 control-lable" for="dob">Date of birth</label>
                     <div class="col-md-9">
                        <input type="date" id="dob" name="dob"  value="<%=myseeker.dob%>" class="form-control input-sm"/>
                     </div>
                    </div>
                </div>
               <%-- <div class="row">
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
                </div>--%>

                 
               <asp:Button ID="Button1" runat="server" Text="Update info" class="btn btn-danger" OnClick="Savebutton_Click" />
                			          <input type="submit"  " />
	    </div>
    </div>
 </div>
</div></div>
</asp:Content>

