<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin_add_allocation.aspx.cs" Inherits="sha_gym.admin_add_allocation" %>

<!DOCTYPE html>
 <link href="styles/sidebar.css" rel="stylesheet" />
<link href="styles\index.css" rel="stylesheet" />

<html xmlns="http://www.w3.org/1999/xhtml"> 
   
<head runat="server">
    <title></title>

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
    <form runat="server">
        <div class="main-panel">
         <div class="content">
        <div class="container-fluid">
          <div class="row">
            <div class="col-md-8">
              <div class="card">
                <div class="header">
                  <h4 class="card-title">Allocate Trainer</h4>
                  <p class="card-category">Select Trainer And Member</p>
                </div>
                <div class="card-body">
                   
                    <div class="row">
                      
                       <div class="col-md-8">
                        <div class="form-group" runat="server">
                          <label class="bmd-label-floating">Select Trainer Email Id<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"  Width="120px" BackColor="#F6F1DB" ForeColor=black Font-Names="Andalus" CssClass="ddl" ControlToValidate="DropDownTrainer"></asp:RequiredFieldValidator></label>
                          <asp:DropDownList class="dropdown" ID="DropDownTrainer" runat="server" DataSourceID="SqlDataSource1" DataTextField="email" DataValueField="id"></asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GymDBConnectionString %>" SelectCommand="SELECT [id], [email] FROM [trainer]"></asp:SqlDataSource>
                       </div>
                        
                       <div class="form-control" runat="server">
                          <label class="bmd-label-floating">Select Member Email Id<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"  Width="120px" BackColor="#F6F1DB" ForeColor=black Font-Names="Andalus" CssClass="ddl" ControlToValidate="DropDownMember"></asp:RequiredFieldValidator></label>
                          <asp:DropDownList class="dropdown" ID="DropDownMember" runat="server" DataSourceID="SqlDataSource2" DataTextField="email" DataValueField="id"></asp:DropDownList>
                           <asp:SqlDataSource  ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:GymDBConnectionString %>" SelectCommand="SELECT [id], [email] FROM [members]"></asp:SqlDataSource>
                       </div>
                             
                       </div>
                   </div>
                    <asp:Button ID="btnAllocate" runat="server" Text="Allocate" class="allocate_button" OnClick="btnAllocate_Click" />
                    
                    <div class="clearfix"></div>
                
                </div>
              </div>
            </div>
           
          </div>
        </div>
      </div>
      </div>
        </form>
</body>
</html>
