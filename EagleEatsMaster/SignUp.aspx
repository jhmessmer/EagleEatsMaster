<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="EagleEatsMaster.SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
.h1,h1{font-size:36px}.h1,.h2,.h3,h1,h2,h3{margin-top:20px;margin-bottom:10px}.h1,.h2,.h3,.h4,.h5,.h6,h1,h2,h3,h4,h5,h6{font-family:inherit;font-weight:500;line-height:1.1;color:inherit}h1{font-size:2em;margin:.67em 0}*{-webkit-box-sizing:border-box;-moz-box-sizing:border-box;box-sizing:border-box}*,:after,:before{color:#000!important;text-shadow:none!important;background:0 0!important;-webkit-box-shadow:none!important;box-shadow:none!important}.h2,h2{font-size:30px}h2,h3{page-break-after:avoid}h2,h3,p{orphans:3;widows:3}button,input,select,textarea{font-family:inherit;font-size:inherit;line-height:inherit}input{line-height:normal}button,input,optgroup,select,textarea{color:inherit;font:inherit;margin:0}button,html input[type=button],input[type=reset],input[type=submit]{-webkit-appearance:button;cursor:pointer}</style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
    <h1>Customer Sign Up</h1>
    <h2>Please enter the following information to register for EagleEats deliveries!</h2>
    <asp:Label ID="Label1" runat="server" Text="Username: "></asp:Label>
    <asp:TextBox ID="tbUser" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="Label2" runat="server" Text="Password: "></asp:Label>
    <asp:TextBox ID="tbPassword" runat="server" TextMode="Password"></asp:TextBox>
    <br />
    <asp:Label ID="Label3" runat="server" Text="Confirm Password: "></asp:Label>
    <asp:TextBox ID="tbConfirm" runat="server" TextMode="Password"></asp:TextBox>
    <br />
    <asp:Label ID="Label4" runat="server" Text="Address: "></asp:Label>
    <asp:TextBox ID="tbAddress" runat="server"></asp:TextBox>
    <br>
    <br />
    <asp:Button ID="btnSignUp" runat="server" Text="Sign Up" />
    <asp:Button ID="btnCancel" runat="server" PostBackUrl="~/Home.aspx" Text="Cancel" />
        </div>
    </form>
</body>
</html>
