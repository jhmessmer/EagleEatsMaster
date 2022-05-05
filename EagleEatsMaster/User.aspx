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
    <asp:FormView ID="FormView1" runat="server" OnItemInserted="FormView1_ItemInserted" DataKeyNames="User_Id" DataSourceID="SqlDataSource2" OnItemUpdated="FormView1_ItemUpdated" OnItemDeleted="FormView1_ItemDeleted">
        <EditItemTemplate>
            User_Id:
            <asp:Label ID="User_IdLabel1" runat="server" Text='<%# Eval("User_Id") %>' />
            <br />
            UserName:
            <asp:TextBox ID="UserNameTextBox" runat="server" Text='<%# Bind("UserName") %>' />
            <br />
            Passwd:
            <asp:TextBox ID="PasswdTextBox" runat="server" Text='<%# Bind("Passwd") %>' />
            <br />
            Address:
            <asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            UserName:
            <asp:TextBox ID="UserNameTextBox" runat="server" Text='<%# Bind("UserName") %>' />
            <br />
            Passwd:
            <asp:TextBox ID="PasswdTextBox" runat="server" Text='<%# Bind("Passwd") %>' />
            <br />
            Address:
            <asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            User_Id:
            <asp:Label ID="User_IdLabel" runat="server" Text='<%# Eval("User_Id") %>' />
            <br />
            UserName:
            <asp:Label ID="UserNameLabel" runat="server" Text='<%# Bind("UserName") %>' />
            <br />
            Passwd:
            <asp:Label ID="PasswdLabel" runat="server" Text='<%# Bind("Passwd") %>' />
            <br />
            Address:
            <asp:Label ID="AddressLabel" runat="server" Text='<%# Bind("Address") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:EagleEatsDBConnectionString %>" DeleteCommand="DELETE FROM [User] WHERE (User_Id = @User_Id)" InsertCommand="INSERT INTO [User] (UserName, Passwd, Address) VALUES (@UserName, @Passwd, @Address)" SelectCommand="SELECT User_Id, UserName, Passwd, Address FROM [User] WHERE (User_Id = @User_Id)" UpdateCommand="UPDATE [User] SET UserName = @UserName, Passwd = @Passwd, Address = @Address WHERE (User_Id = @User_Id)">
        <DeleteParameters>
            <asp:Parameter Name="User_Id" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="UserName" />
            <asp:Parameter Name="Passwd" />
            <asp:Parameter Name="Address" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="GridView1" DefaultValue="1" Name="User_Id" PropertyName="SelectedValue" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="UserName" />
            <asp:Parameter Name="Passwd" />
            <asp:Parameter Name="Address" />
            <asp:Parameter Name="User_Id" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
