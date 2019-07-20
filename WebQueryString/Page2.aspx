<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Page2.aspx.cs" Inherits="WebQueryString.Page2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        &nbsp;Session Clicks:
            <asp:Label ID="lblSC" runat="server" Text="Label"></asp:Label>
            <br />
            <br />
            <br />
            Application Clicks:
            <asp:Label ID="lblAC" runat="server" Text="Label"></asp:Label>
            <br />
            <br />
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Page.aspx">&lt;&lt;&lt;</asp:HyperLink>
            <br />
        </div>
    </form>
</body>
</html>
