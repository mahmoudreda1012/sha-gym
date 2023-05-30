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
    public partial class view_coach_member : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyCon"].ConnectionString);
        SqlCommand cmd = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            getAllocations("select members.id as memberid, members.email as temail,members.name as tname,trainer.id as  trainerid ,trainer.email as memail,trainer.name as mname from trainer inner join trainer_member on trainer.id = trainer_member.trainer_id inner join members on trainer_member.member_id = members.id ");
        }
        public void getAllocations(string query)
        {
            con.Open();

            SqlDataAdapter da = new SqlDataAdapter(query, con);

            DataTable dt = new DataTable();

            da.Fill(dt);

            RepeaterDB.DataSource = dt;

            RepeaterDB.DataBind();

            con.Close();
        }
    }
}