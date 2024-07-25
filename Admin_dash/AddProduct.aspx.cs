using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Web.DynamicData;
using System.Web.UI.WebControls;

namespace EShop.Admin_dash
{
    public partial class AddProduct : System.Web.UI.Page
    {
        SqlConnection _con = new SqlConnection(WebConfigurationManager.ConnectionStrings["constr"].ToString());
        SqlCommand cmd;
        SqlDataAdapter adp;
        DataTable dt;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                SelectCategory();
            }

        }
        private void SelectCategory()
        {
            adp = new SqlDataAdapter("viewCategory", _con);
            dt = new DataTable();
            adp.Fill(dt);

            CategoryDropDownList1.DataSource = dt;
            CategoryDropDownList1.DataTextField = "Name";
             CategoryDropDownList1.DataValueField = "Name";


            CategoryDropDownList1.DataBind();

            CategoryDropDownList1.Items.Insert(0, new ListItem("-- Select Option --", "0"));

        }

        protected void CategoryDropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                cmd = new SqlCommand("ViewSubCategory", _con);

                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@cname", CategoryDropDownList1.SelectedValue);
                adp = new SqlDataAdapter(cmd);
                dt = new DataTable();
                adp.Fill(dt);

                SubCategoryDropDownList2.DataSource = dt;
                SubCategoryDropDownList2.DataTextField = "SubName";
                SubCategoryDropDownList2.DataValueField = "SubName";


                SubCategoryDropDownList2.DataBind();

                SubCategoryDropDownList2.Items.Insert(0, new ListItem("-- Select Sub Option --", "0"));

            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }         

        }

        protected void AddProductButton_Click(object sender, EventArgs e)
        {
            AddProducts();

        }

        private void AddProducts()
        {
            try
            {
                cmd = new SqlCommand("_addProduct", _con);

                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@cname", CategoryDropDownList1.SelectedValue);
                cmd.Parameters.AddWithValue("@SubName", SubCategoryDropDownList2.SelectedValue);
                cmd.Parameters.AddWithValue("@pName", txtAddProductName.Text);
                cmd.Parameters.AddWithValue("@pPrice", txtAddProductPrice.Text);
                cmd.Parameters.AddWithValue("@pSpecification",txtAddProductSpecification.Text);

                string path = Guid.NewGuid() + FileUpload1.FileName;        
                
                cmd.Parameters.AddWithValue("@pImg", path.ToString());

                if (_con.State == ConnectionState.Closed)
                {
                    _con.Open();
                }

                int affected = (int)cmd.ExecuteNonQuery();

                if (affected > 0)
                {
                    Response.Write("<script>alert('Create Successfully')</script>");                   
                }
                else
                {
                    Response.Write("<script>alert('somthing went wrong')</script>");
                }
            }
            catch (SqlException ex) { Response.Write(ex.Message); }
            finally { _con.Close(); }
        }
    }
}