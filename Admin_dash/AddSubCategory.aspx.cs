using System;
using System.Data.SqlClient;
using System.Data;
using System.Web.Configuration;
using System.Web.UI.WebControls;

namespace EShop.Admin_dash
{
    public partial class AddSubCategory : System.Web.UI.Page
    {
        SqlConnection _con = new SqlConnection(WebConfigurationManager.ConnectionStrings["constr"].ToString());
        SqlCommand cmd;
        SqlDataAdapter adp;
        DataTable dt;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["AdminUser"] == null)
                {
                    Response.Redirect("~/Admin_Login.aspx");
                }
                FillCategory();
                ShowSubCategory();
            }
        }

        private void ShowSubCategory()
        {
            cmd = new SqlCommand("viewSubCategoryVSC", _con);
            adp = new SqlDataAdapter(cmd);
            dt = new DataTable();
            adp.Fill(dt);

            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
        private void FillCategory()
        {
            cmd = new SqlCommand("viewCategory", _con);
            adp = new SqlDataAdapter(cmd);
            dt = new DataTable();
            adp.Fill(dt);
            Bind();
        }
        private void Bind()
        {
            CategoryDropDownList1.DataSource = dt;
            CategoryDropDownList1.DataTextField = "Name";
            CategoryDropDownList1.DataValueField = "Name";
            CategoryDropDownList1.DataBind();
            CategoryDropDownList1.Items.Insert(0, new ListItem(" -- Select Option --", "{0}"));
        }
        protected void AddSubCategoryButton_Click(object sender, EventArgs e)
        {
            AddSubCategoryASC();
            FillCategory();
            ShowSubCategory();
        }

        private void AddSubCategoryASC()
        {
            try
            {
                cmd = new SqlCommand("AddSubCategory", _con);

                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@cname", CategoryDropDownList1.SelectedValue);
                cmd.Parameters.AddWithValue("@SubName", addSubCategory.Text.Trim());

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


            void ResetText()
            {
                CategoryDropDownList1.ClearSelection();
                addSubCategory.Text = string.Empty;
            }

        }


    }
}