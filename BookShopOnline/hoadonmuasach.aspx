<%@ Page Title="Mua Sách" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="hoadonmuasach.aspx.cs" Inherits="BookShopOnline.hoadonmuasach" %>
    
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <body style="margin-top:100px"> 
       <h1>Hóa Đơn</h1>
          <asp:FormView ID="bookDetail" runat="server" ItemType="BookShopOnline.Models.Book" SelectMethod ="Hoadon" RenderOuterTable="false">
 <ItemTemplate >
     <tr>
            <td>&nbsp;Tên sách:</td>
            <td>&nbsp;
                <%#:Item.TenSach %>
            </td>
        </tr>
     <br />

 
     <tr>
            <td>&nbsp;Giá:</td>
            <td>&nbsp;
                <%#: String.Format("{0:c}",Item.GiaSach)%>
            </td>
        </tr>
     <br />
     <tr>
            <td>&nbsp;Mã Sách:</td>
            <td>&nbsp;
                <%#:Item.MaSach %>
            </td>
        </tr>
     <br />
  <tr>        
 </ItemTemplate>
 </asp:FormView>
    <table style="width:100%;">    
        <tr>
            <td>&nbsp;Số lượng</td>
            <td>&nbsp;
             <asp:TextBox ID="soluong" runat="server"></asp:TextBox>
            </td>
        </tr>

        <tr>
            <td>&nbsp;Họ và tên</td>
            <td>&nbsp;
             <asp:TextBox ID="hovaten" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;SĐT</td>
            <td>&nbsp;
             <asp:TextBox ID="sdt" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;Địa chỉ</td>
            <td>&nbsp;
             <asp:TextBox ID="diachi" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;Email</td>
            <td>&nbsp;
             <asp:TextBox ID="Temail" runat="server"></asp:TextBox>
            </td>
        </tr>

         <tr>
            <td>&nbsp;Hình thức thanh toán</td>
            <td>&nbsp;
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem Value="VND">VNĐ</asp:ListItem>
                    <asp:ListItem Value="USD">USD</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td></td>
            <td>&nbsp;
             <asp:Button ID="btnthanhtoan" text="Thanh toán" runat="server"/>
            </td>
        </tr>

    </table>
        </body>
</asp:Content>
