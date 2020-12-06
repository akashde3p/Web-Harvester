<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="deleteform.aspx.cs" Inherits="loginregistrationform.deleteform" %>

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
            height:600px;
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
        <div style="width: 296px; margin-left: 148px">
            <img src="images/deleteuser.jpg" style="height: 181px; margin-left: 35px" />
         </div>
        <div class="container">

            <asp:TextBox ID="TextBox1" runat="server" CssClass="txtbox" Height="43px" style="margin-left: 100px; margin-top: 88px" Width="319px" placeholder="ENTER EMAIL ID"></asp:TextBox>
            <br />
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox2" runat="server" CssClass="txtbox" Height="43px" style="margin-left: 100px; margin-top: 0px" Width="319px" placeholder="ENTER PASSWORD" TextMode="Password"></asp:TextBox>
            <br />
            <br />
            <br /> 
            <asp:Label ID="Label1" runat="server" CssClass="lbl" ForeColor="#FF3300"></asp:Label>
            <br />
            <asp:Button ID="Button1" runat="server" CssClass="btn" Height="41px" Text="DELETE ACCOUNT" Width="178px" style="margin-left: 100px" OnClick="Button1_Click"  />
            
            
            &nbsp;<asp:Button ID="Button2" runat="server" CssClass="btn" Height="41px" Text="SIGNUP" Width="178px" OnClick="Button2_Click1"  />
            
            
        </div>
    </form>
</body>
</html>

