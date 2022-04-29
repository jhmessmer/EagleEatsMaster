<%@ Page Title="" Language="C#" MasterPageFile="~/EagleEats.Master" AutoEventWireup="true" CodeBehind="CustomerCenter.aspx.cs" Inherits="EagleEatsMaster.SignUp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Customer Center</h1>
     <p>Enter Account Information to Login:</p>

    <action="CustomerProfile.aspx">
        <label for="lblUserName">Username:</label><br>
        <input type="text" id="userName" name="fname" value=" "><br>
        <label for="passwd">Password:</label><br>
        <input type="text" id="passwd" name="passwd" value=""><br>
        <br>
        <input type="submit" value="Login">
        <br />
        <p>If you do not have an account, click the link below to create one!</p>
       <a href = "CustomerSignUp.aspx">Customer Sign Up!</a>
    
</asp:Content>
