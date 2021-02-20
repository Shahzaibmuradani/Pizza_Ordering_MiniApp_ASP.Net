<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="View_Order.aspx.cs" Inherits="Krazy.View_Order" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="Id" DataSourceID="ObjectDataSource1" PageSize="2">
                    <Columns>
                        <asp:BoundField DataField="Id" HeaderText="ID" ReadOnly="True" SortExpression="Id" />
                        <asp:TemplateField HeaderText="Flavor" SortExpression="Flavor">
                            <EditItemTemplate>
                                <asp:DropDownList ID="DropDownList3" runat="server" SelectedValue='<%# Bind("Flavor") %>'>
                                    <asp:ListItem>--Select--</asp:ListItem>
                                    <asp:ListItem>Chicken Tikka</asp:ListItem>
                                    <asp:ListItem>Chicken Fajita</asp:ListItem>
                                    <asp:ListItem>Afghani Deluxe</asp:ListItem>
                                </asp:DropDownList>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("Flavor") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Size" SortExpression="Size">
                            <EditItemTemplate>
                                <asp:DropDownList ID="DropDownList4" runat="server" SelectedValue='<%# Bind("Size") %>'>
                                    <asp:ListItem>--Select--</asp:ListItem>
                                    <asp:ListItem>Small</asp:ListItem>
                                    <asp:ListItem>Regular</asp:ListItem>
                                    <asp:ListItem>Large</asp:ListItem>
                                </asp:DropDownList>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("Size") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Toppings" SortExpression="Toppings">
                            <EditItemTemplate>
                                <asp:RadioButtonList ID="RadioButtonList2" runat="server" SelectedValue='<%# Bind("Toppings") %>'>
                                    <asp:ListItem>Pepperoni</asp:ListItem>
                                    <asp:ListItem>Sausage</asp:ListItem>
                                    <asp:ListItem>Mashroom</asp:ListItem>
                                </asp:RadioButtonList>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server" Text='<%# Eval("Toppings") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Drinks" SortExpression="Drinks">
                            <EditItemTemplate>
                                <asp:RadioButtonList ID="RadioButtonList3" runat="server" SelectedValue='<%# Bind("Drinks") %>'>
                                    <asp:ListItem>Dew</asp:ListItem>
                                    <asp:ListItem>7up</asp:ListItem>
                                    <asp:ListItem>Pepsi</asp:ListItem>
                                </asp:RadioButtonList>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label4" runat="server" Text='<%# Eval("Drinks") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="Cust_name" HeaderText="Customer Name" SortExpression="Cust_name" />
                        <asp:BoundField DataField="Cust_num"  HeaderText="Customer Number" SortExpression="Cust_num" />
                        <asp:BoundField DataField="Cust_add" HeaderText="Customer Address" SortExpression="Cust_add" />
                        <asp:BoundField DataField="Date" HeaderText="Date" ReadOnly="True" SortExpression="Date" />
                        <asp:CheckBoxField DataField="Status" HeaderText="Status" SortExpression="Status" />
                        <asp:CommandField HeaderText="Options" ShowEditButton="True" />
                    </Columns>
                    <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                    <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                    <RowStyle ForeColor="#330099" BackColor="White" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                    <SortedAscendingCellStyle BackColor="#FEFCEB" />
                    <SortedAscendingHeaderStyle BackColor="#AF0101" />
                    <SortedDescendingCellStyle BackColor="#F6F0C0" />
                    <SortedDescendingHeaderStyle BackColor="#7E0000" />
                </asp:GridView>
        </div>
     <div>
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DataObjectTypeName="Krazy.Customer" InsertMethod="Insert" SelectMethod="GetOrders" TypeName="Krazy.OrderRepository" UpdateMethod="Update"></asp:ObjectDataSource>

    </div>
    <br />
    <br />
    <div class="container">
    </div>
    </asp:Content>
