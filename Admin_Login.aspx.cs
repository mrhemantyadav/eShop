using System;
using System.Data.SqlClient;
using System.Data;
using System.Web.Configuration;

namespace EShop
{
    public partial class Admin_Login : System.Web.UI.Page
    {
        SqlConnection _con = new SqlConnection(WebConfigurationManager.ConnectionStrings["constr"].ToString());
        SqlCommand cmd;
        SqlDataAdapter adp;
        DataTable dt;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //if (CheckBox1.Checked == true)
                //{
                //    Response.Cookies["username"].Value = txtAdminEmailUsername.Text;
                //    Response.Cookies["userpass"].Value = txtAdminPassword.Text;

                //    Response.Cookies["username"].Expires.AddSeconds(59);
                //    Response.Cookies["userpass"].Expires.AddSeconds(59);
                //}
                //else
                //{
                //    Response.Cookies["username"].Expires.AddSeconds(-1);
                //    Response.Cookies["userpass"].Expires.AddSeconds(-1);
                //}
            }
        }
        protected void AdminLoginButton_Click(object sender, EventArgs e)
        {
            Admin_LoginPage();
        }
        private void Admin_LoginPage()
        {
            try
            {
                cmd = new SqlCommand("_proAdminLogin", _con);
                adp = new SqlDataAdapter(cmd);
                dt = new DataTable();
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@adminEmailMoNoname", txtAdminEmailUsername.Text);
                cmd.Parameters.AddWithValue("@password", txtAdminPassword.Text);

                adp.Fill(dt);

                if (dt.Rows.Count > 0)
                {
                    Session["AdminUser"] = txtAdminEmailUsername.Text;
                    // Response.Write("<script>alert('You are Login')</script>");
                    Response.Redirect("Admin_dash/Admin_Index.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Check Email or Mobile Number  and password')</script>");
                }
            }
            catch (Exception ex) { Response.Write(ex.Message); }
        }
    }
}