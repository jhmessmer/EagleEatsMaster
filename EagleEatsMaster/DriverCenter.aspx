﻿<%@ Page Title="" Language="C#" MasterPageFile="~/EagleEats.Master" AutoEventWireup="true" CodeBehind="DriverCenter.aspx.cs" Inherits="EagleEatsMaster.DriverCenter" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Driver Center</h1>
    <p>Please Enter your information below:</p>
   <action="CustomerProfile.aspx">
        <label for="lblUserName">Username:</label><br>
        <input type="text" id="userName" name="fname" value=" "><br>
        <label for="passwd">Password:</label><br>
        <input type="text" id="passwd" name="passwd" value=""><br>
        <br>
        <input type="login" value="Login">
       <br\ />
       <p>If you do not have an account, click the link below to create one!</p>
       <a href = "DriverSignUp.aspx">Driver Sign Up!</a>


</asp:Content>
