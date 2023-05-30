using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace sha_gym
{
    public partial class Add_new_coach : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyCon"].ConnectionString);
        SqlCommand cmd = null;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            //check if email exist 
            con.Open();
            cmd = new SqlCommand("select * from trainer where email = @email", con);
            cmd.Parameters.AddWithValue("@email", trainer_email.Value.ToString());
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count >= 1)
            {
                Response.Write("<script>alert('Coach Email Id Already Used..')</script>");
            }
            else
            {
                cmd = new SqlCommand("insert into trainer VALUES (@name,@phone,@email,@address,@facebook,@twitter,@youtube,@linkedin,@experience,@education, @password)", con);
                cmd.Parameters.AddWithValue("@name", trainer_name.Value.ToString());
                cmd.Parameters.AddWithValue("@phone", trainer_phone.Value.ToString());
                cmd.Parameters.AddWithValue("@email", trainer_email.Value.ToString());
                cmd.Parameters.AddWithValue("@address", trainer_address.Value.ToString());
                cmd.Parameters.AddWithValue("@facebook", trainer_facebook.Value.ToString());
                cmd.Parameters.AddWithValue("@twitter", trainer_twitter.Value.ToString());
                cmd.Parameters.AddWithValue("@youtube", trainer_youtube.Value.ToString());
                cmd.Parameters.AddWithValue("@linkedin", trainer_likedin.Value.ToString());
                cmd.Parameters.AddWithValue("@experience", trainer_experience.Value.ToString());
                cmd.Parameters.AddWithValue("@education", trainer_education.Value.ToString());
                cmd.Parameters.AddWithValue("@password", encryption(coach_pass1.Value.ToString()));
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Member Inserted Successfully..')</script>");
                Server.Transfer("Add_new_Coach.aspx");
            }
        }
        public string encryption(String password)
        {
            return Convert.ToBase64String(Encoding.UTF8.GetBytes(password));
        }
    }
}