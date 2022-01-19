<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Hospital.aspx.cs" Inherits="Assessment_4.Hospital" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:CommandField NewText="Insert" ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="Doc_Id" HeaderText="Doc_Id" SortExpression="Doc_Id" />
            <asp:BoundField DataField="Hos_Name" HeaderText="Hos_Name" SortExpression="Hos_Name" />
            <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
            <asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country" />
            <asp:BoundField DataField="Start_Date" HeaderText="Start_Date" SortExpression="Start_Date" />
            <asp:BoundField DataField="End_Date" HeaderText="End_Date" SortExpression="End_Date" />
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [Hospital] WHERE [Id] = @original_Id AND [Doc_Id] = @original_Doc_Id AND [Hos_Name] = @original_Hos_Name AND [City] = @original_City AND [Country] = @original_Country AND [Start_Date] = @original_Start_Date AND [End_Date] = @original_End_Date" InsertCommand="INSERT INTO [Hospital] ([Doc_Id], [Hos_Name], [City], [Country], [Start_Date], [End_Date]) VALUES (@Doc_Id, @Hos_Name, @City, @Country, @Start_Date, @End_Date)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Hospital]" UpdateCommand="UPDATE [Hospital] SET [Doc_Id] = @Doc_Id, [Hos_Name] = @Hos_Name, [City] = @City, [Country] = @Country, [Start_Date] = @Start_Date, [End_Date] = @End_Date WHERE [Id] = @original_Id AND [Doc_Id] = @original_Doc_Id AND [Hos_Name] = @original_Hos_Name AND [City] = @original_City AND [Country] = @original_Country AND [Start_Date] = @original_Start_Date AND [End_Date] = @original_End_Date">
        <DeleteParameters>
            <asp:Parameter Name="original_Id" Type="Int32" />
            <asp:Parameter Name="original_Doc_Id" Type="Int32" />
            <asp:Parameter Name="original_Hos_Name" Type="String" />
            <asp:Parameter Name="original_City" Type="String" />
            <asp:Parameter Name="original_Country" Type="String" />
            <asp:Parameter DbType="Date" Name="original_Start_Date" />
            <asp:Parameter DbType="Date" Name="original_End_Date" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Doc_Id" Type="Int32" />
            <asp:Parameter Name="Hos_Name" Type="String" />
            <asp:Parameter Name="City" Type="String" />
            <asp:Parameter Name="Country" Type="String" />
            <asp:Parameter DbType="Date" Name="Start_Date" />
            <asp:Parameter DbType="Date" Name="End_Date" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Doc_Id" Type="Int32" />
            <asp:Parameter Name="Hos_Name" Type="String" />
            <asp:Parameter Name="City" Type="String" />
            <asp:Parameter Name="Country" Type="String" />
            <asp:Parameter DbType="Date" Name="Start_Date" />
            <asp:Parameter DbType="Date" Name="End_Date" />
            <asp:Parameter Name="original_Id" Type="Int32" />
            <asp:Parameter Name="original_Doc_Id" Type="Int32" />
            <asp:Parameter Name="original_Hos_Name" Type="String" />
            <asp:Parameter Name="original_City" Type="String" />
            <asp:Parameter Name="original_Country" Type="String" />
            <asp:Parameter DbType="Date" Name="original_Start_Date" />
            <asp:Parameter DbType="Date" Name="original_End_Date" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:Label ID="Label1" runat="server" Text="Search here"></asp:Label>
&nbsp;
    <input id="txt" type="text" />&nbsp;&nbsp;
    <asp:Button ID="Button1" runat="server" PostBackUrl="~/Hospital.aspx" Text="Search" />
    <br />
</asp:Content>
