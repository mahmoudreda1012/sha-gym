using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace sha_gym
{
    public partial class QN : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyCon"].ConnectionString);
        SqlCommand cmd = null;
        protected void Page_Load(object sender, EventArgs e)
        {
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            //check if email exist 
            con.Open();
            cmd = new SqlCommand("update members set gender=@gender,age=@age, height=@height,weight=@weight,experience=@experience,experience_time=@experience_time,familiar_with_exercise=@familiar_with_exercise,main_goal=@main_goal,target_weight=@target_weight,focus_area=@focus_area," +
                "current_body_shape=@current_body_shape,dreem_body_shape=@dream_body_shape,last_time_perfect_shape=@last_time_perfect_shape,push_ups=@push_ups,sedentary_life_styles=@sedentary_life_styles,daily_walk=@daily_walk," +
                "drink_daialy=@drink_daialy,food_preference=@food_preference,sleep=@sleep,work_out=@work_out , qn_test='yes' where id=@id ", con);
            cmd.Parameters.AddWithValue("@id", 1);
            cmd.Parameters.AddWithValue("@gender", rbtGender.SelectedItem.ToString());
            cmd.Parameters.AddWithValue("@age", float.Parse(age.Value.ToString()));
            cmd.Parameters.AddWithValue("@height", float.Parse(height.Value.ToString()));
            cmd.Parameters.AddWithValue("@weight", float.Parse(weight.Value.ToString()));
            cmd.Parameters.AddWithValue("@experience", experience.SelectedItem.ToString());
            cmd.Parameters.AddWithValue("@experience_time", experience_weight.SelectedItem.ToString());
            cmd.Parameters.AddWithValue("@familiar_with_exercise", familiar.SelectedItem.ToString());
            cmd.Parameters.AddWithValue("@main_goal", main_goal.SelectedItem.ToString());
            cmd.Parameters.AddWithValue("@target_weight", float.Parse(target_weight.Value.ToString()));
            cmd.Parameters.AddWithValue("@focus_area", focus_areas.SelectedItem.ToString());
            cmd.Parameters.AddWithValue("@current_body_shape", current_body.SelectedItem.ToString());
            cmd.Parameters.AddWithValue("@dream_body_shape", dreem_body.SelectedItem.ToString());
            cmd.Parameters.AddWithValue("@last_time_perfect_shape", perfect_shape.SelectedItem.ToString());
            cmd.Parameters.AddWithValue("@push_ups", push_ups.SelectedItem.ToString());
            cmd.Parameters.AddWithValue("@sedentary_life_styles", life_styles.SelectedItem.ToString());
            cmd.Parameters.AddWithValue("@daily_walk", walk_dailay.SelectedItem.ToString());
            cmd.Parameters.AddWithValue("@drink_daialy", drink_daialy.SelectedItem.ToString());
            cmd.Parameters.AddWithValue("@food_preference", preference.SelectedItem.ToString());
            cmd.Parameters.AddWithValue("@sleep", much_sleep.SelectedItem.ToString());
            cmd.Parameters.AddWithValue("@work_out", workout.SelectedItem.ToString());
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('Member Inserted Successfully..')</script>");
            Server.Transfer("login.aspx");
        }
    }
}