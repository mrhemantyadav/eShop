using System;
using System.Data.SqlClient;
using System.Data;
using System.Web.Configuration;

namespace EShop
{
    public partial class ForgetPassword : System.Web.UI.Page
    {
        SqlConnection _con = new SqlConnection(WebConfigurationManager.ConnectionStrings["constr"].ToString());
        SqlCommand cmd;
        SqlDataAdapter adp;
        DataTable dt;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ForgetButton_Click(object sender, EventArgs e)
        {
            CheckDuplicateUser();
        }
        private void CheckDuplicateUser()
        {
            try
            {
                cmd = new SqlCommand("_proUserFindEmailPass", _con);
                adp = new SqlDataAdapter(cmd);
                dt = new DataTable();
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@userEmailUsername", txtEmailUsername.Text);

                adp.Fill(dt);

                if (dt.Rows.Count > 0)
                {
                    Response.Write("<script> alert('Your email and user name dinfn') </script>");
                    UserChangePassword();
                }
                else
                {
                    Response.Write("<script> alert('Not found Email and Password') </script>");
                    Response.Redirect("./Register.aspx");                    
                }
            }
            catch (Exception ex) { Response.Write(ex.Message); }

        }


        private void UserChangePassword()
        {

            try
            {
                cmd = new SqlCommand("_proUserChangePassword", _con);
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@userEmailUsername", txtEmailUsername.Text);
                cmd.Parameters.AddWithValue("@password", txtNewPassword.Text);

                if (_con.State == ConnectionState.Closed)
                {
                    _con.Open();
                }
                int sucess = (int)cmd.ExecuteNonQuery();
                if (sucess > 0)
                {
                    Response.Write("<script> alert('Changed Password') </script>");
                    ClearText();
                    Response.Redirect("Default.aspx");
                }
            }
            catch (Exception ex) { Response.Write(ex.Message); }
            finally { _con.Close(); }
        }

        private void ClearText()
        {
            txtEmailUsername.Text = string.Empty;
            txtNewPassword.Text = string.Empty;
            txtConfirmPass.Text = string.Empty;

        }
    }

}
