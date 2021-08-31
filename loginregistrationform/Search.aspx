<%@ Page Async="true"   Language="C#" AutoEventWireup="true" CodeBehind="Search.aspx.cs" Inherits="loginregistrationform.Search" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>


     <style>
        body{
            background-image:url("images/Blur.jpg");
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
    <div >
        <form runat="server">
            <asp:TextBox ID="TextBoxURL" runat="server" Width="1108px" placeholder ="Enter The URL Here"  ></asp:TextBox>


            <asp:Button ID="ButtonURL" runat="server" OnClick="Button1_Click"  Text="Submit" />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click"  PostBackUrl="~/ShowData.aspx" Text="Show Data" />

            <asp:Button ID="ButtonPersonal" runat="server" OnClick="ButtonPersonal_Click" Text="Personal Data" />

        </form>
    </div>
    <div>
        <asp:Literal ID="Literal1" runat="server"></asp:Literal>
    </div>
    
</body>
</html>






