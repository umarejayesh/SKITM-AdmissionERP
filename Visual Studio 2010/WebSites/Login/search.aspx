<%@ Page Language="C#" AutoEventWireup="true" CodeFile="search.aspx.cs" Inherits="search" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="margin-left: 40px">
    
        <asp:TextBox ID="TextBox1" runat="server" Width="197px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Text="Search" />
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" 
            CellPadding="4" DataSourceID="AccessDataSource1" 
            EmptyDataText="There are no data records to display.">
            <Columns>
                <asp:BoundField DataField="UserId" HeaderText="UserId" 
                    SortExpression="UserId" />
                <asp:BoundField DataField="StudentName" HeaderText="StudentName" 
                    SortExpression="StudentName" />
                <asp:BoundField DataField="EnrolmentNo" HeaderText="EnrolmentNo" 
                    SortExpression="EnrolmentNo" />
                <asp:BoundField DataField="PresentAddress" HeaderText="PresentAddress" 
                    SortExpression="PresentAddress" />
                <asp:BoundField DataField="MobileNo1" HeaderText="MobileNo1" 
                    SortExpression="MobileNo1" />
                <asp:BoundField DataField="MobileNo2" HeaderText="MobileNo2" 
                    SortExpression="MobileNo2" />
                <asp:BoundField DataField="EmailID" HeaderText="EmailID" 
                    SortExpression="EmailID" />
                <asp:BoundField DataField="NameOfFather" HeaderText="NameOfFather" 
                    SortExpression="NameOfFather" />
                <asp:BoundField DataField="MotherName" HeaderText="MotherName" 
                    SortExpression="MotherName" />
                <asp:BoundField DataField="FatherEducation" HeaderText="FatherEducation" 
                    SortExpression="FatherEducation" />
                <asp:BoundField DataField="FatherOccupation" HeaderText="FatherOccupation" 
                    SortExpression="FatherOccupation" />
                <asp:BoundField DataField="PermanentAddress" HeaderText="PermanentAddress" 
                    SortExpression="PermanentAddress" />
                <asp:BoundField DataField="ParentsPhoneNo" HeaderText="ParentsPhoneNo" 
                    SortExpression="ParentsPhoneNo" />
                <asp:BoundField DataField="MobileNo" HeaderText="MobileNo" 
                    SortExpression="MobileNo" />
            </Columns>
            <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
            <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#330099" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
            <SortedAscendingCellStyle BackColor="#FEFCEB" />
            <SortedAscendingHeaderStyle BackColor="#AF0101" />
            <SortedDescendingCellStyle BackColor="#F6F0C0" />
            <SortedDescendingHeaderStyle BackColor="#7E0000" />
        </asp:GridView>
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
            DataFile="E:\accessdb\CSE\Sampledb.mdb" 
            SelectCommand="SELECT [StudentName], [EnrolmentNo], [PresentAddress], [MobileNo1], [MobileNo2], [EmailID], [NameOfFather], [MotherName], [FatherEducation], [FatherOccupation], [PermanentAddress], [ParentsPhoneNo], [MobileNo], [UserId] FROM [userdetails] WHERE ([StudentName] LIKE '%' + ? + '%')">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="StudentName" 
                    PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:AccessDataSource>
        <br />
    
    </div>
    </form>
</body>
</html>
