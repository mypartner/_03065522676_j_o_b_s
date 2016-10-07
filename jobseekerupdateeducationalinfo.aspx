<%@ Page Title="" Language="C#" MasterPageFile="~/jobseekermaster.master" AutoEventWireup="true" CodeFile="jobseekerupdateeducationalinfo.aspx.cs" Inherits="jobseekerupdateeducationalinfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="margin-top: 3%"></div>


    <div class="container">
        <div class="single">
            <div class="form-container" style="margin-top: 3%">


                <div class="row">

                    <div class="col-md-12 col-sm-12 col-xs-12">
                        <div class="x_panel">
                            <div class="x_title">
                                <h2>Update Educational detail</h2>

                            </div>

                            <div class="x_content" style="margin-left: 30px">
                                <div id="divupdateedu" runat="server">
                                                 <% 
                                                     int jobsekerid = jobseekerclass.getSeekerID(Session["LoginSession"].ToString());
                                                     int id = int.Parse(Request.QueryString["id"]);
                                                     jobseekereducationalInfo jei = newClass.educationalInfo(jobsekerid, id);
                                                  //   IQueryable<jobSeekerProfessionalInfo> jspi = newClass.getProfessionalInfo(jobsekerid);
                                                    %>
                                        <input value='<%=jei.Id %>' type="hidden" id="hiddenid" name="hiddenid" />
                                                <div class="table-responsive">

                                                    <table class="table">
                                                        <thead>
                                                            <tr>
                                                                <th>Institute name</th>
                                                                <th>Passing year</th>
                                                                <th>Degree</th>
                                                                <th>Specialization</th>
                                                                <th></th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                           
                                                            <tr>

                                                                <td> <input type="text" id="institute" name="institute" value="<%=jei.instituteName %>" class="form-control input-sm"/></td>
                                                                <td><input type="text" name="year_selector" id="year_selector" value="<%=jei.passingOutYear %>" /></td>
                                                                <td><input type="text" id="degree1" name="degree1" class="form-control input-sm" value="<%=jei.degreeName %>"/></td>
                                                                <td> <input type="text" id="specialization" name="specialization" class="form-control input-sm" value="<%=jei.specialization %>"/></td>
                                                             
                                                                <td><a href="#" class="btn btn-default" runat="server" onserverclick="updateeducationalinfo_click">update</a></td>
                                                            </tr>
                                                            
                                                        </tbody>
                                                    </table>
                                                </div>
                                            </div>
                                </div></div></div></div></div></div></div>
</asp:Content>


