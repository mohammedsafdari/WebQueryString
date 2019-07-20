<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Page.aspx.cs" Inherits="WebQueryString.Page1" %>

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
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Page2.aspx">&gt;&gt;&gt;</asp:HyperLink>
        </div>
    </form>
</body>
</html>
