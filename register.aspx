<%@ Page Title="" Language="C#" MasterPageFile="~/siteMasterPage.master" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="banner_1"></div>
    <div class="container">
    <div class="single">  
	   <div class="form-container">
        <h2>Register Form</h2>
      
          <div class="row">
            <div class="form-group col-md-12">
                <label class="col-md-3 control-lable" for="firstName">First Name</label>
                <div class="col-md-9">
                    <input type="text" id="firstName" name="firstName" class="form-control input-sm"/>
                </div>
            </div>
         </div>
         <div class="row">
            <div class="form-group col-md-12">
                <label class="col-md-3 control-lable" for="lastName">Last Name</label>
                <div class="col-md-9">
                    <input type="text" path="lastName" id="lastName" name="lastName" class="form-control input-sm"/>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="form-group col-md-12">
                <label class="col-md-3 control-lable" for="mobileno">Mobile Number</label>
                <div class="col-md-9">
                    <input type="text" path="mobileno" id="mobileno" name="mobileno" class="form-control input-sm"/>
                </div>
            </div>
        </div>
           <div class="row">
            <div class="form-group col-md-12">
                <label class="col-md-3 control-lable" for="username">User Name</label>
                <div class="col-md-9">
                    <input type="text" path="username" id="username" name="username" class="form-control input-sm"/>
                </div>
            </div>
        </div>
            <div class="row">
            <div class="form-group col-md-12">
                <label class="col-md-3 control-lable" for="password">Password</label>
                <div class="col-md-9">
                    <input type="password" path="password" id="password" name="password" class="form-control input-sm"/>
                </div>
            </div>
        </div>
            <div class="row">
            <div class="form-group col-md-12">
                <label class="col-md-3 control-lable" for="rpassword">Re Enter Password</label>
                <div class="col-md-9">
                    <input type="password" path="rpassword" id="rpassword" class="form-control input-sm"/>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="form-group col-md-12">
                <label class="col-md-3 control-lable" for="sex">Sex</label>
                <div class="col-md-9" class="form-control input-sm">
                    <div class="radios">
				        <label for="radio-01" class="label_radio">
				            <input type="radio" checked="" value="Male" name="gender"/> Male
				        </label>
				        <label for="radio-02" class="label_radio">
				            <input type="radio" value="Female" name="gender"/> Female
				        </label>
	                </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="form-group col-md-12">
                <label class="col-md-3 control-lable" for="dob">Date of birth</label>
                <div class="col-md-9">
                    <input type="text" path="dob" id="dob" name="dob" class="form-control input-sm"/>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="form-group col-md-12">
                <label class="col-md-3 control-lable" for="email">Email</label>
                <div class="col-md-9">
                    <input type="text" path="email" id="email" name="email" class="form-control input-sm"/>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="form-group col-md-12">
                <label class="col-md-3 control-lable" for="country">Country</label>
                <div class="col-md-9">
                    <select path="country" id="country" name="country" class="form-control input-sm">
                        <option value="">Select Country</option>
                        <option value="Japan">Japan</option>
                        <option value="Kenya">Kenya</option>
                        <option value="">Dubai</option>
                        <option value="">Italy</option>
                        <option value="">Greece</option> 
                        <option value="">Iceland</option> 
                        <option value="">China</option> 
                        <option value="">Doha</option> 
                        <option value="">Irland</option> 
                        <option value="">Srilanka</option> 
                        <option value="">Russia</option> 
                        <option value="">Hong Kong</option> 
                        <option value="">Germany</option>
                        <option value="">Canada</option>  
                        <option value="">Mexico</option> 
                        <option value="">Nepal</option>
                        <option value="">Norway</option> 
                        <option value="">Oman</option>
                        <option value="">Pakistan</option>  
                        <option value="">Kuwait</option> 
                        <option value="">Indonesia</option>  
                        <option value="">Spain</option>
                        <option value="">Thailand</option>  
                        <option value="">Saudi Arabia</option> 
                        <option value="">Poland</option> 
                    </select>
                    
                </div>
            </div>
        </div>
        <div class="row">
            <div class="form-group col-md-12">
                <label class="col-md-3 control-lable" for="country">Work Experience</label>
                <div class="col-md-9">
                    <select path="country" id="experience" name="experience" class="form-control input-sm">
                        <option value="">Select</option>
                        <option value="">Fresher</option>
                        <option value="0">0</option>
                        <option value="1">1</option>
                        <option value="2">2</option>
                        <option value="">3</option> 
                        <option value="">4</option> 
                        <option value="">5</option> 
                        <option value="">6</option> 
                        <option value="">7</option> 
                        <option value="">8</option> 
                        <option value="">9</option> 
                        <option value="">10</option> 
                        <option value="">11</option>
                        <option value="">12</option>  
                        <option value="">13</option>
                        <option value="">14</option>
                        <option value="">15</option>      
                    </select>
                    
                </div>
            </div>
        </div>
        <div class="row">
            <div class="form-group col-md-12">
                <label class="col-md-3 control-lable" for="country">Education</label>
                <div class="col-md-9">
                    <select path="country" id="education" name="education" class="form-control input-sm">
                        <option value="">Select</option>
                        <option value="Bsc">Bsc</option>
                        <option value="">BTech</option>
                        <option value="">Mca</option>
                        <option value="">BCA</option>
                        <option value="">Diploma</option> 
                        <option value="">Other</option> 
                    </select>
               </div>
            </div>
        </div>
        <div class="row">
            <div class="form-group col-md-12">
                <label class="col-md-3 control-lable" for="subjects">Subjects</label>
                <div class="col-md-9 sm_1">
                   <textarea cols="77" rows="6" value="" name="subjects" onfocus="this.value='';" onblur="if (this.value == '') {this.value = '';}"> </textarea>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="form-actions floatRight">
                <asp:Button ID="register_user" runat="server" Text="Register" class="btn btn-primary btn-sm" OnClick="register_user_Click" />
              
            </div>
        </div>

    </div>
 </div>
</div>
</asp:Content>

