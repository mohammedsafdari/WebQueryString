<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DragAndDrop.aspx.cs" Inherits="WebQueryString.DragAndDrop" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="EmpId" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" PageSize="5">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:CommandField ButtonType="Button" ShowEditButton="True" />
                    <asp:CommandField ButtonType="Button" ShowDeleteButton="True" />
                    <asp:BoundField DataField="EmpId" HeaderText="EmpId" InsertVisible="False" ReadOnly="True" SortExpression="EmpId" />
                    <asp:BoundField DataField="EmpName" HeaderText="EmpName" SortExpression="EmpName" />
                    <asp:BoundField DataField="Salary" HeaderText="Salary" SortExpression="Salary" />
                    <asp:BoundField DataField="did" HeaderText="did" SortExpression="did" />
                    <asp:BoundField DataField="DoJ" HeaderText="DoJ" SortExpression="DoJ" />
                    <asp:BoundField DataField="age" HeaderText="age" SortExpression="age" />
                    <asp:BoundField DataField="lastname" HeaderText="lastname" SortExpression="lastname" />
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:DotNETJun2019ConnectionString %>" DeleteCommand="DELETE FROM [EmpTable] WHERE [EmpId] = @original_EmpId AND [EmpName] = @original_EmpName AND (([Salary] = @original_Salary) OR ([Salary] IS NULL AND @original_Salary IS NULL)) AND (([did] = @original_did) OR ([did] IS NULL AND @original_did IS NULL)) AND (([DoJ] = @original_DoJ) OR ([DoJ] IS NULL AND @original_DoJ IS NULL)) AND (([age] = @original_age) OR ([age] IS NULL AND @original_age IS NULL)) AND (([lastname] = @original_lastname) OR ([lastname] IS NULL AND @original_lastname IS NULL))" InsertCommand="INSERT INTO [EmpTable] ([EmpName], [Salary], [did], [DoJ], [age], [lastname]) VALUES (@EmpName, @Salary, @did, @DoJ, @age, @lastname)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [EmpTable] ORDER BY [EmpId]" UpdateCommand="UPDATE [EmpTable] SET [EmpName] = @EmpName, [Salary] = @Salary, [did] = @did, [DoJ] = @DoJ, [age] = @age, [lastname] = @lastname WHERE [EmpId] = @original_EmpId AND [EmpName] = @original_EmpName AND (([Salary] = @original_Salary) OR ([Salary] IS NULL AND @original_Salary IS NULL)) AND (([did] = @original_did) OR ([did] IS NULL AND @original_did IS NULL)) AND (([DoJ] = @original_DoJ) OR ([DoJ] IS NULL AND @original_DoJ IS NULL)) AND (([age] = @original_age) OR ([age] IS NULL AND @original_age IS NULL)) AND (([lastname] = @original_lastname) OR ([lastname] IS NULL AND @original_lastname IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_EmpId" Type="Int32" />
                    <asp:Parameter Name="original_EmpName" Type="String" />
                    <asp:Parameter Name="original_Salary" Type="Double" />
                    <asp:Parameter Name="original_did" Type="Int32" />
                    <asp:Parameter Name="original_DoJ" Type="DateTime" />
                    <asp:Parameter Name="original_age" Type="Int32" />
                    <asp:Parameter Name="original_lastname" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="EmpName" Type="String" />
                    <asp:Parameter Name="Salary" Type="Double" />
                    <asp:Parameter Name="did" Type="Int32" />
                    <asp:Parameter Name="DoJ" Type="DateTime" />
                    <asp:Parameter Name="age" Type="Int32" />
                    <asp:Parameter Name="lastname" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="EmpName" Type="String" />
                    <asp:Parameter Name="Salary" Type="Double" />
                    <asp:Parameter Name="did" Type="Int32" />
                    <asp:Parameter Name="DoJ" Type="DateTime" />
                    <asp:Parameter Name="age" Type="Int32" />
                    <asp:Parameter Name="lastname" Type="String" />
                    <asp:Parameter Name="original_EmpId" Type="Int32" />
                    <asp:Parameter Name="original_EmpName" Type="String" />
                    <asp:Parameter Name="original_Salary" Type="Double" />
                    <asp:Parameter Name="original_did" Type="Int32" />
                    <asp:Parameter Name="original_DoJ" Type="DateTime" />
                    <asp:Parameter Name="original_age" Type="Int32" />
                    <asp:Parameter Name="original_lastname" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
