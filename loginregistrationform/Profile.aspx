<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="loginregistrationform.Profile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    <style> 

         body{
            background-image:url("images/office1.jpg");
            background-attachment: fixed;
            background-size: cover;
        }
             .container
              {
                               text-align: center;
               }
             a{
                 border: 2px double black:
             }
        .auto-style2 {
            color: #000000;
        }
        </style>
</head>
<body>
        <form id="form1" runat="server">
        <div class="container" > <h1> Welcome 
            <asp:Label ID="Label1" runat="server"></asp:Label>
            </h1>
        </div>
        <h4 style="font-weight: 700; font-style: italic">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="Search.aspx" tabindex="-1" role="button" aria-disabled="true"><em><span class="auto-style2">Click the Below button To Search What you are Looking For</span></em></a><span class="auto-style2"><em> </em></span></h4>
            
           &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button5" runat="server" Text="Home" ForeColor="#006600" OnClick="Button5_Click" />
            
            
    
           
            <asp:Button ID="Button1" runat="server" Text="Search" ForeColor="#33CC33" OnClick="Button1_Click" />
            
            
    
           
            <asp:Button ID="Button6" runat="server" Text="Show Data" ForeColor="#660066" OnClick="Button6_Click" Width="124px" />
            <asp:Button ID="Button4" runat="server" ForeColor="#9900FF" OnClick="Button4_Click" Text="Update Profile" />
            <asp:Button ID="Button2" runat="server" Text="Logout" ForeColor="Red" OnClick="Button2_Click" />

    
           
&nbsp;<h3 style="font-weight: 700; font-style: italic">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style2"><em>&nbsp;&nbsp; </em></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </h3>
        <h3 style="font-weight: 700; font-style: italic">&nbsp;</h3>
        <h3 style="font-weight: 700; font-style: italic">&nbsp;</h3>
        <h3 style="font-weight: 700; font-style: italic">&nbsp;</h3>
        <h3 style="font-weight: 700; font-style: italic">&nbsp;</h3>
        <h3 style="font-weight: 700; font-style: italic">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="#" tabindex="-1" role="button" aria-disabled="true"><em><span class="auto-style2">For More Information:</span></em></a></h3>
            
           &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
            
           <a href="ContactUs.html" class="btn btn-secondary btn-lg active" role="button" aria-pressed="true">&nbsp;Contact Us</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           <a href="AboutUS.html" class="btn btn-secondary btn-lg active" role="button" aria-pressed="true">About Us</a> 
        </form>
</body>
</html>
