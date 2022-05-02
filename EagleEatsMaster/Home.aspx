<%@ Page Title="" Language="C#" MasterPageFile="~/EagleEats.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="EagleEatsMaster.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Welcome to the USI Eagle Eats Delivery Service</h1>
    <p>Please Enter your information below:</p>
    <asp:Label ID="Label1" runat="server" Text="Username: "></asp:Label>
    <asp:TextBox ID="tbUser" runat="server"></asp:TextBox>
   <action="CustomerProfile.aspx">
        <br />
    <asp:Label ID="Label2" runat="server" Text="Password: "></asp:Label>
    <asp:TextBox ID="tbPassword" runat="server"></asp:TextBox>
   <action="CustomerProfile.aspx">
        <br>
        <br>
        <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" />
&nbsp;<br\ /><p>If you do not have an account, click the link below to create one!</p>
       <a href = "SignUp.aspx">Sign Up!</a>


<p>&nbsp;</p>
</asp:Content>
