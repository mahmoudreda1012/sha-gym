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
    public partial class admin_delete_coach : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyCon"].ConnectionString);
        SqlCommand cmd = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
            cmd = new SqlCommand("delete from trainer where id = @mid", con);
            cmd.Parameters.AddWithValue("@mid", Convert.ToInt32(Request.QueryString["id"]));
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Coach Deleted Successfully..')</script>");
            con.Close();
            Server.Transfer("view_Coaches.aspx");
        }
    }
}