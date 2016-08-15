<%@ Page Title="" Language="C#" MasterPageFile="~/jobseekermaster.master" AutoEventWireup="true" CodeFile="cvView.aspx.cs" Inherits="cvView" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style>
            *{margin:0;padding:0}
            html, body {height:100%;width:100%;overflow:hidden}
        </style>
        <meta charset="utf-8"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  
        
            
                 $url = $_GET['url'];
           
        <!--<title><?php echo $url; ?></title>-->
 
        <iframe src="http://docs.google.com/viewer?url=<?=urlencode($url)?>&embedded=true"  style="position: absolute;width:100%; height: 100%;border: none;"></iframe>
    
</asp:Content>

