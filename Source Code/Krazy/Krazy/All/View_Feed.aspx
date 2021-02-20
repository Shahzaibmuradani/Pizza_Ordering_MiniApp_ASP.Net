<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="View_Feed.aspx.cs" Inherits="Krazy.View_Feed" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <asp:Repeater ID="Repeater1" runat="server">
             <ItemTemplate>
                <table class="table table-hover">
                    <tr>
                        <td>
                            <asp:Label ID="heading" Font-Size="Large" Font-Bold="true" runat="server" Text="Customer's Feedback"></asp:Label>
                        </td>
                        <td></td>
                          </tr>              
                    <tr>
                        <td>
                            <asp:Label ID="Label1" runat="server">ID</asp:Label>
                        </td>
                        <td>
                          <asp:TextBox ID="txtid" ReadOnly="true" runat="server" Text='<%# Eval("Id") %>'></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label2" runat="server">Delivery</asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtdel" ReadOnly="true" runat="server" Text='<%# Eval("Delivery_Rating") %>'></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label3" runat="server">Flavor Rating</asp:Label>
                        </td>
                        <td>
                           <asp:TextBox ID="txtfla" ReadOnly="true" runat="server" Text='<%# Eval("Flavour_Rating") %>'></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label4" runat="server">Comments</asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtcomment" ReadOnly="true" runat="server" Text='<%# Eval("Comments") %>' TextMode="MultiLine"></asp:TextBox>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:Repeater>

    </div>
</asp:Content>
