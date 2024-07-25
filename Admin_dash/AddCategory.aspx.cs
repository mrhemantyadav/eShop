using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Runtime.InteropServices;


namespace EShop.Admin_dash
{
    public partial class AddCategory : System.Web.UI.Page
    {
        SqlConnection _con = new SqlConnection(WebConfigurationManager.ConnectionStrings["constr"].ToString());
        SqlCommand cmd;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void AddCategoryButton_Click(object sender, EventArgs e)
        {

            AddCategoryAC();

        }

        private void AddCategoryAC()
        {
            try
            {
                cmd = new SqlCommand("AddCategory", _con);

                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@name", addCategory.Text.Trim());

                if (_con.State == ConnectionState.Closed)
                {
                    _con.Open();
                }

                int affected = (int)cmd.ExecuteNonQuery();

                if (affected > 0)
                {
                    Response.Write("<script>alert('Create Successfully')</script>");
                    ResetText();
                }
                else
                {
                    Response.Write("<script>alert('somthing went wrong')</script>");
                }

            }
            catch (SqlException ex) { Response.Write(ex.Message); }
            finally { _con.Close(); }

        }

        private void ResetText() 
        {
            addCategory.Text= string.Empty;
        }
    }
}