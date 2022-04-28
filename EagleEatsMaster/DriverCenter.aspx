<%@ Page Title="" Language="C#" MasterPageFile="~/EagleEats.Master" AutoEventWireup="true" CodeBehind="DriverCenter.aspx.cs" Inherits="EagleEatsMaster.DriverCenter" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <h1>Driver Center</h1>
    <p>Please Enter your information below:</p>
    <asp:Label ID="lblDriverFirst" runat="server" Text="First Name:"></asp:Label>
    <br />
    <asp:Label ID="lblDriverLast" runat="server" Text="Last Name:"></asp:Label>
    <br />
    <asp:Label ID="lblDriverDOB" runat="server" Text="Date of Birth: (xx/xx/xxx):"></asp:Label>
    <br />
    <asp:Label ID="lblDriverPhone" runat="server" Text="Cell Phone Number:"></asp:Label>



</asp:Content>
