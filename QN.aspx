<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="QN.aspx.cs" Inherits="sha_gym.QN" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="styles\Qn.css">
    <title>preparing the right plan for your needs</title>
</head>
<body>
    <form id="form1" runat="server">
    <div class="containar">
        <div class="gender" runat="server">
            <h4>Your gender?</h4>
              <div class="form-group">
                          <asp:RadioButtonList ID="rbtGender"  runat="server" RepeatDirection="Horizontal">
                              <asp:ListItem>Male</asp:ListItem>
                              <asp:ListItem>Female</asp:ListItem>
                            </asp:RadioButtonList>
        </div>
        </div>
        <div class="date">
            <h4>Your birthday?</h4>
              <input class="yy" type="number" min="10" max="100" id="age" runat="server">
            </div>
        <div class="height">
            <h4>Your height?</h4>
            <input class="mm" type="number" min="100" max="210" id="height" runat="server">
        </div>
        <div class="weight">
            <h4>Your weight?</h4>
        <input class="ww" type="number" min="40" max="210" id="weight" runat="server">

        <div class="training">
            <h4>How experienced are you with weight training?</h4>
             <div class="form-group">
                          <asp:RadioButtonList ID="experience" runat="server" RepeatDirection="Horizontal">
                              <asp:ListItem>Beginner</asp:ListItem>
                              <asp:ListItem>Intermediate</asp:ListItem>
                              <asp:ListItem>Advanced</asp:ListItem>
                            </asp:RadioButtonList>
        </div>
        </div>
        <div class="regulary">
            <h4>How experienced are you with weight training?</h4>
             <div class="form-group">
                          <asp:RadioButtonList ID="experience_weight" runat="server" RepeatDirection="Horizontal">
                              <asp:ListItem>Years ag</asp:ListItem>
                              <asp:ListItem>Months ago</asp:ListItem>
                              <asp:ListItem>I train regulary these days</asp:ListItem>
                            </asp:RadioButtonList>
        </div>
        </div>
        <div class="exercises">
            <h4>Are you familiar with free
                weight exercises?</h4>
            <div class="form-group">
                          <asp:RadioButtonList ID="familiar" runat="server" RepeatDirection="Horizontal">
                              <asp:ListItem>Yes</asp:ListItem>
                              <asp:ListItem>No</asp:ListItem>
                            </asp:RadioButtonList>
        </div>
        </div>
        <div class="goal">
            <h4>Set your main goal </h4>
            <div class="form-group">
                          <asp:RadioButtonList ID="main_goal" runat="server" RepeatDirection="Horizontal">
                              <asp:ListItem>Muscle gain</asp:ListItem>
                              <asp:ListItem>Weight loss</asp:ListItem>
                            </asp:RadioButtonList>
        </div>
           
        </div>
        <div class="weight">
            <h4>What is your target 
                weight?
                </h4>
                <input type="number" min="50" max="300" runat="server" id="target_weight">
        </div>
        <div class="focus-areas">
            <h4>Choose your focus areas?</h4>
             <div class="form-group">
                          <asp:RadioButtonList ID="focus_areas" runat="server" RepeatDirection="Horizontal">
                              <asp:ListItem>Chest</asp:ListItem>
                              <asp:ListItem>Belly</asp:ListItem>
                              <asp:ListItem>Arms</asp:ListItem>
                              <asp:ListItem>Legs</asp:ListItem>
                              <asp:ListItem>Back</asp:ListItem>
                            </asp:RadioButtonList>
        </div>
        </div>
        <div class="shape">
            <h4>Choose your current body shape</h4>
             <div class="form-group">
                          <asp:RadioButtonList ID="current_body" runat="server" RepeatDirection="Horizontal">
                              <asp:ListItem>Ectomorph</asp:ListItem>
                              <asp:ListItem>Mesomorph</asp:ListItem>
                              <asp:ListItem>Endomorph</asp:ListItem>
                            </asp:RadioButtonList>
        </div>
        </div>
        <div class="body-shape">
            <h4>Choose your dreem body shape</h4>
             <div class="form-group">
                          <asp:RadioButtonList ID="dreem_body" runat="server" RepeatDirection="Horizontal">
                              <asp:ListItem>Cut</asp:ListItem>
                              <asp:ListItem>Bulk</asp:ListItem>
                              <asp:ListItem>Extra bulk</asp:ListItem>
                            </asp:RadioButtonList>
        </div>
           
        </div>
        <div class="perfect-shape">
            <h4>When was the last time you were in your perfect 
                shape?</h4>
            <div class="form-group">
                          <asp:RadioButtonList ID="perfect_shape" runat="server" RepeatDirection="Horizontal">
                              <asp:ListItem>Less than year ago</asp:ListItem>
                              <asp:ListItem>More than 1 year ago</asp:ListItem>
                              <asp:ListItem>More than 3 years ago</asp:ListItem>
                              <asp:ListItem>Never</asp:ListItem>
                            </asp:RadioButtonList>
        </div>    
        </div>

        <div class="physically">
            <h4>How physically active are you?</h4>
            <div class="form-group">
                          <asp:RadioButtonList ID="physically_active" runat="server" RepeatDirection="Horizontal">
                              <asp:ListItem>Light mode ( 1-2 dayes / week )</asp:ListItem>
                              <asp:ListItem>Light mode ( 1-2 dayes / week )</asp:ListItem>
                            </asp:RadioButtonList>
        </div>
        </div>
        <div class="push-ups">
            <h4>How many push-ups can you do?</h4>
            <div class="form-group">
                          <asp:RadioButtonList ID="push_ups" runat="server" RepeatDirection="Horizontal">
                              <asp:ListItem>Less than 10</asp:ListItem>
                              <asp:ListItem>10 - 20</asp:ListItem>
                              <asp:ListItem>More than 20</asp:ListItem>
                              <asp:ListItem>I dont know</asp:ListItem>
                            </asp:RadioButtonList>
        </div>
        </div>
        <div class="life-styles">
            <h4>Do you live a sedentary life styles?</h4>
             <div class="form-group">
                          <asp:RadioButtonList ID="life_styles" runat="server" RepeatDirection="Horizontal">
                              <asp:ListItem>yes</asp:ListItem>
                              <asp:ListItem>No</asp:ListItem>
                            </asp:RadioButtonList>
        </div>
        </div>
        <div class="walk-dailay">
            <h4>How much do you walk dailay?</h4>
            <div class="form-group">
                          <asp:RadioButtonList ID="walk_dailay" runat="server" RepeatDirection="Horizontal">
                              <asp:ListItem>Less than 1 hour</asp:ListItem>
                              <asp:ListItem>1-2 hour</asp:ListItem>
                              <asp:ListItem>More than 2 hours</asp:ListItem>
                            </asp:RadioButtonList>
        </div>
        </div>
        <div class="drink-daialy">
            <h4>How much water do you drink daialy?</h4>
            <div class="form-group">
                          <asp:RadioButtonList ID="drink_daialy" runat="server" RepeatDirection="Horizontal">
                              <asp:ListItem>Less than 2 glassess</asp:ListItem>
                              <asp:ListItem>2 – 7 glassess</asp:ListItem>
                              <asp:ListItem>8 glassess</asp:ListItem>
                              <asp:ListItem>More than 8 glassess</asp:ListItem>
                              <asp:ListItem>Only drink tea and coffee</asp:ListItem>
                            </asp:RadioButtonList>
        </div>
          
        </div>
        <div class="preference">
            <h4>What is your food preference?</h4>
            <div class="form-group">
                          <asp:RadioButtonList ID="preference" runat="server" RepeatDirection="Horizontal">
                              <asp:ListItem>No preference</asp:ListItem>
                              <asp:ListItem>Vegetarian</asp:ListItem>
                              <asp:ListItem>Keto diat</asp:ListItem>
                              <asp:ListItem>Gluten free</asp:ListItem>
                              <asp:ListItem>Lactose free</asp:ListItem>
                            </asp:RadioButtonList>
        </div>
        </div>
        <div class="much-sleep">
            <h4>How much sleep do you get?</h4>
            <div class="form-group">
                          <asp:RadioButtonList ID="much_sleep" runat="server" RepeatDirection="Horizontal">
                              <asp:ListItem>Less than 5 hours</asp:ListItem>
                              <asp:ListItem>5-6 hours</asp:ListItem>
                              <asp:ListItem>7-8 hours</asp:ListItem>
                              <asp:ListItem>Over 8 hours</asp:ListItem>
                            </asp:RadioButtonList>
           </div>
        </div>
        <div class="workout">
            <h4>Where do you want to workout?</h4>
            <div class="form-group">
                          <asp:RadioButtonList ID="workout" runat="server" RepeatDirection="Horizontal">
                              <asp:ListItem>Gym</asp:ListItem>
                              <asp:ListItem>Home</asp:ListItem>
                              <asp:ListItem>Get your plan</asp:ListItem>
                              <asp:ListItem>Over 8 hours</asp:ListItem>
                            </asp:RadioButtonList>
           </div>
        </div>
        <div class="zrzr">
            <h4>Lets Go?</h4>
    </div>
    
        </div>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Get Your Plan" />
    </form>
    
</body>
</html>
