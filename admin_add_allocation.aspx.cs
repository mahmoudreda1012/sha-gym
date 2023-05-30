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
    public partial class admin_add_allocation : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyCon"].ConnectionString);
        SqlCommand cmd = null;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnAllocate_Click(object sender, EventArgs e)
        {
            con.Open();

            cmd = new SqlCommand("select * from trainer_member where trainer_id = @traineremail and member_id = @memberemail", con);

            cmd.Parameters.AddWithValue("@traineremail", DropDownTrainer.SelectedValue);

            cmd.Parameters.AddWithValue("@memberemail", DropDownMember.SelectedValue);

            SqlDataAdapter da = new SqlDataAdapter(cmd);

            DataTable dt = new DataTable();

            da.Fill(dt);

            if (dt.Rows.Count >= 1)
            {
                Response.Write("<script>alert('Already Allocated..')</script>");
            }
            else
            {
                cmd = new SqlCommand("insert into trainer_member (trainer_id,member_id) values (@traineremail,@memberemail)", con);

                cmd.Parameters.AddWithValue("@traineremail", DropDownTrainer.SelectedValue);

                cmd.Parameters.AddWithValue("@memberemail", DropDownMember.SelectedValue);

                cmd.ExecuteNonQuery();

                Response.Write("<script>alert('Allocation Successfully..')</script>");
            }

            con.Close();
        }
    }
}