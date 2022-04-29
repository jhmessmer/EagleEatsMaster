<%@ Page Title="" Language="C#" MasterPageFile="~/EagleEats.Master" AutoEventWireup="true" CodeBehind="User.aspx.cs" Inherits="EagleEatsMaster.User" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h1>My User</h1>
    <asp:GridView ID="GridView1" runat="server">
    </asp:GridView>
    <br />
    <br />
    <asp:FormView ID="FormView1" runat="server" OnItemInserted="FormView1_ItemInserted" OnItemUpdated="FormView1_ItemUpdated">
    </asp:FormView>
</asp:Content>
