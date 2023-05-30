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
    public partial class trainer_view_members : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyCon"].ConnectionString);
        SqlCommand cmd = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            getUser("");
        }
        public void getUser(string SearchMember)
        {
            con.Open();

            SqlDataAdapter da = new SqlDataAdapter("select * from members inner join trainer_member on trainer_member.member_id = members.id where trainer_id ="+Convert.ToInt32(Session["TrainerId"])+"", con);

            DataTable dt = new DataTable();

            da.Fill(dt);

            RepeaterDB.DataSource = dt;

            RepeaterDB.DataBind();

            con.Close();
        }

    }
}