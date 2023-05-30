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
    public partial class AdminDelete : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyCon"].ConnectionString);
        SqlCommand cmd = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
            if (Request.QueryString["type"] != null)
            {
                if (Request.QueryString["type"].ToString() == "Member" && Request.QueryString["id"] != null)
                {
                    cmd = new SqlCommand("delete from members where id = @id", con);
                    cmd.Parameters.AddWithValue("@id", Convert.ToInt32(Request.QueryString["id"]));
                    cmd.ExecuteNonQuery();
                    cmd = new SqlCommand("delete from trainer_member where member_id = @id", con);
                    cmd.Parameters.AddWithValue("@id", Convert.ToInt32(Request.QueryString["id"]));
                    cmd.ExecuteNonQuery();
                    Response.Write("<script>alert('Member Deleted Successfully..')</script>");
                    con.Close();
                    Server.Transfer("view_members.aspx");
                }

                if (Request.QueryString["type"].ToString() == "Allocation" && Request.QueryString["mid"] != null && Request.QueryString["tid"] != null)
                {
                    cmd = new SqlCommand("delete from trainer_member where member_id = @mid", con);
                    cmd.Parameters.AddWithValue("@mid", Convert.ToInt32(Request.QueryString["mid"]));
                    cmd.ExecuteNonQuery();
                    Response.Write("<script>alert('Member Allocation Deleted Successfully..')</script>");
                    Server.Transfer("view_coach_member.aspx");
                }
                else if (Request.QueryString["type"].ToString() == "Trainer" && Request.QueryString["id"] != null)
                {
                    cmd = new SqlCommand("delete from trainer where id = @id", con);
                    cmd.Parameters.AddWithValue("@id", Convert.ToInt32(Request.QueryString["id"]));
                    cmd.ExecuteNonQuery();
                    cmd = new SqlCommand("delete from trainer_member where trainer_id = @tid", con);
                    cmd.Parameters.AddWithValue("@tid", Convert.ToInt32(Request.QueryString["id"]));
                    cmd.ExecuteNonQuery();
                    Response.Write("<script>alert('Trainer Deleted Successfully..')</script>");
                    Server.Transfer("view_coach_member.aspx");
                }
            }
           
        }
    }
}
