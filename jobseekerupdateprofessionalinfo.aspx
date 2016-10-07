<%@ Page Title="" Language="C#" MasterPageFile="~/jobseekermaster.master" AutoEventWireup="true" CodeFile="jobseekerupdateprofessionalinfo.aspx.cs" Inherits="jobseekerupdateprofessionalinfo" %>

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
                                <h2>Update Professional detail</h2>

                            </div>

                            <div class="x_content" style="margin-left: 30px">
                                    <div id="Div1" runat="server">
                                                 <% 
                                                     int jobsekerid = jobseekerclass.getSeekerID(Session["LoginSession"].ToString());
                                                     int id = int.Parse(Request.QueryString["id"]);
                                                     jobSeekerProfessionalInfo jsp = newClass.professionalinfo(jobsekerid, id);
                                                     IQueryable<jobSeekerProfessionalInfo> jspi = newClass.getProfessionalInfo(jobsekerid);
                                                    %>
                                        <input value='<%=jsp.Id %>' type="hidden" id="hiddenid" name="hiddenid" />
                                                <div class="table-responsive">
                                                   
                                                    <table class="table">
                                                        <thead>
                                                            <tr>
                                                                <th>Designation</th>
                                                                <th>Job Start Date</th>
                                                                <th>Job End Date</th>
                                                                <th>Comapany Name</th>
                                                                <th>Job Description</th>
                                                                <th>Work Experience</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            
                                                            <tr>
                                                                <td>
                                                                   
                                                                    <input type="text" id="experiance" value="<%=jsp.experience %>" name="experiance" class="form-control input-sm" /></td>
                                                                <td>
                                                                    <%--<asp:TextBox ID="TextBox1" Text='<%#Bind("jspi.jobStartDate") %>' runat="server" TextMode="Date"></asp:TextBox>
                                             <asp:TextBox ID="date" Text='<%# Bind("","{0:yyyy-MM-dd}") %>' TextMode="Date"></asp:TextBox>--%>
                                                                    <input type="text" id="jobstartdate" value="<%=jsp.jobStartDate %>" data-date="" min="01-10-1200" data-date-format="dd-mm-yyyy" name="jobstartdate" class="form-control input-sm" />

                                                                </td>
                                                                <td>
                                                                    <input type="text" id="jobenddate" value="<%=jsp.jobEndDate %>" name="jobenddate" class="form-control input-sm" /></td>
                                                                <td>
                                                                    <input type="text" id="companyname" value="<%=jsp.company %>" name="companyname" class="form-control input-sm" /></td>
                                                                <td>
                                                                    <input type="text" id="description" value="<%=jsp.jobDescription %>" name="description" class="form-control input-sm" /></td>
                                                                <td>
                                                                    <input type="text" id="workexperience" value="<%=jsp.workExperience %>" name="workexperience" class="form-control" /></td>
                                                                <td><a href="#" class="btn btn-default" onserverclick="updatpinfo" runat="server">update</a></td>
                                                            
                                                            </tr>
                                                           
                                                        </tbody>
                                                    </table>
                                                </div>
                                            </div>
                                </div></div></div></div></div></div></div>
</asp:Content>

