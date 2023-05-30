using Google.Apis.Admin.Directory.directory_v1.Data;
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
    public partial class login : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyCon"].ConnectionString);
        SqlCommand cmd = null;
        SqlDataAdapter da = null;
        DataTable dt = null;
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
            this.btnLogin.ServerClick += new System.EventHandler(this.btnLogin_Click);
        }
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            con.Open();
            cmd = new SqlCommand("select * from TblMembers where email = @email and password = @pass", con);
            cmd.Parameters.AddWithValue("@email", username.Value.ToString());
            cmd.Parameters.AddWithValue("@pass", encryption(password.Value.ToString())/*encryption(txtPass.Text)*/);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            //get the email and passowrd
            if (dt.Rows.Count == 1)
            {
                Session["User"] = "Member";
                //get id of user and name and email
                foreach (DataRow dr in dt.Rows)
                {
                    Session["MemberId"] = dr["id"].ToString();
                    Session["MemberName"] = dr["name"].ToString();
                }
                Session["Email"] = username.Value.ToString();
                Response.Redirect("home.aspx");
            }
            else
            {
                Response.Write("<script>alert('Invalid Username Or Password')</script>");
            }
            con.Close();
        }
        protected void signup_form_Click(object sender, EventArgs e)
        {
            Response.Redirect("signup.aspx");
        }
    }
}