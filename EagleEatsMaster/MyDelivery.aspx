<%@ Page Title="" Language="C#" MasterPageFile="~/EagleEats.Master" AutoEventWireup="true" CodeBehind="MyDelivery.aspx.cs" Inherits="EagleEatsMaster.MyDelivery" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>My Delivery</h1>
    <p>
        <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1">
        </asp:GridView>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
    
    <p>&nbsp;</p>
    <asp:FormView ID="FormView1" runat="server"></asp:FormView>
</asp:Content>
