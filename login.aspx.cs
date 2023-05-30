using Google.Apis.Admin.Directory.directory_v1.Data;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Net.Mail;
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
        private const string ERP_Account = "shagym776@gmail.com";
        private const string ERP_Password = "zwuoxkempofukpeg";
        public string encryption(String password)
        {
            return Convert.ToBase64String(Encoding.UTF8.GetBytes(password));
        }
        public string decryption(string encodingpassword)
        {
            return Encoding.UTF8.GetString(Convert.FromBase64String(encodingpassword));
        }
        private void send_email()
        {       
            con.Open();
            cmd = new SqlCommand("select password from members where email = @email", con);
            cmd.Parameters.AddWithValue("@email", username.Value.ToString());
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            //get the email and passowrd
            string password="";
            if (dt.Rows.Count == 1)
            {
                //get id of user and name and email\
                foreach (DataRow dr in dt.Rows)
                {
                    password = dr["password"].ToString();
                }
                //send mail
                MailMessage msg = new MailMessage(ERP_Account,username.Value.ToString());
                msg.Subject = "SHA GYM";
                msg.Body = "كلمة المرور الخاصة بالبريد الإلكتروني " + username.Value.ToString() + " هي " + decryption(password).ToString();
                SmtpClient smtp = new SmtpClient();
                smtp.Host = "smtp.gmail.com";
                smtp.Port = Convert.ToInt32(587);
                System.Net.NetworkCredential networkCredential = new NetworkCredential(ERP_Account, ERP_Password);
                smtp.Credentials = networkCredential;
                smtp.EnableSsl = true;
                smtp.Send(msg);
                Response.Write("<script>alert('The password has been sent to the e-mail')</script>");
            }
            else
            {
                Response.Write("<script>alert('Invalid e-mail')</script>");
            }

        }
        protected void Page_Load(object sender, EventArgs e)
        {
            this.btnLogin.ServerClick += new System.EventHandler(this.btnLogin_Click);
            this.Button1.ServerClick += new System.EventHandler(this.Button1_Click);
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            if(username.Value.ToString().Equals(""))
            {
                Response.Write("<script>alert('Please write your e-mail first')</script>");
            }
            else
            {
                send_email();
            }
        }
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if(username.Value.Equals("admin")|| username.Value.Equals("Admin"))
            {
                if(password.Value.Equals("00000"))
                {
                    Response.Redirect("admin_dashboard.aspx");
                }
            }
     
            con.Open();
            cmd = new SqlCommand("select * from members where email = @email and password = @pass", con);
            cmd.Parameters.AddWithValue("@email", username.Value.ToString());
            cmd.Parameters.AddWithValue("@pass", encryption(password.Value.ToString())/*encryption(txtPass.Text)*/);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            int user_id=0,trainer_id=0;
            //get the email and passowrd
            if (dt.Rows.Count == 1)
            {
                Session["User"] = "Member";
                //get id of user and name and email
                foreach (DataRow dr in dt.Rows)
                {
                    user_id = int.Parse(dr["id"].ToString());
                    Session["MemberId"] = dr["id"].ToString();
                    Session["MemberName"] = dr["name"].ToString();
                }
                Session["Email"] = username.Value.ToString();
                DateTime current_time = DateTime.Now;
                cmd = new SqlCommand("insert into users_logins(user_id, login_date) VALUES (@id, @date)", con);
                cmd.Parameters.AddWithValue("@id", user_id);
                cmd.Parameters.AddWithValue("@date", current_time);
                cmd.ExecuteNonQuery();
                //get number of logins
                int login_count = 0;
                string qn_test = " ";
                SqlCommand cmd2 = new SqlCommand("select count(USER_ID),qn_test from users_logins where USER_ID= @user_id", con);
                cmd2.Parameters.AddWithValue("@user_id", user_id);
                SqlDataAdapter da2 = new SqlDataAdapter(cmd2);
                DataTable dt2 = new DataTable();
                da2.Fill(dt2);
                //get the email and passowrd
                if (dt2.Rows.Count == 1)
                {
                    foreach (DataRow dr in dt2.Rows)
                    {
                        login_count = int.Parse(dr[0].ToString());
                        qn_test = dr[0].ToString();

                    }
                    if (login_count == 1 || qn_test == "no")
                    {
                        Response.Redirect("QN.aspx");
                    }
                    else
                    {
                        Response.Redirect("home.aspx");

                    }
                }
            }
            else
            {
                cmd = new SqlCommand("select * from trainer where email = @email and password = @pass", con);
                cmd.Parameters.AddWithValue("@email", username.Value.ToString());
                cmd.Parameters.AddWithValue("@pass", encryption(password.Value.ToString())/*encryption(txtPass.Text)*/);
                SqlDataAdapter da2 = new SqlDataAdapter(cmd);
                DataTable dt2 = new DataTable();
                da2.Fill(dt2);
                if (dt2.Rows.Count == 1)
                {
                    Session["User"] = "Trainer";
                    //get id of user and name and email
                    foreach (DataRow dr in dt2.Rows)
                    {
                        trainer_id = int.Parse(dr["id"].ToString());
                        Session["TrainerId"] = dr["id"].ToString();
                        Session["TrianerName"] = dr["name"].ToString();
                    }
                    Session["Email"] = username.Value.ToString();
                    Response.Redirect("trainer_dashboard.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Invalid Username Or Password')</script>");
                    con.Close();
                }
            }
        }
        protected void signup_form_Click(object sender, EventArgs e)
        {
            Response.Redirect("signup_new.aspx");
        }
    }
}