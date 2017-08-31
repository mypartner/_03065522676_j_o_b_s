<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="css/style.css" rel="stylesheet" />
    <style>
        @media only screen and (max-device-width: 480px) {
             .mobile{
                 height:60%;
                 width:100%;
             }
        }
            .description{
                display:none;
                overflow: hidden;
            }
            .feeddesc{
                /*display:none;*/
            }
            .feeddesc h1
            {
                display:none;
            }
            .feeddesc p{
                display:none;
            }
            .feeddesc img{
                display:none;
            }
            .bhj{
                visibility: hidden;
            }
            .news{
                width: 90%; height: 90%; border: 1px aqua solid ; position: absolute; overflow:hidden;
            }
            .hide{
                display:none;
            }
           
            
        </style>

<script type="text/javascript" src="http://www.youtube.com/player_api"></script>
<script>
    function playVideo(x){
        alert("working"+x);
    }
    $(document).ready(function () {
        $(".feeddesc").hide();
    $(".par1").click(function(){
       // $(".feeddesc").toggle();
		
    });

   
   
    });
    function marqueclick(val) {
        $(".feeddesc").show();
        $(".newsdefault").hide();
        $('.feeddesc').children('h1').hide();
        $('.feeddesc').children('p').hide();
        $('.feeddesc').children('img').hide();
        $("#ds" + val).show();
        $("#dl" + val).show();
        $("#img" + val).show();
        alert("#ds" + val);
    }
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
            <%--<div class="col_3">
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
        </div>--%>
          <%--  <div class="col_3">
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
        </div>--%>
	   </div>
         <!--        -->
        <div class="col-md-12">
            <div class="col_3">
                <h3>Videos</h3>
                <div class="col_1">
                    <div class="col-sm-8 video_c3">
                        <% IQueryable<video> videos = feedsclass.getVideos();
                            
                            int res_video_compare = DateTime.Compare(videos.First().end_date.Value.Date, DateTime.Now.Date);
                            if (res_video_compare>=0)
                            {
                                if (videos.Count() > 0)
                                {
                                    video fv = videos.First();//first video
                            %>
                            <h1><%=fv.video_title%></h1>
                                        <iframe src="<%=fv.video_link %>" width="100%" height="90%" frameborder="0" allowfullscreen></iframe>
                           <%}
    }%>
                         </div>
                    <div class="col-sm-4 video_sm" style="overflow-y: scroll;height:500px">
                    <%
    foreach (video v in videos)
    {
                         DateTime dt=   DateTime.Now;
        res_video_compare = DateTime.Compare( v.end_date.Value.Date,DateTime.Now.Date);
        if (res_video_compare>=0)
        {
                                                    %>
                                  
                                        <div class="col-sm-12 video_sm_sub"  >
                                             <h5><%=v.video_title%></h5>
                                             
                                             <iframe src="<%=v.video_link %>"width="100%" height="80%" frameborder="0" allowfullscreen ></iframe>
                                               
                                                 </div>
                                       

                                    
                  

      <% }
    } %>
                         </div>
                    </div> 
                </div>
                <div class="clearfix"> </div>
            </div>
        </div>
        <div class="col-md-12">
            <div class="col_3">
                <h3>Update Of the Week</h3>
                <div class="col_1">
                   
                    <div class="col-sm-3 video_c3">
                       
                      <%--  <h1>E3 Interviews<br>Developer Interviews from E3 2016</h1>
                        <h3>Feeds ComingSOon</h3--%>
                    <h3>Hot Feeds </h3>
                 <marquee direction="up" scrollamount="1" height="80%" behavior="" style="font-size:larger;" loop="1000">
                             <%
    IQueryable<feed> feeds = feedsclass.getFeeds();
    int i = 0;
    foreach (feed f in feeds)
    {
       int res_feeds_compare = DateTime.Compare(f.feedenddate.Value.Date, DateTime.Now.Date);
        if (res_feeds_compare>=0)
        {
            if (i % 2 == 0)
            {%>
                                 <p class="par1" id=<%=f.id%> onclick="marqueclick(<%=f.id %>);"><%=f.shortDescription %></p>
                     <%}
    else
    {%>
                                  <p class="par2" id=<%=f.id%> onclick="marqueclick('<%=f.id %>');"><%=f.shortDescription %></p>
                             
  <% }
            i++;
        }
    } %>
              <%-- <p class="par2" >Feeds ComingSOon <span class="description">this news is about the conferecnce here today in islamabad </span> </p>
                <p class="par1" >hey this is news <span class="description">this news is about the conferecnce here today in islamabad </span> </p>--%>
               
                  </marquee>
                    </div>
                   <%-- <div class="col-sm-9 video_c3 feeddesc">
                        <h1>Fandom InterView <br>Developer Interviews from E3 2016</h1><br /><br />
                        <h3>Feeds ComingSOon</h3>
                    </div>--%>

                     <div class="col-sm-9 news_c3 newsdefault">
                           <h3>News Description </h3>

                            <img class="col-sm-12" src="images/newsdefault.jpg"   alt="Select Photograph"  height="80%" width="100%"/>
                       
                            
                    </div>
                    <div class="col-sm-9 news_c3 feeddesc">
                        <h3>News Description </h3>
                       
                        <%

                            foreach (feed f in feeds)
                            {
                                int res_feeds_compare = DateTime.Compare(f.feedenddate.Value.Date, DateTime.Now.Date);
                          if (res_feeds_compare<=0)
                                 {
                                %>
                        
                            <h1 class="col-sm-12" id="ds<%=f.id %>" ><%=f.shortDescription%></h1></br>
                            <p class="col-sm-6" id="dl<%=f.id %>"><%=f.longDescription %> </p>
                           <%
    byte[] img1 = null;
    if (f.image != null)
    {
        img1 = f.image.ToArray();
    }
    else
    {
        img1 = System.Text.Encoding.UTF8.GetBytes("images/banner_1.jpg");
    } %>
                            
                           
                                <img class="col-sm-6" id="img<%=f.id %>" src='data:image/jpg;base64,<%= Convert.ToBase64String(img1) %>'   alt="Select Photograph"  height="65%" width="100%" style="margin-top:-36;display:inline-block"/>
                            
                             <%}
    } %>
                            
                            
                    </div>
                   
               
                <div class="clearfix"> </div>
            </div>
                </div>
        </div>
	   <div class="clearfix"> </div>
	
<!--</div>-->

</asp:Content>

