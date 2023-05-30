<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Add_new_member.aspx.cs" Inherits="sha_gym.Add_new_member" %>
<link href="styles\index.css" rel="stylesheet" />
<link href="styles\sidebar.css" rel="stylesheet" />
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!--  الميتا  -->
  <meta charset="UTF-8" />
  <title>signup_submit</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  
  <!--  الاستايل  -->
  <link rel="stylesheet" href="styles\login_style.css">
 
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
<body class="body">
      <div class="wrapper">
        <!--Top menu -->
        <div class="sidebar">
           <!--profile image & text-->
            <!--menu item-->
             <div class="profile">
                <img src="https://i.postimg.cc/2yXL4dz5/administrator-xxl.png" alt="profile_picture">
                <h3>Admin Dashboard</h3>
            </div>
            <ul>
                <li>
                    <a href="#" class="active">
                        <span class="icon"><i class="fas fa-home"></i></span>
                        <span class="item">Dashboard</span>
                    </a>
                </li>
                <li>
                    <a href="Add_new_member.aspx">
                        <span class="icon"><i class="fas fa-desktop"></i></span>
                        <span class="item">Add New Member</span>
                    </a>
                </li>
                <li>
                    <a href="view_members.aspx">
                        <span class="icon"><i class="fas fa-user-friends"></i></span>
                        <span class="item">View All Members</span>
                    </a>
                </li>
                <li>
                    <a href="Add_new_coach.aspx">
                        <span class="icon"><i class="fas fa-tachometer-alt"></i></span>
                        <span class="item">Add New Coach</span>
                    </a>
                </li>
                <li>
                    <a href="view_coaches.aspx">
                        <span class="icon"><i class="fas fa-database"></i></span>
                        <span class="item">View All Coaches</span>
                    </a>
                </li>
                 <li>
                    <a href="admin_add_allocation.aspx">
                        <span class="icon"><i class="fas fa-database"></i></span>
                        <span class="item">Add New Allocation</span>
                    </a>
                </li>
                 <li>
                    <a href="view_coach_member.aspx">
                        <span class="icon"><i class="fas fa-database"></i></span>
                        <span class="item">View All Allocations</span>
                    </a>
                </li>
            </ul>
        </div>
        </div>
    <form id="form1" runat="server" class="body">
          <div id="login-box">
  <div class="left_admin" runat="server">
    <h1>Add Member</h1>
    
    <input type="text" name="username" placeholder="Username" runat="server" id="member_name" required>
    <input type="text" name="email" placeholder="E-mail" runat="server" id="member_email"  required/>
    <input type="password" name="password" placeholder="Password" runat="server" id="member_pass1" required/>
    <input type="password" name="password2" placeholder="Retype password" runat="server" id="member_pass2" required/>&nbsp;
      <asp:Button BackColor="ForestGreen" Font-Size="Large" ID="Button1" runat="server" OnClick="Button2_Click" Text="Add Memeber" />
        
  </div>
 
</div>
    </form>
</body>
</html>
