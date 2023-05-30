using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace sha_gym
{
    public partial class trainer_add_allocation : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyCon"].ConnectionString);
        SqlCommand cmd = null;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public void setData()
        {
            if (Request.QueryString["id"] != null)
            {

                con.Open();

                cmd = new SqlCommand("select * from TblMembers where memberid = @id", con);

                cmd.Parameters.AddWithValue("@id", Convert.ToInt32(Request.QueryString["id"]));

                SqlDataAdapter da = new SqlDataAdapter(cmd);

                DataTable dt = new DataTable();

                da.Fill(dt);

                if (dt.Rows.Count == 1)
                {
                    foreach (DataRow dr in dt.Rows)
                    {
                        txtMon.Text = dr["mon"].ToString();
                        txtTues.Text = dr["tues"].ToString();
                        txtWed.Text = dr["wed"].ToString();
                        txtThu.Text = dr["thu"].ToString();
                        txtFri.Text = dr["fri"].ToString();
                        txtSatu.Text = dr["satu"].ToString();
                        txtSun.Text = dr["sun"].ToString();
                    }
                }

                con.Close();
            }
        }
        protected void btnSet_Click(object sender, EventArgs e)
        {
            con.Open();
            cmd = new SqlCommand("select * from plans where member_id = @id", con);
            cmd.Parameters.AddWithValue("@id", Convert.ToInt32(Request.QueryString["id"]));
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count >= 1)
            {
                cmd = new SqlCommand("update plans set sat=@sat,san=@sun,mon=@mon,tus=@tus,wen=@wen,thur=@thur,fri=@fri where member_id=@id", con);
                cmd.Parameters.AddWithValue("@mon", txtMon.Text);
                cmd.Parameters.AddWithValue("@tus", txtTues.Text);
                cmd.Parameters.AddWithValue("@wen", txtWed.Text);
                cmd.Parameters.AddWithValue("@thur", txtThu.Text);
                cmd.Parameters.AddWithValue("@fri", txtFri.Text);
                cmd.Parameters.AddWithValue("@sat", txtSatu.Text);
                cmd.Parameters.AddWithValue("@sun", txtSun.Text);
                cmd.Parameters.AddWithValue("@id", Convert.ToInt32(Request.QueryString["id"]));

                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('Member Plan Updated Successfully..')</script>");
            }
            else
            {
                cmd = new SqlCommand("insert into plans (member_id,sat,san,mon,tus,wen,thur,fri) values (@id,@sat,@sun,@mon,@tus,@wen,@thur,@fri)", con);
                cmd.Parameters.AddWithValue("@mon", txtMon.Text);
                cmd.Parameters.AddWithValue("@tus", txtTues.Text);
                cmd.Parameters.AddWithValue("@wen", txtWed.Text);
                cmd.Parameters.AddWithValue("@thur", txtThu.Text);
                cmd.Parameters.AddWithValue("@fri", txtFri.Text);
                cmd.Parameters.AddWithValue("@sat", txtSatu.Text);
                cmd.Parameters.AddWithValue("@sun", txtSun.Text);
                cmd.Parameters.AddWithValue("@id", Convert.ToInt32(Request.QueryString["id"]));

                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('Member Plan Inserted Successfully..')</script>");
            }
           

            //Server.Transfer("TrainerViewMembers.aspx");

            con.Close();
        }

    }
    }