<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="sha_gym.login" %>
<link href="styles\index.css" rel="stylesheet" />
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">   
    <title></title>
</head>
<body runat="server">
    <form id="form1" runat="server">
        <h3>Login Here</h3>
        <label for="username">Username</label>
        <input type="text" placeholder="Email or Phone" id="username" runat="server">

        <label for="password">Password</label>
        <input type="password" placeholder="Password" id="password" runat="server">

        <button id="btnLogin" runat="server">Log In</button>
         
        <br />
        <div class="signup_link">
            Not A Memeber? <a href="signup.aspx">Sign Up</a>
        </div>
 
        <div class="social" runat="server">
          <div class="go"><i class="fab fa-google"></i>  Google</div>
          <div class="fb"><i class="fab fa-facebook"></i>  Facebook</div>
        </div>
    </form>
</body>
</html>
