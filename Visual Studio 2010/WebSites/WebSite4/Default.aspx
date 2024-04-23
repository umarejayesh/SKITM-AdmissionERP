<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<title>Connect Ms Access Database in Asp.net using C#, VB.NET</title>
</head>
<body>
<form id="form1" runat="server">
<div>
<table align="center">

<tr>
<td>UserName:</td>
<td><asp:TextBox ID="txtUsername" runat="server"/></td>
</tr>
<tr>
<td>Education:</td>
<td><asp:TextBox ID="txtEducation" runat="server"/></td>
</tr>
<tr>
<td>Location:</td>
<td><asp:TextBox ID="txtLocation" runat="server"/></td>
</tr>
<tr>
<td>Mobile:</td>
<td><asp:TextBox ID="txtMobile" runat="server"/></td>
</tr>
<tr>
<td></td>
<td><asp:Button ID="btnSubmit" Text="Submit" runat="server" 
        onclick="btnSubmit_Click"/></td>
</tr>
<tr>
<td><b>UserDetails:</b></td>
<td>
<asp:GridView ID="gvDetails" runat="server"></asp:GridView>
</td>
</tr>
<tr>
<td>

<asp:FileUpload ID="FileUpload1" runat="server" />
<asp:Button ID="Button1" runat="server" Text="Upload" onclientclick="Button1_Click" 
        onclick="Button1_Click"/>

    <br />
    <br />
    <asp:DropDownList ID="DropDownList1" runat="server" 
        onselectedindexchanged="DropDownList1_SelectedIndexChanged">
        <asp:ListItem>Jayesh Umre</asp:ListItem>
        <asp:ListItem>Kunal Batra</asp:ListItem>
        <asp:ListItem>Ritesh Bhalerao</asp:ListItem>
    </asp:DropDownList>

<tr>
<td>
<asp:Image ID="Image1" runat="server" />
</td>
</tr>
 </td>
 </tr>


</table>
  
</div>
</form>
</body>
</html>
