<%@ Page Title="" Language="C#" MasterPageFile="~/EagleEats.Master" AutoEventWireup="true" CodeBehind="MyDelivery.aspx.cs" Inherits="EagleEatsMaster.MyDelivery" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Review & Confirm Deliveries</h1>
    <h2>Confirm Deliveries</h2>
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Delivery_Id" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="Delivery_Id" HeaderText="Delivery_Id" InsertVisible="False" ReadOnly="True" SortExpression="Delivery_Id" />
                <asp:BoundField DataField="Driver_Id" HeaderText="Driver_Id" SortExpression="Driver_Id" />
                <asp:BoundField DataField="Route_Id" HeaderText="Route_Id" SortExpression="Route_Id" />
                <asp:BoundField DataField="DeliveryStatus" HeaderText="DeliveryStatus" SortExpression="DeliveryStatus" />
                <asp:BoundField DataField="OrderTime" HeaderText="OrderTime" SortExpression="OrderTime" />
                <asp:BoundField DataField="ArrivalTime" HeaderText="ArrivalTime" SortExpression="ArrivalTime" />
                <asp:BoundField DataField="TotalCost" HeaderText="TotalCost" SortExpression="TotalCost" />
                <asp:BoundField DataField="Tip" HeaderText="Tip" SortExpression="Tip" />
                <asp:BoundField DataField="Tax" HeaderText="Tax" SortExpression="Tax" />
                <asp:BoundField DataField="ETA" HeaderText="ETA" SortExpression="ETA" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EagleEatsDBConnectionString %>" SelectCommand="SELECT * FROM [Delivery]"></asp:SqlDataSource>
    </p>
