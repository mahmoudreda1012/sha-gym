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
    public partial class Add_new_member : System.Web.UI.Page
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
            cmd = new SqlCommand("select * from members where email = @email", con);
            cmd.Parameters.AddWithValue("@email", member_email.Value.ToString());
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count >= 1)
            {
                Response.Write("<script>alert('Email Id Already Used..')</script>");
            }
            else
            {
                if (!member_pass1.Value.Equals(member_pass2.Value))
                {
                    Response.Write("<script>alert('Password not match..')</script>");
                }
                else
                {
                    cmd = new SqlCommand("insert into members(name, email, password) VALUES (@name,@email, @password)", con);
                    cmd.Parameters.AddWithValue("@name", member_name.Value.ToString());
                    //cmd.Parameters.AddWithValue("@address", address.Value.ToString());
                    //cmd.Parameters.AddWithValue("@gender", gender);
                    cmd.Parameters.AddWithValue("@email", member_email.Value.ToString());
                    cmd.Parameters.AddWithValue("@password", encryption(member_pass1.Value.ToString()));
                    cmd.ExecuteNonQuery();
                    con.Close();
                    Response.Write("<script>alert('Member Inserted Successfully..')</script>");
                    Server.Transfer("Add_new_member.aspx");
                }

            }
        }
        public string encryption(String password)
        {
            return Convert.ToBase64String(Encoding.UTF8.GetBytes(password));
        }
    }
}