<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cookie2.aspx.cs" Inherits="WebQueryString.Cookie2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Label ID="lblName" runat="server" Text="Name"></asp:Label>
        <br />
        <asp:Label ID="lblAge" runat="server" Text="Age"></asp:Label>
        <br />
        <asp:Label ID="lblCity" runat="server" Text="City"></asp:Label>
        <br />
        <br />
        <br />
        <asp:Label ID="lblColour" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="X-Large" Text="Label"></asp:Label>
        <br />
        <asp:Button ID="btnPostBack" runat="server" Text="PostBack" />
    </form>
</body>
</html>
