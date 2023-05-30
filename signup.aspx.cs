using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace sha_gym
{
    public partial class signup : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyCon"].ConnectionString);
        SqlCommand cmd = null;
        string gender;
        public string encryption(String password)
        {
            return Convert.ToBase64String(Encoding.UTF8.GetBytes(password));
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            gender = "male";
        }
     
        protected void male_CheckedChanged1(object sender, EventArgs e)
        {
            gender = "male";
        }

        protected void female_CheckedChanged(object sender, EventArgs e)
        {
            gender = "female";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //check if email exist 
            con.Open();
            cmd = new SqlCommand("select * from members where email = @email", con);
            cmd.Parameters.AddWithValue("@email", email.Value.ToString());
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count >= 1)
            {
                Response.Write("<script>alert('Email Id Already Used..')</script>");
            }
            else
            {
                if(!pass1.Value.Equals(pass2.Value))
                {
                    Response.Write("<script>alert('Password not match..')</script>");
                }
                else
                {
                    cmd = new SqlCommand("insert into members(name, email, password) VALUES (@name,@email, @password)", con);
                    cmd.Parameters.AddWithValue("@name", name.Value.ToString());
                    //cmd.Parameters.AddWithValue("@address", address.Value.ToString());
                    //cmd.Parameters.AddWithValue("@gender", gender);
                    cmd.Parameters.AddWithValue("@email", email.Value.ToString());
                    cmd.Parameters.AddWithValue("@password", encryption(pass1.Value.ToString()));
                    cmd.ExecuteNonQuery();
                    con.Close();
                    Response.Write("<script>alert('Member Inserted Successfully..')</script>");
                    Server.Transfer("login.aspx");
                }
               
            }
        }
        
    }
}