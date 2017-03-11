<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
            .description{
                display:none;
                overflow: hidden;
            }
            .feeddesc{
                display:none;
            }
            .bhj{
                visibility: hidden;
            }
            .news{
                width: 90%; height: 90%; border: 1px aqua solid ; position: absolute; overflow:hidden;
            }
        </style>


<script>
$(document).ready(function(){
    $(".par1").click(function(){
        $(".feeddesc").toggle();
		
    });
   
});
</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
<div class="banner">
   
        <div class="row">
            <div class="col-md-6 rowmarign">
                <div class="col-md-12 jobhire">
                       
                            <div class="div_transparncy">
                                <button type="button" class="btn btn-success btn_transparent" onclick="location.href='#';" >Apply Now</button>

                          
                            </div>
                    </div>
            </div>
                
                
            <div class="col-md-6 rowmarign">
                
                    <div class="row">
                    <div class="col-md-6 tdevelopment">
                       
                            <div class="div_transparncy">
                                <button type="button" class="btn btn-success btn_transparent" onclick="location.href='trainingAndDevelopment.aspx';">Training & Development</button>

                          
                            </div>
                    </div>
                        <div class="col-md-6 capacity">
                        <div class="div_transparncy">
                            <button type="button" class="btn btn-success btn_transparent" onclick="location.href='procurement.aspx';">Procurement</button>
                        </div>
                    </div>

                    <div class="col-md-6 procurment" >
                        <div class="div_transparncy">
                            <button type="button" class="btn btn-success btn_transparent" onclick="location.href='capacityBuilding.aspx';">Capacity Building</button>
                        </div>
                    </div>
                     
                    <div class="col-md-6  services">
                        <div class="div_transparncy">
                            <button type="button" class="btn btn-success btn_transparent" onclick="location.href='services.aspx';">Services</button>
                        </div>
                   </div>
                    
                     </div>
               
            </div>
          
            <div class="col-md-6">
                   
                </div>

           

            
        </div>
    </div>    <!--<div class="container">-->
 
	  <div class="single">  
        <div class="col-md-12 paddzero">
            <div class="col_3">
                <h3>
                    Featured Jobs
                </h3>


                <div class="col_1">
                    <div class="col-sm-4 row_2">
                        <img src="images/a1.jpg" class="img-responsive" alt="" />
                    </div>
                    <div class="col-sm-4 row_2">
                        <img src="images/a1.jpg" class="img-responsive" alt="" />
                    </div>
                    <div class="col-sm-4 row_2">
                        <img src="images/a1.jpg" class="img-responsive" alt="" />
                    </div>

                    <div class="clearfix"> </div>
                </div>
               
            <div class="clearfix"> </div>
        </div>
            <div class="col_3">
                <h3>
                    Featured Projects
                </h3>


                <div class="col_1">
                    <div class="col-sm-4 row_2">
                        <img src="images/a1.jpg" class="img-responsive" alt="" />
                    </div>
                    <div class="col-sm-4 row_2">
                        <img src="images/a1.jpg" class="img-responsive" alt="" />
                    </div>
                    <div class="col-sm-4 row_2">
                        <img src="images/a1.jpg" class="img-responsive" alt="" />
                    </div>

                    <div class="clearfix"> </div>
                </div>
               
            <div class="clearfix"> </div>
        </div>
	   </div>
         <!--        -->
        <div class="col-md-12">
            <div class="col_3">
                <h3>Videos</h3>
                <div class="col_1">
                    <div class="col-sm-8 video_c3">
                        <h1> Coming Soon</h1>
                    </div>
                    <div class="col-sm-3 video_sm">
                        <h1> Coming Soon</h1>
                    </div>
                    <div class="col-sm-3 video_sm">
                        <h1> Coming Soon</h1>
                    </div>
                </div>
                <div class="clearfix"> </div>
            </div>
        </div>
        <div class="col-md-12">
            <div class="col_3">
                <h3>Update Of the Week</h3>
                <div class="col_1">
                   
                    <div class="col-sm-6 video_c3">
                       
                      <%--  <h1>E3 Interviews<br>Developer Interviews from E3 2016</h1>
                        <h3>Feeds ComingSOon</h3--%>>
                 <marquee direction="up" scrollamount="1">
                              
              <p class="par1">E3 Interviews<br>Developer Interviews from E3 2016</p>
               <p class="par1" >Feeds ComingSOon <span class="description">this news is about the conferecnce here today in islamabad </span> </p>
                <p class="par1" >hey this is news <span class="description">this news is about the conferecnce here today in islamabad </span> </p>
                
                  </marquee>
                    </div>
                    <div class="col-sm-6 video_c3 feeddesc">
                        <h1>Fandom InterView <br>Developer Interviews from E3 2016</h1><br /><br />
                        <h3>Feeds ComingSOon</h3>
                    </div>
                   
               
                <div class="clearfix"> </div>
            </div>
                </div>
        </div>
	   <div class="clearfix"> </div>
	 </div>
<!--</div>-->

</asp:Content>

