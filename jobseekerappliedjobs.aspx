<%@ Page Title="" Language="C#" MasterPageFile="~/jobseekermaster.master" AutoEventWireup="true" CodeFile="jobseekerappliedjobs.aspx.cs" Inherits="jobseekerappliedjobs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <% appliedjobdataclass[] appliedjob=jobseekerclass.getappliedjob(8);
        foreach (appliedjobdataclass x in appliedjob)
        {
            %>
        <h1><%=x.app_jobSeekerid %></h1>
    <%} %>
</asp:Content>

