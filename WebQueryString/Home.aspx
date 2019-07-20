<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="WebQueryString.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            HOME PAGE<br />
            <br />
            <br />
            <asp:Label ID="lblSessionId" runat="server" Text="Label"></asp:Label>
            <br />
            <br />
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Session.aspx">Back&lt;&lt;</asp:HyperLink>
        </div>
    </form>
</body>
</html>
