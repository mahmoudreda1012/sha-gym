<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="trainer_dashboard.aspx.cs" Inherits="sha_gym.trainer_dashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="styles/admin_dashboard_style.css" rel="stylesheet">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>

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
                <h3>Trainer Dashboard</h3>
            </div>
            <ul>
                <li>
                    <a href="#" class="active">
                        <span class="icon"><i class="fas fa-home"></i></span>
                        <span class="item">Dashboard</span>
                    </a>
                </li>
                <li>
                    <a href="trainer_view_members.aspx">
                        <span class="icon"><i class="fas fa-desktop"></i></span>
                        <span class="item">View All Allocations</span>
                    </a>
                </li>
                 <li>
                    <a href="login.aspx">
                        <span class="icon"><i class="fas fa-database"></i></span>
                        <span class="item">Log out</span>
                    </a>
                </li>
                
            </ul>
        </div>
        </div>
</body>
</html>
