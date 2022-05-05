<%@ Page Title="" Language="C#" MasterPageFile="~/EagleEats.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="EagleEatsMaster.CustomerSignUp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Customer Sign Up</h1>
     <h2>Please enter the following information to register for EagleEats deliveries!</h2>
    <p>
    <br />
    <asp:Label ID="lblUsername" runat="server" Text="Username:"></asp:Label>
    <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="lblPassword" runat="server" Text="Password:"></asp:Label>
    <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="lblAddress" runat="server" Text="Address:"></asp:Label>
    <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox>
    </p>
    <p>
    <br />
    <asp:Button ID="btnSignUp" runat="server" Text="Sign Up" OnClick="btnSignUp_Click" />
    </p>
    
</asp:Content>
