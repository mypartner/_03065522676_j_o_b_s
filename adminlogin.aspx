<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adminlogin.aspx.cs" Inherits="adminlogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title></title>

    <!-- Bootstrap -->
    <link href="../vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="../vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="../vendors/nprogress/nprogress.css" rel="stylesheet">
    <!-- Animate.css -->
    <link href="https://colorlib.com/polygon/gentelella/css/animate.min.css" rel="stylesheet">

    <!-- Custom Theme Style -->
    <link href="../build/css/custom.min.css" rel="stylesheet">
      <script>
         
      </script>
</head>
<body class="login">
    <div>
      <a class="hiddenanchor" id="signup">CCCCC</a>
      <a class="hiddenanchor" id="signin">XXXXX</a>

      <div class="login_wrapper">
        <div class="animate form login_form">
          <section class="login_content">
            <form runat="server">
              <h1>Login Form</h1>
              <div>
                <input type="text" class="form-control" placeholder="Username" name="Uname" required="" />
              </div>
              <div>
                <input type="password" class="form-control" placeholder="Password" name="Pword" required="" />
              </div>
              <div>
        <asp:Button ID="loginbtn" class="btn btn-default submit" runat="server" Text="Login" OnClick="loginbtn_Click" />
                
                <a class="reset_pass" href="#">Lost your password?</a>
                 
              </div>

              <div class="clearfix"></div>

              <div class="separator">
              

                <div class="clearfix"></div>
                <br />

                <div>
                  <h1><i class="fa fa-paw"></i> OGS!</h1>
                  <p>©2016 All Rights Reserved. OGS!. Privacy and Terms</p>
                </div>
              </div>
            </form>
          </section>
        </div>
      </div>
    </div>
</body>
</html>
