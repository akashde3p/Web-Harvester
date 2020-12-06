<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="REGISTRATION.aspx.cs" Inherits="loginregistrationform.REGISTRATION" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
      <style>
        body{
            background-image:url("images/officeblur.jpg");
            background-attachment: fixed;
            background-size: cover;
        }
        #form1
        {
            height:700px;
            width:573px;
            background-color:white;
            opacity:0.8;
            margin-left:auto;
            margin-right:auto;

        }
        .container
        {
            margin-left:25px;
        }
        .txtbox{
            border:1px solid black;
            border-radius:5px;
            font-size:15px;
        }
        .btn{
            border:1px solid black;
            border-radius:5px;
            background-color:sandybrown;
        }
        .lbl{
            font-size:20px;
            font-display:Block;
            font-family:'Times New Roman', Times, serif;
          

        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;<img src="images/register1.jpg" style="width: 230px; height: 228px; vertical-align:middle";  /></div>
        <div> 
            <asp:TextBox ID="TextBox1" runat="server" CssClass="txtbox" Height="24px" style="margin-left: 38px; margin-top: 30px" Width="195px" placeholder="ENTER FIRST NAME"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox2" runat="server" CssClass="txtbox" Height="24px" style="margin-left: 38px; margin-top: 30px" Width="195px" placeholder="ENTER LAST NAME"></asp:TextBox>
            <br />
            <br />
            <br />
            <asp:TextBox ID="TextBox3" runat="server" CssClass="txtbox" Height="24px" style="margin-left: 38px; margin-top: 30px" Width="195px" placeholder="ENTER MOBILE NUMBER"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox4" runat="server" CssClass="txtbox" Height="24px" style="margin-left: 38px; margin-top: 30px" Width="195px" placeholder="ENTER EMAIL ID"></asp:TextBox>
            <br />
            <br />
            <br />
            <asp:TextBox ID="TextBox5" runat="server" CssClass="txtbox" Height="24px" style="margin-left: 38px; margin-top: 30px" Width="195px" placeholder="ENTER PASSWORD" TextMode="Password" ></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox6" runat="server" CssClass="txtbox" Height="24px" style="margin-left: 38px; margin-top: 30px" Width="195px" placeholder="CONFIRM PASSWORD" TextMode="Password"></asp:TextBox>
            <br />
            <br />
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" CssClass="lbl" ControlToValidate="TextBox1" Display="Dynamic" EnableClientScript="False" ErrorMessage="*ENTER FIRST NAME" SetFocusOnError="True" ValidationGroup="abc" ForeColor="#6666FF"></asp:RequiredFieldValidator>
            <asp:Label ID="Label1" runat="server" CssClass="lbl" ForeColor="#FF6699"></asp:Label>
            <br />
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" CssClass="lbl" ControlToValidate="TextBox2" Display="Dynamic" EnableClientScript="False" ErrorMessage="*ENTER LAST NAME" SetFocusOnError="True" ValidationGroup="abc" ForeColor="#FF33CC">*ENTER LAST NAME</asp:RequiredFieldValidator>
            &nbsp;&nbsp;
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" CssClass="lbl" ControlToValidate="TextBox3" Display="Dynamic" EnableClientScript="False" ErrorMessage="*ENTER MOBILE NUMBER" SetFocusOnError="True" ValidationGroup="abc" ForeColor="#FF0066"></asp:RequiredFieldValidator>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" CssClass="lbl"  ControlToValidate="TextBox4" Display="Dynamic" EnableClientScript="False" ErrorMessage="*ENTER EMAIL ID" SetFocusOnError="True" ValidationGroup="abc" ForeColor="#FF3300"></asp:RequiredFieldValidator>
            <br />
            <asp:CompareValidator ID="CompareValidator1" runat="server" CssClass="lbl" ControlToCompare="TextBox5" ControlToValidate="TextBox6" CultureInvariantValues="True" Display="Dynamic" EnableClientScript="False" ErrorMessage="*PASSWORD AND CONFIRM PASSWORD DIDNOT MATCH" SetFocusOnError="True" ValidationGroup="abc" ForeColor="#FF9900"></asp:CompareValidator>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" CssClass="btn" Height="36px" style="margin-left: 36px" Text="REGISTER" Width="474px" OnClick="Button1_Click" ValidationGroup="abc" />
        </div>
    </form>
</body>
</html>
