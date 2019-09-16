﻿<%@ Page Title="Giỏ sách" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ShoppingCart.aspx.cs" Inherits="BookShopOnline.ShoppingCart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <body style="margin-top:100px;background-image:url(../Images/backg.png)">

        <div id="ShoppingCartTitle" runat="server" class="ContentHead"><h1>Shopping
Cart</h1></div>
 <asp:GridView ID="CartList" runat="server" AutoGenerateColumns="False" ShowFooter="True" GridLines="Vertical" CellPadding="4" ItemType="BookShopOnline.Models.CartItem" SelectMethod ="GetShoppingCartItems" CssClass="table table-striped table-bordered" >
 <Columns><asp:BoundField DataField="BookID" HeaderText="ID"
 SortExpression="BookID" />
 <asp:BoundField DataField="Book.TenSach" HeaderText="Tên Sách" />
 <asp:BoundField DataField="Book.GiaSach" HeaderText="Giá Sách"
 DataFormatString="{0:c}"/>
 <asp:TemplateField HeaderText="Số lượng">
 <ItemTemplate>
 <asp:TextBox ID="PurchaseQuantity" Width="40"
 runat="server" Text="<%#: Item.Quantity %>"></asp:TextBox>
 </ItemTemplate>
 </asp:TemplateField>
 <asp:TemplateField HeaderText="Tổng tiền">
 <ItemTemplate>
 <%#: String.Format("{0:c}",
 ((Convert.ToDouble(Item.Quantity)) *
Convert.ToDouble(Item.Book.GiaSach)))%>
 </ItemTemplate>
 </asp:TemplateField>
 <asp:TemplateField HeaderText="Hủy hàng">
 <ItemTemplate>
 <asp:CheckBox id="Remove" runat="server"></asp:CheckBox>
 </ItemTemplate>
 </asp:TemplateField>
 </Columns>
</asp:GridView>
<div>
 <p></p>
 <strong>
 <asp:Label ID="LabelTotalText" runat="server" Text="Tổng tiền:"></asp:Label>
 <asp:Label ID="lblTotal" runat="server" EnableViewState="false"></asp:Label>
 </strong>
</div>
<br />        <table>
<tr>
<td>
<asp:Button ID="UpdateBtn" runat="server" Text="Cập nhật giỏ hàng" OnClick="UpdateBtn_Click" />
</td>
    <td>
<asp:Button ID="Button2" runat="server" Text="Mua Sách" />
</td>
</tr>
</table>

    </body>
</asp:Content>
