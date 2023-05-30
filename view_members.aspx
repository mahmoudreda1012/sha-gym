<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="view_members.aspx.cs" Inherits="sha_gym.view_members" %>
<!DOCTYPE html>
 <link href="styles/demo.css" rel="stylesheet" />
 <link href="styles/sidebar.css" rel="stylesheet" />

<html xmlns="http://www.w3.org/1999/xhtml">
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
                  <h4 class="card-title" >Total Members</h4>
                  <p class="card-category"> Registered Members List</p>
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
                          Email 
                        </th>
                        <th>
                          Gender
                        </th>
                          <th>
                          Age
                        </th>
                        <th>
                          Height
                        </th>
                        <th>
                          Weight
                        </th>
                        <th>
                         Experirnce
                        </th>
                         <th>
                         Experirnce Time
                        </th>
                        <th>
                        Familiar With Exercise
                        </th>
                         <th>
                         Main Goal
                        </th>
                        <th>
                        Target Weight
                        </th>
                         <th>
                         Focus Area
                        </th>
                         <th>
                         Current Body Shape
                        </th>
                         <th>
                         Dream Body Shape
                        </th>
                         <th>
                         Last Time Perfect Shape
                        </th>
                          <th>
                              Physically Active
                            </th>
                         <th>
                          Push Ups
                        </th>
                        <th>
                         Sedentary Life Styles
                        </th>
                          <th>
                         Daily Walk
                        </th>
                          <th>
                         Daily Drink
                        </th>
                          <th>
                         Food Preference
                        </th>
                          <th>
                         Sleep
                        </th>
                          <th>
                         Work Out
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
                            <%#Eval("email") %>
                          </td>
                          <td>
                            <%#Eval("gender") %>
                          </td>
                             <td>
                            <%#Eval("age") %>
                          </td>
                          <td>
                            <%#Eval("height") %>
                          </td>
                          <td>
                            <%#Eval("weight") %>
                          </td>
                          <%--<td>
                            <%#Eval("d") %>
                          </td>--%>
                         <td>
                            <%#Eval("experience") %>
                          </td>
                         <td>
                            <%#Eval("experience_time") %>
                          </td>
                         <td>
                            <%#Eval("familiar_with_exercise") %>
                          </td>
                         <td>
                            <%#Eval("main_goal") %>
                          </td>
                          <td>
                            <%#Eval("target_weight") %>
                          </td>
                         <td>
                            <%#Eval("focus_area") %>
                          </td>

                             <td>
                            <%#Eval("current_body_shape") %>
                          </td>

                             <td>
                            <%#Eval("dreem_body_shape") %>
                          </td>
                            <td>
                                <%# Eval("last_time_perfect_shape") %>
                            </td>
                         <td>
                            <%#Eval("physically_active") %>
                          </td>
                          <td>
                            <%#Eval("push_ups") %>
                          </td>
                          <td>
                            <%#Eval("sedentary_life_styles") %>
                          </td>
                            <td>
                            <%#Eval("daily_walk") %>
                          </td>
                            <td>
                            <%#Eval("drink_daialy") %>
                          </td>
                            <td>
                            <%#Eval("food_preference") %>
                          </td>
                            <td>
                            <%#Eval("sleep") %>
                          </td><td>
                            <%#Eval("work_out") %>
                          </td>
                       
                        <td class="delete">
                            <a href="AdminDelete.aspx?type=Member&id=<%#Eval("id") %>" class="delete">Delete</a>
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
</html>
