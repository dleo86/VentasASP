using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class Buscar : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }



    protected void Button1_Click(object sender, EventArgs e)
    {
        DSVentas.SelectParameters["nro_venta"].DefaultValue = TextBox1.Text;
        DSVentas.DataSourceMode = SqlDataSourceMode.DataReader;
        SqlDataReader registros = (SqlDataReader)DSVentas.Select(DataSourceSelectArguments.Empty);
        this.Label1.Text = "";
        while (registros.Read() == true)
        {
            Label1.Text = Label1.Text + registros["detalle_venta"] + " ";
        }
    }
}