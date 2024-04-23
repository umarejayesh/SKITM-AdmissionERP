<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            border-style: solid;
            border-width: 1px;
            padding: 1px 4px;
            width: 100%;
            height: 544px;
        }
        .style2
        {
            height: 23px;
            text-align: right;
        }
        .style3
        {
            text-align: right;
            width: 166px;
        }
        .style4
        {
            height: 23px;
            text-align: right;
            width: 166px;
        }
        .style5
        {
            text-align: right;
            width: 166px;
            height: 26px;
        }
        .style6
        {
            height: 26px;
        }
        #Reset1
        {
            width: 104px;
        }
        .style7
        {
            text-align: right;
        }
        .style9
        {
            height: 26px;
            text-align: right;
        }
        .style10
        {
            text-align: left;
        }
        .style11
        {
            height: 26px;
            text-align: left;
        }
        .style12
        {
            height: 23px;
            text-align: left;
        }
    </style>
    <script language="javascript" type="text/javascript">
// <![CDATA[

        function Submit1_onclick() {

        }

// ]]>
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <table class="style1" align="center">
        <tr>
            <td class="style3">
                User Name:</td>
            <td width="180px">
                <asp:TextBox ID="TextBox15" runat="server" Width="180px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="TextBox15" ErrorMessage="User Name Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
                Password</td>
            <td width="180px">
                <asp:TextBox ID="TextBox16" runat="server" Width="180px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="TextBox16" ErrorMessage="Password Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
                Confirm Password</td>
            <td width="180px" class="style7">
                <asp:TextBox ID="TextBox17" runat="server" Width="180px"></asp:TextBox>
            </td>
            <td class="style10">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                    ControlToValidate="TextBox17" ErrorMessage="Password Confirmation Required" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;<br />
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="TextBox16" ControlToValidate="TextBox17" 
                    ErrorMessage="Both Password Must be Same" ForeColor="Red"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
                Student Name:</td>
            <td width="180px" class="style7">
                <asp:TextBox ID="TextBox1" runat="server" Width="180px"></asp:TextBox>
            </td>
            <td class="style10">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="Student Name Required" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style5">
                Enrollment No.:</td>
            <td class="style9" width="180px">
                <asp:TextBox ID="TextBox2" runat="server" Width="180px"></asp:TextBox>
            </td>
            <td class="style11">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="Student Enrollment No Required" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style4">
                Present Address:</td>
            <td class="style2" width="180px">
                <asp:TextBox ID="TextBox3" runat="server" Width="180px"></asp:TextBox>
            </td>
            <td class="style12">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="TextBox3" ErrorMessage="Student Present Addres Required" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style5">
                Student Mobile No.:</td>
            <td class="style9" width="180px">
                <asp:TextBox ID="TextBox4" runat="server" Width="180px"></asp:TextBox>
            </td>
            <td class="style11">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="TextBox4" ErrorMessage="Student Mobile No. Required" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style4">
                Email ID :</td>
            <td class="style2" width="180px">
                <asp:TextBox ID="TextBox5" runat="server" Width="180px"></asp:TextBox>
            </td>
            <td class="style12">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                    ControlToValidate="TextBox5" ErrorMessage="Email Id Required" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;<br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="TextBox5" ErrorMessage="You must Enter the valid Email Id" 
                    ForeColor="Red" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
                Name of Mother:</td>
            <td width="180px" class="style7">
                <asp:TextBox ID="TextBox6" runat="server" Width="180px"></asp:TextBox>
            </td>
            <td class="style10">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                Mother Education:</td>
            <td width="180px" class="style7">
                <asp:TextBox ID="TextBox7" runat="server" Width="180px"></asp:TextBox>
            </td>
            <td class="style10">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                Mother Occupation:</td>
            <td width="180px" class="style7">
                <asp:TextBox ID="TextBox8" runat="server" Width="180px"></asp:TextBox>
            </td>
            <td class="style10">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                Name of Father:</td>
            <td width="180px" class="style7">
                <asp:TextBox ID="TextBox9" runat="server" Width="180px"></asp:TextBox>
            </td>
            <td class="style10">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                Father Education:</td>
            <td width="180px" class="style7">
                <asp:TextBox ID="TextBox10" runat="server" Width="180px"></asp:TextBox>
            </td>
            <td class="style10">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                Father Occupation:</td>
            <td width="180px" class="style7">
                <asp:TextBox ID="TextBox11" runat="server" Width="180px"></asp:TextBox>
            </td>
            <td class="style10">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                Permanent Address:</td>
            <td class="style9" width="180px">
                <asp:TextBox ID="TextBox12" runat="server" Width="180px"></asp:TextBox>
            </td>
            <td class="style11">
            </td>
        </tr>
        <tr>
            <td class="style3">
                Parents Phone No.:</td>
            <td width="180px">
                <asp:TextBox ID="TextBox13" runat="server" Width="180px"></asp:TextBox>
            </td>
            <td class="style10">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                Parents Mobile No.:</td>
            <td class="style6" width="180px">
                <asp:TextBox ID="TextBox14" runat="server" Width="180px"></asp:TextBox>
            </td>
            <td class="style11">
            </td>
        </tr>
        <tr>
            <td class="style3">
                State:</td>
            <td width="180px">
                <asp:DropDownList ID="DropDownList1" runat="server" Width="180px">
                    <asp:ListItem>Select State</asp:ListItem>
                    <asp:ListItem>Madhya Pradesh</asp:ListItem>
                    <asp:ListItem>Maharashtra</asp:ListItem>
                    <asp:ListItem>Uttar Pradesh</asp:ListItem>
                    <asp:ListItem>Gujarat</asp:ListItem>
                    <asp:ListItem>Karnataka</asp:ListItem>
                    <asp:ListItem>Keral</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style10">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="DropDownList1" ErrorMessage="State Required" ForeColor="Red" 
                    InitialValue="Select State"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td width="180px" class="style7">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" />
&nbsp;&nbsp;
                <input id="Reset1" type="reset" value="reset" /></td>
            <td class="style10">
                &nbsp;&nbsp;</td>
        </tr>
    </table>
    </form>
</body>
</html>
