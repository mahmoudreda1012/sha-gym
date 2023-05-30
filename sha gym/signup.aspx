<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="sha_gym.signup" %>
<link href="styles\index.css" rel="stylesheet" />
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container" id="signup_bt">
    <h1>Register</h1>
    <p>Please fill in this form to create an account</p>
    <hr>

    <label for="name"><b>Name</b></label>
    <input type="text" placeholder="Name" name="psw-repeat" id="name" required runat="server">

     <label for="password"><b>Address</b></label>
    <input type="text" placeholder="Address" name="psw-repeat" id="address" required runat="server">

    <asp:RadioButton GroupName="gender" ID="male" runat="server" Text="Male" Checked="True" OnCheckedChanged="male_CheckedChanged1" />
    <asp:RadioButton GroupName="gender" ID="female" runat="server" Text="Female" OnCheckedChanged="female_CheckedChanged" />





    <label for="email"><b>Email</b></label>
    <input type="text" placeholder="Enter Email" name="email" id="email" required runat="server">

    

    <label for="password"><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="psw" id="password" required runat="server">

    <label for="passwrod_rp"><b>Repeat Password</b></label>
    <input type="password" placeholder="Repeat Password" name="psw-repeat" id="password_re" required runat="server">

    
    
   
    <hr>
    <button type="submit" class="registerbtn" runat="server" id="signup_bt">Register</button>
  </div>

  <  <br />
        <div class="signup_link">
            Already Have An Account? <a href="login.aspx">Log In</a>
        </div>
    </form>
</body>
</html>
