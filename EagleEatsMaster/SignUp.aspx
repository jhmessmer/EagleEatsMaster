<%@ Page Title="" Language="C#" MasterPageFile="~/EagleEats.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="EagleEatsMaster.CustomerSignUp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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
    <br />
    <br />
    <asp:Button ID="btnSignUp" runat="server" Text="Sign Up" />
    <asp:Button ID="btnCancel" runat="server" PostBackUrl="~/Home.aspx" Text="Cancel" />
    <h1>&nbsp;</h1>
</asp:Content>