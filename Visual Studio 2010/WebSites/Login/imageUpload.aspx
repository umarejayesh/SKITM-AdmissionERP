﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="imageUpload.aspx.cs" Inherits="imageUpload" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:FileUpload ID="FileUpload1" runat="server" />
&nbsp;
        <asp:Button ID="btnUpload" runat="server" Text="Upload File" 
            onclick="btnUpload_Click" style="height: 26px" />
        <br />
        <br />
        <br />
        <asp:Label ID="lblMessage" runat="server" Font-Bold = "True"  ></asp:Label>
    
    </div>
    </form>
</body>
</html>
