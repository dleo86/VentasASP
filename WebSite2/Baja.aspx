<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Baja.aspx.cs" Inherits="Baja" %>

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
        Articulo a borrar:<asp:TextBox ID="TextBox1" runat="server" Width="154px"></asp:TextBox>
&nbsp;<asp:SqlDataSource ID="DSRubro" runat="server" ConnectionString="<%$ ConnectionStrings:PARCIAL1ConnectionString %>" SelectCommand="SELECT cod_articulo FROM Rubros WHERE desc_articulo = @desc_articulo " DeleteCommand="DELETE FROM Rubros WHERE desc_articulo = @desc_articulo ">
            <DeleteParameters>
                <asp:Parameter Name="desc_articulo" />
            </DeleteParameters>
            <SelectParameters>
                <asp:Parameter Name="desc_articulo" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Borrar" />
        <asp:Label ID="Label1" runat="server"></asp:Label>
        <p>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Default.aspx">Regresar</asp:HyperLink>
        </p>
    </form>
</body>
</html>
