<%@ Page Title="" Language="C#" MasterPageFile="~/EagleEats.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="EagleEatsMaster.CustomerSignUp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Customer Sign Up</h1>
    <h2>Please enter the following information to register for EagleEats deliveries!</h2>
    <asp:Label ID="Label1" runat="server" Text="First Name: "></asp:Label>
    <asp:TextBox ID="tbFname" runat="server"></asp:TextBox>
    <br />
    <br />
    <label for="fname">First name:</label><br>
    <input type="text" id="fname" name="fname"><br>
    <label for="lname">Last name:</label><br>
    <input type="text" id="lname" name="lname"><br>
    <label for="passwd">Password:</label><br>
    <input type="text" id="passwd" name="address"><br>
    <label for="address">Address:</label><br>
    <input type="text" id="address" name="address"><br>
    <br />
    <br />
    <input type="submit" value="Submit">
</asp:Content>
