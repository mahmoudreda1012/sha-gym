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
            MD5CryptoServiceProvider md5 = new MD5CryptoServiceProvider();
            byte[] encrypt;
            UTF8Encoding encode = new UTF8Encoding();
            encrypt = md5.ComputeHash(encode.GetBytes(password));
            StringBuilder encryptdate = new StringBuilder();
            for (int i = 0; i < encrypt.Length; i++)
            {
                encryptdate.Append(encrypt[i].ToString());
            }
            return encryptdate.ToString();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            this.signup_bt.ServerClick += new System.EventHandler(this.signup_bt_Click);
            gender = "male";
        }
        protected void signup_bt_Click(object sender, EventArgs e)
        {
            //check if email exist 
            con.Open();
            cmd = new SqlCommand("select * from TblMembers where email = @email", con);
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
                cmd = new SqlCommand("insert into TblMembers(name, address, gender,email, password) VALUES (@name, @address, @gender,@email, @password)", con);
                cmd.Parameters.AddWithValue("@name", name.Value.ToString());
                cmd.Parameters.AddWithValue("@address", address.Value.ToString());
                cmd.Parameters.AddWithValue("@gender", gender);
                cmd.Parameters.AddWithValue("@email", email.Value.ToString());
                cmd.Parameters.AddWithValue("@password",encryption( password.Value.ToString()));
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Member Inserted Successfully..')</script>");
                Server.Transfer("login.aspx");
            }
        }

        protected void male_CheckedChanged1(object sender, EventArgs e)
        {
            gender = "male";
        }

        protected void female_CheckedChanged(object sender, EventArgs e)
        {
            gender = "female";
        }
    }
}