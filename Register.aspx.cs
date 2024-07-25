using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;
namespace EShop
{
    public partial class Register : System.Web.UI.Page
    {
        SqlConnection _con = new SqlConnection(WebConfigurationManager.ConnectionStrings["constr"].ToString());
        SqlCommand cmd;
        SqlDataAdapter adp;
        DataTable dt;
        string UserEmailUsername;
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void RegisterButton_Click(object sender, EventArgs e)
        {

            CheckDuplicateUser();
        }

        //Check Duplicate User that time when doing register 
        private void CheckDuplicateUser()
        {
            try
            {
                cmd = new SqlCommand("_proUserFindEmailPass", _con);
                adp = new SqlDataAdapter(cmd);
                dt = new DataTable();

                cmd.CommandType = CommandType.StoredProcedure;

               /// cmd.Parameters.AddWithValue("@email", txtEmail.Text);
               /// cmd.Parameters.AddWithValue("@uName", txtUserName.Text);

                if (txtEmail.Text != null)
                {
                    UserEmailUsername = txtEmail.Text;
                }
                else if (txtUserName.Text != null)
                {
                    UserEmailUsername = txtUserName.Text;
                }
                else if (txtEmail.Text != null && txtUserName.Text != null) 
                {
                    UserEmailUsername = txtUserName.Text;
                }
                cmd.Parameters.AddWithValue("@userEmailUsername", UserEmailUsername);

                adp.Fill(dt);

                if (dt.Rows.Count > 0)
                {
                    Response.Write("<script>alert('Already Account')</script>");
                   // Response.Redirect("./Login.aspx");
                }
                else
                {
                    UserRegister();
                }
            }
            catch (Exception ex) { Response.Write(ex.Message); }
        }

        private void UserRegister()
        {
            try
            {
                cmd = new SqlCommand("_prouserRegister", _con);
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@fName", txtFirstName.Text);
                cmd.Parameters.AddWithValue("@lName", txtLastName.Text);
                cmd.Parameters.AddWithValue("@email", txtEmail.Text);
                cmd.Parameters.AddWithValue("@uName", txtUserName.Text);
                cmd.Parameters.AddWithValue("@mobileNo", txtMobileNo.Text);
                cmd.Parameters.AddWithValue("@password", txtPassword.Text);
                if (_con.State == ConnectionState.Closed)
                {
                    _con.Open();
                }
                int sucess = (int)cmd.ExecuteNonQuery();
                if (sucess > 0)
                {
                    Response.Write("<script> alert('successs') </script>");
                    ClearText();
                    Response.Redirect("Default.aspx");
                }
            }
            catch (Exception ex) { Response.Write(ex.Message); }
            finally { _con.Close(); }
        }
        private void ClearText()
        {
            txtFirstName.Text = string.Empty;
            txtLastName.Text = string.Empty;
            txtEmail.Text = string.Empty;
            txtUserName.Text = string.Empty;
            txtMobileNo.Text = string.Empty;
            txtPassword.Text = string.Empty;
            txtConfirmPass.Text = string.Empty;
            txtEmail.Text = string.Empty;
        }
    }
}