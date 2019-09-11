<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Alta.aspx.cs" Inherits="Alta" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        Articulo:<asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SDRubro" DataTextField="desc_articulo" DataValueField="cod_articulo">
        </asp:DropDownList>
        <p>
            Tipo venta:<asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SDFactura" DataTextField="desc_tipo_factura" DataValueField="cod_tipo_factura">
            </asp:DropDownList>
        </p>
        Detalle:<asp:TextBox ID="TextBox1" runat="server" Width="195px">Ingrese texto</asp:TextBox>
        <asp:SqlDataSource ID="SDVentas" runat="server" ConnectionString="<%$ ConnectionStrings:PARCIAL1ConnectionString %>" SelectCommand="SELECT * FROM [Ventas]" InsertCommand="INSERT INTO Ventas (detalle_venta, cod_articulo, cod_tipo_factura) VALUES (@detalle_venta, @cod_articulo, @cod_tipo_factura) ">
            <InsertParameters>
                <asp:Parameter Name="detalle_venta" />
                <asp:Parameter Name="cod_articulo" />
                <asp:Parameter Name="cod_tipo_factura" />
            </InsertParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SDFactura" runat="server" ConnectionString="<%$ ConnectionStrings:PARCIAL1ConnectionString %>" SelectCommand="SELECT * FROM [TiposFactura]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SDRubro" runat="server" ConnectionString="<%$ ConnectionStrings:PARCIAL1ConnectionString %>" SelectCommand="SELECT * FROM [Rubros]"></asp:SqlDataSource>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Alta" />
        <asp:Label ID="Label1" runat="server"></asp:Label>
        <p>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Default.aspx">Regresar</asp:HyperLink>
        </p>
    </form>
</body>
</html>
