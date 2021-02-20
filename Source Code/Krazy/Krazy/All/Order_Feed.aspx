<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Order_Feed.aspx.cs" Inherits="Krazy.Order_Feed" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
         <table class="table table-hover">
             <tr>
                 <td>Flavor Rating</td>
                 <td>
                     <asp:DropDownList ID="DropDownList1" runat="server">
                         <asp:ListItem>--Select--</asp:ListItem>
                         <asp:ListItem>Delicious</asp:ListItem>
                         <asp:ListItem>Average</asp:ListItem>
                         <asp:ListItem>Tasteless</asp:ListItem>
                     </asp:DropDownList>
                 </td>
             </tr>
             <tr>
                 <td>Delivery Rating</td>
                 <td>
                     <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                         <asp:ListItem>Satisfied</asp:ListItem>
                         <asp:ListItem>Not Satisfied</asp:ListItem>
                     </asp:RadioButtonList>
                 </td>
             </tr>
             <tr>
                 <td>Additional Comments</td>
                 <td>
                     <asp:TextBox ID="txtcomments" TextMode="MultiLine" runat="server"></asp:TextBox>
                 </td>
             </tr>
             <tr>
                 <td></td>
                 <td>
                     <asp:Button ID="btnsavefeed" CssClass="btn btn-success" runat="server" Text="Save" OnClick="btnsavefeed_Click" />
                     <asp:Button ID="btnclearfeed" runat="server" CssClass="btn btn-danger" Text="Clear" OnClick="btnclearfeed_Click" />
                </td>
             </tr>
         </table>
       </div>
     <div class="container" style="color: #FF0000">
        <asp:Label ID="lblmsg" runat="server"></asp:Label>
    </div>
</asp:Content>
