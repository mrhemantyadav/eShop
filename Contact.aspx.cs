using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;
namespace EShop
{
    public partial class Contact : System.Web.UI.Page
    {
        SqlConnection _con = new SqlConnection(WebConfigurationManager.ConnectionStrings["constr"].ToString());



        protected void Page_Load(object sender, EventArgs e)
        {

        }

        private void ClearText()
        {

            txtName.Text = string.Empty;
            txtEmail.Text = string.Empty;
            DropDownList1.Items.Clear();
            txtMessage.Text = string.Empty;

        }
        protected void ContactButton_Click(object sender, EventArgs e)
        {
            try
            {
                SqlCommand cmd = new SqlCommand("_insertContact", _con);

                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@name", txtName.Text);
                cmd.Parameters.AddWithValue("@email", txtEmail.Text);
                cmd.Parameters.AddWithValue("@subject", DropDownList1.SelectedValue);
                cmd.Parameters.AddWithValue("@message", txtMessage.Text);
                if (_con.State == ConnectionState.Closed)
                {
                    _con.Open();
                }

                //SqlDataAdapter adp = new SqlDataAdapter(cmd);
                //DataTable dt = new DataTable();
                //adp.Fill(dt);

                //Response.Write(dt.Rows.Count);
                //if (dt.Rows.Count > 0)
                //{
                //    Response.Write("<script>alert('successs')</script>");
                //    ClearText();
                //}


                int succes = (int)cmd.ExecuteNonQuery();
                if (succes > 0)
                {
                    Response.Write("<script>alert('successs')</script>");
                    ClearText();
                }
            }
            catch (Exception ex) { Response.Write(ex.Message); }
            finally { _con.Close(); }
        }
    }
}