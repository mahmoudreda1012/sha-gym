<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="trainer_set_plan.aspx.cs" Inherits="sha_gym.trainer_add_allocation" %>

<!DOCTYPE html>
<link href="styles\index.css" rel="stylesheet" />
<link href="styles\sidebar.css" rel="stylesheet" />

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
                    <a href="Add_new_member.aspx">
                        <span class="icon"><i class="fas fa-desktop"></i></span>
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
   
     <form id="form1" runat="server" class="form" aria-setsize="250,250">
       <div id="login-box">
  <div class="left_admin" runat="server">
    <div class="main-panel">
      <!-- Navbar -->

      <!-- End Navbar -->
      <div class="content">
        <div class="container-fluid">
          <div class="row">
            <div class="col-md-8">
              <div class="card">
                <div class="header">
                  <h4 class="card-title">Set Member Plan</h4>
                  <p class="card-category">Enter Plan Details (About Food Plan, Other Suggestion)</p>
                </div>
                <div class="card-body">
                
                
                    <div class="row">
                      <div class="col-md-8">
                        <div class="form-group">
                          <label class="bmd-label-floating">Monday<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="txtMon" ForeColor="Red"></asp:RequiredFieldValidator></label>
                          <asp:TextBox ID="txtMon" runat="server" class="form-control"></asp:TextBox>
                        
                        </div>
                        <div class="form-group">
                          <label class="bmd-label-floating">Tuesday<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="txtTues" ForeColor="Red"></asp:RequiredFieldValidator></label>
                          <asp:TextBox ID="txtTues" runat="server" class="form-control"></asp:TextBox>
                        
                        </div>

                        <div class="form-group">
                          <label class="bmd-label-floating">Wednesday<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ControlToValidate="txtWed" ForeColor="Red"></asp:RequiredFieldValidator></label>
                          <asp:TextBox ID="txtWed" runat="server" class="form-control"></asp:TextBox>
                        
                        </div>

                         <div class="form-group">
                          <label class="bmd-label-floating">Thursday<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="*" ControlToValidate="txtThu" ForeColor="Red"></asp:RequiredFieldValidator></label>
                          <asp:TextBox ID="txtThu" runat="server" class="form-control"></asp:TextBox>
                        
                        </div>

                        <div class="form-group">
                          <label class="bmd-label-floating">Friday<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*" ControlToValidate="txtFri" ForeColor="Red"></asp:RequiredFieldValidator></label>
                          <asp:TextBox ID="txtFri" runat="server" class="form-control"></asp:TextBox>
                        
                        </div>

                        <div class="form-group">
                          <label class="bmd-label-floating">Saturday<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*" ControlToValidate="txtSatu" ForeColor="Red"></asp:RequiredFieldValidator></label>
                          <asp:TextBox ID="txtSatu" runat="server" class="form-control"></asp:TextBox>
                        
                        </div>

                        <div class="form-group">
                          <label class="bmd-label-floating">Sunday<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="*" ControlToValidate="txtSun" ForeColor="Red"></asp:RequiredFieldValidator></label>
                          <asp:TextBox ID="txtSun" runat="server" class="form-control"></asp:TextBox>
                        
                        </div>

                      </div>
                     
                    </div>
               
                    <asp:Button BackColor="ForestGreen" Font-Size="Large" ID="btnSet" runat="server" Text="Set Plan" class="btn btn-primary pull-left" OnClick="btnSet_Click"  />
                    
                    <div class="clearfix"></div>
                
                </div>
              </div>
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
