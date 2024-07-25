using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EShop.Admin_dash
{
    public partial class Admin_Logout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) {
                if (Session["AdminUser"] != null) {

                   // Session["AdminUser"] = null;
                    Session.Abandon();
                    Response.Redirect("../Admin_Login.aspx");
                }
            }    

        }
    }
}