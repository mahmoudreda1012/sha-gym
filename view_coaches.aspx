<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="view_coaches.aspx.cs" Inherits="sha_gym.view_coaches" %>

<!DOCTYPE html>
 <link href="styles/demo.css" rel="stylesheet" />
 <link href="styles/sidebar.css" rel="stylesheet" />
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
    <div class="wrapper ">  
    <div class="main-panel">
      <div class="content">
        <div class="container-fluid">
          <div class="row">
            <div class="col-md-12">
              <div class="card">
                <div class="header">
                  <h4 class="card-title" >Total Coaches</h4>
                  <p class="card-category"> Registered Coaches List</p>
                </div>
                <div class="card-body">
                  <div class="table-responsive">
                    <table class="table">
                      <thead class=" text-primary">
                        <th>
                          Id
                        </th>
                        <th>
                          Name
                        </th>
                        <th>
                          Phone 
                        </th>
                        <th>
                         Email
                        </th>
                          <th>
                          Address
                        </th>
                        <th>
                          Facebook
                        </th>
                        <th>
                          Twitter
                        </th>
                        <th>
                         Youtube
                        </th>
                         <th>
                         LinkedIn
                        </th>
                        <th>
                        Work Experience
                        </th>
                         <th>
                         Education
                        </th>
                        <th>
                          Delete
                        </th>
                      </thead>
                      <tbody>

            <asp:Repeater ID="RepeaterDB" runat="server">

            <HeaderTemplate></HeaderTemplate>

            <ItemTemplate>

                        <tr>
                          <td>
                            <%#Eval("id") %>
                          </td>
                          <td>
                            <%#Eval("name") %>
                          </td>
                         <%-- <td>
                            <%#Eval("contactno") %>
                          </td>--%>
                          <td>
                            <%#Eval("phone") %>
                          </td>
                          <td>
                            <%#Eval("email") %>
                          </td>
                             <td>
                            <%#Eval("address") %>
                          </td>
                          <td>
                            <%#Eval("facebook") %>
                          </td>
                          <td>
                            <%#Eval("twitter") %>
                          </td>
                          <%--<td>
                            <%#Eval("d") %>
                          </td>--%>
                         <td>
                            <%#Eval("youtube") %>
                          </td>
                         <td>
                            <%#Eval("linkedin") %>
                          </td>
                         <td>
                            <%#Eval("experience") %>
                          </td>
                         <td>
                            <%#Eval("education") %>
                          </td>
                        <td class="delete">
                            <a href="AdminDelete.aspx?type=Trainer&id=<%#Eval("id") %>" class="delete">Delete</a>
                        </td>
                        </tr>

            </ItemTemplate>

            <FooterTemplate></FooterTemplate>

            </asp:Repeater>

                       </tbody>
                    </table>
                  </div>
                </div>
              </div>
            </div>

          </div>
        </div>
      </div>
     
    </div>
  </div>
</body>
</html>
