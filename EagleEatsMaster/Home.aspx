<%@ Page Title="" Language="C#" MasterPageFile="~/EagleEats.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="EagleEatsMaster.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Welcome to the USI Eagle Eats Delivery Service</h1>
    <p>Please Enter your information below:</p>
   <action="Home.aspx">
       <p>
        <asp:Label ID="Label1" runat="server" Text="Username: "></asp:Label>
        <asp:TextBox ID="tbUser" runat="server"></asp:TextBox>
       </p>
    <p>
        <asp:Label ID="Label2" runat="server" Text="Password: "></asp:Label>
        <asp:TextBox ID="tbPassword" runat="server" TextMode="Password"></asp:TextBox>
        <br>
       <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click1" />
       <br\ />
       </p>
       <p>If you do not have an account, click the link below to create one!</p>
       <p><a href = "SignUp.aspx">Sign Up!</a></p>


<p>&nbsp;</p>
</asp:Content>