<p>
        <asp:Button ID="btnSubmitDelivery" runat="server" Text="Submit Delivery" Width="298px" OnClick="btnSubmitDelivery_Click" />
    </p>
    
    
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="Delivery_Id" DataSourceID="SqlDataSource2" OnItemCreated="FormView1_ItemCreated" OnItemDeleted="FormView1_ItemDeleted" OnItemInserted="FormView1_ItemInserted">
        <EditItemTemplate>
            Delivery_Id:
            <asp:Label ID="Delivery_IdLabel1" runat="server" Text='<%# Eval("Delivery_Id") %>' />
            <br />
            Driver_Id:
            <asp:TextBox ID="Driver_IdTextBox" runat="server" Text='<%# Bind("Driver_Id") %>' />
            <br />
            Route_Id:
            <asp:TextBox ID="Route_IdTextBox" runat="server" Text='<%# Bind("Route_Id") %>' />
            <br />
            DeliveryStatus:
            <asp:TextBox ID="DeliveryStatusTextBox" runat="server" Text='<%# Bind("DeliveryStatus") %>' />
            <br />
            OrderTime:
            <asp:TextBox ID="OrderTimeTextBox" runat="server" Text='<%# Bind("OrderTime") %>' />
            <br />
            ArrivalTime:
            <asp:TextBox ID="ArrivalTimeTextBox" runat="server" Text='<%# Bind("ArrivalTime") %>' />
            <br />
            TotalCost:
            <asp:TextBox ID="TotalCostTextBox" runat="server" Text='<%# Bind("TotalCost") %>' />
            <br />
            Tip:
            <asp:TextBox ID="TipTextBox" runat="server" Text='<%# Bind("Tip") %>' />
            <br />
            Tax:
            <asp:TextBox ID="TaxTextBox" runat="server" Text='<%# Bind("Tax") %>' />
            <br />
            ETA:
            <asp:TextBox ID="ETATextBox" runat="server" Text='<%# Bind("ETA") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            Driver_Id:
            <asp:TextBox ID="Driver_IdTextBox" runat="server" Text='<%# Bind("Driver_Id") %>' />
            <br />
            Route_Id:
            <asp:TextBox ID="Route_IdTextBox" runat="server" Text='<%# Bind("Route_Id") %>' />
            <br />
            DeliveryStatus:
            <asp:TextBox ID="DeliveryStatusTextBox" runat="server" Text='<%# Bind("DeliveryStatus") %>' />
            <br />
            OrderTime:
            <asp:TextBox ID="OrderTimeTextBox" runat="server" Text='<%# Bind("OrderTime") %>' />
            <br />
            ArrivalTime:
            <asp:TextBox ID="ArrivalTimeTextBox" runat="server" Text='<%# Bind("ArrivalTime") %>' />
            <br />
            TotalCost:
            <asp:TextBox ID="TotalCostTextBox" runat="server" Text='<%# Bind("TotalCost") %>' />
            <br />
            Tip:
            <asp:TextBox ID="TipTextBox" runat="server" Text='<%# Bind("Tip") %>' />
            <br />
            Tax:
            <asp:TextBox ID="TaxTextBox" runat="server" Text='<%# Bind("Tax") %>' />
            <br />
            ETA:
            <asp:TextBox ID="ETATextBox" runat="server" Text='<%# Bind("ETA") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            Delivery_Id:
            <asp:Label ID="Delivery_IdLabel" runat="server" Text='<%# Eval("Delivery_Id") %>' />
            <br />
            Driver_Id:
            <asp:Label ID="Driver_IdLabel" runat="server" Text='<%# Bind("Driver_Id") %>' />
            <br />
            Route_Id:
            <asp:Label ID="Route_IdLabel" runat="server" Text='<%# Bind("Route_Id") %>' />
            <br />
            DeliveryStatus:
            <asp:Label ID="DeliveryStatusLabel" runat="server" Text='<%# Bind("DeliveryStatus") %>' />
            <br />
            OrderTime:
            <asp:Label ID="OrderTimeLabel" runat="server" Text='<%# Bind("OrderTime") %>' />
            <br />
            ArrivalTime:
            <asp:Label ID="ArrivalTimeLabel" runat="server" Text='<%# Bind("ArrivalTime") %>' />
            <br />
            TotalCost:
            <asp:Label ID="TotalCostLabel" runat="server" Text='<%# Bind("TotalCost") %>' />
            <br />
            Tip:
            <asp:Label ID="TipLabel" runat="server" Text='<%# Bind("Tip") %>' />
            <br />
            Tax:
            <asp:Label ID="TaxLabel" runat="server" Text='<%# Bind("Tax") %>' />
            <br />
            ETA:
            <asp:Label ID="ETALabel" runat="server" Text='<%# Bind("ETA") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:EagleEatsDBConnectionString %>" DeleteCommand="DELETE FROM Delivery WHERE (Delivery_Id = @Delivery_Id)" InsertCommand="INSERT INTO Delivery(Driver_Id, Route_Id, DeliveryStatus, OrderTime, ArrivalTime, TotalCost, Tip, Tax, ETA) VALUES (@Driver_Id, @Route_Id, @DeliveryStatus, @OrderTime, @ArrivalTime, @TotalCost, @Tip, @Tax, @ETA)" SelectCommand="SELECT Delivery_Id, Driver_Id, Route_Id, DeliveryStatus, OrderTime, ArrivalTime, TotalCost, Tip, Tax, ETA FROM Delivery WHERE (Delivery_Id = @Delivery_Id)" UpdateCommand="UPDATE Delivery SET Driver_Id = @Driver_Id, Route_Id = @Route_Id, DeliveryStatus = @DeliveryStatus, OrderTime = @OrderTime, ArrivalTime = @ArrivalTime, TotalCost = @TotalCost, Tip = @Tip, Tax = @Tax, ETA = @ETA WHERE (Delivery_Id = @Delivery_Id)">
        <DeleteParameters>
            <asp:Parameter Name="Delivery_Id" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Driver_Id" />
            <asp:Parameter Name="Route_Id" />
            <asp:Parameter Name="DeliveryStatus" />
            <asp:Parameter Name="OrderTime" />
            <asp:Parameter Name="ArrivalTime" />
            <asp:Parameter Name="TotalCost" />
            <asp:Parameter Name="Tip" />
            <asp:Parameter Name="Tax" />
            <asp:Parameter Name="ETA" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="GridView1" DefaultValue="1" Name="Delivery_Id" PropertyName="SelectedValue" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="Driver_Id" />
            <asp:Parameter Name="Route_Id" />
            <asp:Parameter Name="DeliveryStatus" />
            <asp:Parameter Name="OrderTime" />
            <asp:Parameter Name="ArrivalTime" />
            <asp:Parameter Name="TotalCost" />
            <asp:Parameter Name="Tip" />
            <asp:Parameter Name="Tax" />
            <asp:Parameter Name="ETA" />
            <asp:Parameter Name="Delivery_Id" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <h2>Review Deliveries</h2>
<p>
    <asp:TextBox ID="txtReviewDelivery" runat="server" Height="128px" Width="342px"></asp:TextBox>
</p>
</asp:Content>
