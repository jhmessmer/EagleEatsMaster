<%@ Page Title="" Language="C#" MasterPageFile="~/EagleEats.Master" AutoEventWireup="true" CodeBehind="User.aspx.cs" Inherits="EagleEatsMaster.User" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h1>My User</h1>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="User_Id" DataSourceID="SqlDataSource1" Width="676px">
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="User_Id" HeaderText="User_Id" InsertVisible="False" ReadOnly="True" SortExpression="User_Id" />
            <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
            <asp:BoundField DataField="Passwd" HeaderText="Passwd" SortExpression="Passwd" />
            <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EagleEatsDBConnectionString %>" SelectCommand="SELECT * FROM [User]"></asp:SqlDataSource>
    <br />
    <br />
    <asp:FormView ID="FormView1" runat="server" OnItemInserted="FormView1_ItemInserted" OnItemUpdated="FormView1_ItemUpdated">
    </asp:FormView>
</asp:Content>
