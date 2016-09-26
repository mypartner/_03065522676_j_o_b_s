<%@ Page Title="" Language="C#" MasterPageFile="~/adminmasterpage.master" AutoEventWireup="true" CodeFile="adminupdatejobdescription.aspx.cs" Inherits="adminupdatejobdescription" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery-form-validator/2.3.26/jquery.form-validator.min.js"></script>
<script>

  $.validate({
    modules : 'location, date, security, file',
    onModulesLoaded : function() {
      $('#country').suggestCountry();
    }
  });

  // Restrict presentation length
  $('#description').restrictLength($('#pres-max-length'));
        //
  function ShowMessage(message, messagetype) {
      var cssclass;
      switch (messagetype) {
          case 'Success':
              cssclass = 'alert-success'
              break;
          case 'Error':
              cssclass = 'alert-danger'
              break;
          case 'Warning':
              cssclass = 'alert-warning'
              break;
          default:
              cssclass = 'alert-info'
      }
      $('#alert_container').append('<div id="alert_div" style="margin-top:40px;margin-left:10px;width:90%; -webkit-box-shadow: 3px 4px 6px #999;" class="alert fade in ' + cssclass + '"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a><strong>' + messagetype + '!</strong> <span>' + message + '</span></div>');
  }
</script>
      
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="right_col" role="main">
    <div class="row">
     <div class="col-md-12 col-sm-12 col-xs-12">
     <div class="x_content">
     <div class="col-md-9 col-sm-9 col-xs-12">
         <h3>Update job </h3>
   

   <div id="myTabContent" class="tab-content">
                          <div role="tabpanel" class="tab-pane fade active in" id="tab_content1" aria-labelledby="home-tab">
     <div style="overflow:auto;">
      
                                                   
                         <div class="form-group col-md-5">

                        
                        
                         Job title <input type="text" id="title" name="title"  placeholder="Job title" class="form-control " runat="server"/>
                              Expected salary <input type="text" id="expectedsalary" name="expectedsalary"   class="form-control " runat="server"/>
                             Country <input type="text" id="country" name="country"   class="form-control " runat="server" data-validation="country"/>
                             City <input type="text" id="city" name="city"   class="form-control " runat="server"/>
                             Salary Period <input type="text" id="salaryperiod" name="salaryperiod"   class="form-control " runat="server"/>
                              Last date to apply <input type="date" id="lastdate" name="lastdate"   class="form-control " />
                              Minimum Education <input type="text" id="minedu" name="minedu"   class="form-control " runat="server"/>
                              Minimum experience <input type="text" id="minexp" name="minexp"   class="form-control " runat="server"/>
                              Specific requirements <input type="text" id="specificreq" name="specificreq"   class="form-control " runat="server"/>
                              Job description <input type="text" id="jobdesc" name="jobdesc"   class="form-control " runat="server"/>
                              <asp:Button ID="update" runat="server" Text="Update"  class="btn btn-success" OnClick="update_Click"  />
                      </div>


                                      </div>
                             
                             
                           
      </div>
                              


                               
         </div>

         </div>
        </div>
         </div>
         </div>
         </div>
      
        

</asp:Content>

