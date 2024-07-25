using System;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Data;

namespace EShop
{
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection _con = new SqlConnection(WebConfigurationManager.ConnectionStrings["constr"].ToString());
        SqlCommand cmd;
        SqlDataAdapter adp;
        DataTable dt;

        protected void Page_Load(object sender, EventArgs e)
        {


        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {

        }

        protected void LoginButton_Click(object sender, EventArgs e)
        {
            try
            {
                cmd = new SqlCommand("_proUserLogin", _con);
                adp = new SqlDataAdapter(cmd);
                dt = new DataTable();
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@userEmailUsername",txtEmailUsername.Text);
                cmd.Parameters.AddWithValue("@password", txtPassword.Text);
                adp.Fill(dt);

                if (dt.Rows.Count > 0)
                {
                    Response.Write("<script>alert('You are Login')</script>");
                    Response.Redirect("./Default.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Check Username and password')</script>");
                }
            }
            catch (Exception ex) { Response.Write(ex.Message); }
        }
    }
}