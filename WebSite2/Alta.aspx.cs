using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class Alta : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        this.SDVentas.InsertParameters["detalle_venta"].DefaultValue = this.TextBox1.Text;  
        this.SDVentas.InsertParameters["cod_articulo"].DefaultValue = DropDownList1.SelectedValue; 
        this.SDVentas.InsertParameters["cod_tipo_factura"].DefaultValue = DropDownList2.SelectedValue;
        this.SDVentas.Insert();
        Label1.Text = "Los datos fueron cargados";
        this.TextBox1.Text = "";
       
    }

    
}