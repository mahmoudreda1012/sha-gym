<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Add_new_coach.aspx.cs" Inherits="sha_gym.Add_new_coach" %>
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
box-sizing: content-box;
}

    </style>
</head>
<body>
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
    <form id="form1" runat="server" class="form">
       <div id="login-box">
  <div class="left_admin" runat="server">
    <h1>Add Coach</h1>
    
    <input type="text" name="username" placeholder="Username" runat="server" id="trainer_name" required>
    <input type="text" name="phone" placeholder="Phone" runat="server" id="trainer_phone"  required/>
    <input type="text" name="email" placeholder="E-mail" runat="server" id="trainer_email"  required/>
    <input type="text" name="address" placeholder="Address" runat="server" id="trainer_address"  required/>
    <input type="text" name="facebook" placeholder="Facebook" runat="server" id="trainer_facebook"  required/>
     <input type="text" name="twitter" placeholder="Twitter" runat="server" id="trainer_twitter"  required/>
    <input type="text" name="youtube" placeholder="Youtube" runat="server" id="trainer_youtube"  required/>
    <input type="text" name="linkedin" placeholder="LinkedIN" runat="server" id="trainer_likedin"  required/>
    <input type="text" name="experience" placeholder="Work Experience" runat="server" id="trainer_experience"  required/>
    <input type="text" name="education" placeholder="Education" runat="server" id="trainer_education"  required/>

    <input type="password" name="password" placeholder="Password" runat="server" id="coach_pass1" required/>
      <asp:Button BackColor="ForestGreen" Font-Size="Large" ID="Button1" runat="server" OnClick="Button2_Click" Text="Add Coach" />
        
  </div>
 
</div>
</form>
</body>
</html>
