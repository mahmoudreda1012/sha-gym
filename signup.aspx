<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="sha_gym.signup" %>
<link href="styles\login_style.css" rel="stylesheet" />
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  
  <!--  الميتا  -->
  <meta charset="UTF-8" />
  <title>signup_submit</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  
  <!--  الاستايل  -->
  <link rel="stylesheet" href="styles\styles.css">
 
    <style type="text/css">
*,
*:before,
*:after{
padding: 0;
margin: 0;
box-sizing: border-box;
}
*,
*:before,
*:after{
padding: 0;
margin: 0;
box-sizing: border-box;
}
    </style>
 
</head>
<body>
    <form id="form1" runat="server">
  <div id="login-box">
  <div class="left">
    <h1>Sign up</h1>
    
    <input type="text" name="username" placeholder="Username" runat="server" id="name" required>
    <input type="text" name="email" placeholder="E-mail" runat="server" id="email"  required/>
    <input type="password" name="password" placeholder="Password" runat="server" id="pass1" required/>
    <input type="password" name="password2" placeholder="Retype password" runat="server" id="pass2" required/>&nbsp;
      <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
        <div class="login_link">
             have an account? <a href="login.aspx">LOG IN</a>
        </div>
 
  </div>
  
  <div class="right">
    <span class="loginwith">Sign in with<br />social network</span>
    
    <button class="social-signin facebook">Log in with facebook</button>
    <button class="social-signin twitter">Log in with Twitter</button>
    <button class="social-signin google">Log in with Google+</button>
  </div>
  <div class="or">OR</div>
</div>
    </form>
</body>
</html>
