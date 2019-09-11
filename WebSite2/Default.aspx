<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

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
        <p>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Alta.aspx">Dar de alta</asp:HyperLink>
        </p>
        <p>
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Buscar.aspx">Buscar</asp:HyperLink>
        </p>
        <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Baja.aspx">Dar de baja</asp:HyperLink>
    </form>
</body>
</html>
