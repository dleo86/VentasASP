using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class Baja : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        DSRubro.DeleteParameters["desc_articulo"].DefaultValue = TextBox1.Text;
        int cant;
        cant = DSRubro.Delete();
        if (cant == 0)
            this.Label1.Text = "No existe el articulo ingresado";
        else
        {
            this.Label1.Text = "Se borro el articulo";
            DSRubro.SelectParameters["desc_articulo"].DefaultValue = TextBox1.Text;

        }
    }
}