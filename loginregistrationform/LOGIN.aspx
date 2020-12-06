<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LOGIN.aspx.cs" Inherits="loginregistrationform.LOGIN" %>

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
        <div style="width: 296px; margin-left: 148px">
            <img src="images/loginasp.png" />
         </div>
        <div class="container">

            <asp:TextBox ID="TextBox1" runat="server" CssClass="txtbox" Height="43px" style="margin-left: 100px; margin-top: 88px" Width="319px" placeholder="ENTER EMAIL ID"></asp:TextBox>
            <br />
            &nbsp;
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox2" runat="server" CssClass="txtbox" Height="43px" style="margin-left: 100px; margin-top: 0px" Width="319px" placeholder="ENTER PASSWORD" TextMode="Password" ></asp:TextBox>
            <br />
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" CssClass="lbl" ForeColor="Red"></asp:Label>
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
            <asp:Button ID="Button1" runat="server" CssClass="btn" Height="50px" Text="LOGIN" Width="319px" style="margin-left: 100px" OnClick="Button1_Click" />
     
            <br />
            <br />
            <br />
            <br />
            <asp:Button ID="Button2" runat="server" CssClass="btn" Height="41px" Text="UPDATE" Width="178px" OnClick="Button2_Click" />
            <asp:Button ID="Button4" runat="server" CssClass="btn" Height="41px" Text="SIGNUP" Width="178px" OnClick="Button4_Click" />
            <asp:Button ID="Button3" runat="server" CssClass="btn" Height="41px" Text="DELETE" Width="178px" OnClick="Button3_Click" />

        </div>
    </form>
</body>
</html>
