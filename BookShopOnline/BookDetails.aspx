<%@ Page Title="Chi Tiết" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="BookDetails.aspx.cs" Inherits="BookShopOnline.BookDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div style="margin-top:100px">
    <asp:FormView ID="bookDetail" runat="server" ItemType="BookShopOnline.Models.Book" SelectMethod ="GetDetails" RenderOuterTable="false">
 <ItemTemplate >
 <div >
 <h1><%#:Item.TenSach %></h1>
 </div>
 <br />
 <table>
 <tr>
 <td>
 <img src="/Images/<%#:Item.HinhAnh %>"
 style="border:solid; height:225px" alt="<%#:Item.TenSach %>"/>
 </td>
 <td>&nbsp;</td>
 <td style="vertical-align: top; text-align:left;">
 <b>Mô tả sách:</b><br /><%#:Item.MoTa %>
 <br />
 <span><b>Giá:</b>&nbsp;<%#: String.Format("{0:c}",Item.GiaSach)%></span>
 <br />
 <span><b>Mã sách:</b>&nbsp;<%#:Item.MaSach %></span>
 <br />
  <span><button>
          <a href="hoadonmuasach.aspx?bookID=<%#:Item.MaSach%>">Mua sách</a>
        </button></span>
 <br />
 </td>
 </tr>
 </table>
 </ItemTemplate>
 </asp:FormView>
        </div>
</asp:Content>
