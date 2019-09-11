<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Buscar.aspx.cs" Inherits="Buscar" %>

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
        Ingrese nro de venta:<asp:TextBox ID="TextBox1" runat="server">Ingrese nro</asp:TextBox>
        <asp:SqlDataSource ID="DSVentas" runat="server" ConnectionString="<%$ ConnectionStrings:PARCIAL1ConnectionString %>"  SelectCommand="SELECT detalle_venta FROM Ventas WHERE nro_venta = @nro_venta ">
            <SelectParameters>
                <asp:Parameter DefaultValue="1" Name="nro_venta" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="DSFactura" runat="server" ConnectionString="<%$ ConnectionStrings:PARCIAL1ConnectionString %>" SelectCommand="SELECT * FROM [TiposFactura]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="DSRubro" runat="server" ConnectionString="<%$ ConnectionStrings:PARCIAL1ConnectionString %>" SelectCommand="SELECT * FROM [Rubros]"></asp:SqlDataSource>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Buscar" />
        <p>
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </p>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Default.aspx">Regresar</asp:HyperLink>
    </form>
</body>
</html>
