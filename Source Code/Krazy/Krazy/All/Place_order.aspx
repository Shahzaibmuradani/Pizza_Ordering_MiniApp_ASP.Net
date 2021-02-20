<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Place_order.aspx.cs" Inherits="Krazy.Place_order" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">

        <table class="table table-hover">
            <tr>
                <td>
                   Flavor of Pizza
                </td>
               <td>
                   <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>--Select--</asp:ListItem>
                        <asp:ListItem>Chicken Tikka</asp:ListItem>
                        <asp:ListItem>Chicken Fajita</asp:ListItem>
                        <asp:ListItem>Afghani Deluxe</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>

            <tr>
                <td>Size of Pizza</td>
                <td>
                    <asp:DropDownList ID="DropDownList2" runat="server">
                        <asp:ListItem>--Select--</asp:ListItem>
                        <asp:ListItem>Small</asp:ListItem>
                        <asp:ListItem>Regular</asp:ListItem>
                        <asp:ListItem>Large</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>

            <tr>
                <td>
                    Toppings
                </td>
                <td>
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                        <asp:ListItem>Pepperoni</asp:ListItem>
                        <asp:ListItem>Sausage</asp:ListItem>
                        <asp:ListItem>Mashroom</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>

            
            <tr>
                <td>
                    Drinks
                </td>
                <td>
                    <asp:RadioButtonList ID="RadioButtonList2" runat="server">
                        <asp:ListItem>Dew</asp:ListItem>
                        <asp:ListItem>7up</asp:ListItem>
                        <asp:ListItem>Pepsi</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>

            <tr>
                <td>
                    Name
                </td>
                <td>
                    <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td>
                    Address
                </td>
                <td>
                    <asp:TextBox ID="txtadd" runat="server" TextMode="MultiLine" Height="81px"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td>
                    Contact Number
                </td>
                <td>
                    <asp:TextBox ID="txtnum" runat="server" TextMode="Phone"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td></td>
                <td>
                    <asp:Button ID="btnsave" CssClass="btn btn-success" runat="server" Text="Save Order" OnClick="btnsave_Click"/>
                    <asp:Button ID="btnclear" CssClass="btn btn-danger" runat="server" Text="Clear" OnClick="btnclear_Click" />
                </td>
            </tr>
        </table>
    </div>
    <div class="container" style="color: #FF0000">
        <asp:Label ID="lblmsg" runat="server"></asp:Label>
    </div>
</asp:Content>
