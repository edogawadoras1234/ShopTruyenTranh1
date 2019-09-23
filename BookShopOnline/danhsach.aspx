<%@ Page Title="Sách" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="danhsach.aspx.cs" Inherits="BookShopOnline.BookList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>

    </style>
    <body style="background-image:url(../Images/backg.png);font-size:20px"> 
      <section style="margin-top:150px">
         <div>
         <hgroup>
         <h2><%: Page.Title %></h2>
         </hgroup>
         <asp:ListView ID="bookList" runat="server" DataKeyNames="MaSach" GroupItemCount="4" ItemType="BookShopOnline.Models.Book" SelectMethod="GetBooks">
         <EmptyDataTemplate>
             <table >
                 <tr>
                     <td>Không có quyển sách nào</td>
                 </tr>
             </table>
         </EmptyDataTemplate>
         <EmptyItemTemplate>
         <td/>
         </EmptyItemTemplate>
         <GroupTemplate>
             <tr id="itemPlaceholderContainer" runat="server">
             <td id="itemPlaceholder" runat="server"></td>
          </tr>
         </GroupTemplate>
         <ItemTemplate>
              <td runat="server">
                  <table >
                     <tr>
                     <td >
                         <a href="BookDetails.aspx?bookID=<%#:Item.MaSach%>">
                         <img src ="/Images/<%#:Item.HinhAnh%>" width="180" height="225" style="border:solid" /></a>
                    </td>
                     </tr>
             <tr>
          <td style="background-color:lightcyan; padding-top:10px;">
         <a href="BookDetails.aspx?bookID=<%#:Item.MaSach%>">
         <span >
         <%#:Item.TenSach%>
             </span>
             </a>
             <br />
             <span>
         <b>Giá: </b><%#:String.Format("{0:c}",Item.GiaSach)%>
          </span>

             <br />
              <a href="AddToCart.aspx?bookID=<%#:Item.MaSach%>">
     <span>
         <b>Thêm vào giỏ sách<b>
            </span>
             </a>        
             </td>
             </tr>
            <tr>
         <td>&nbsp;</td>
         </tr>
         </table>
         </p>
         </td>
         </ItemTemplate>
         <LayoutTemplate>
                  <table style="width:100%;">
                  <tbody>
                      <tr>
                      <td>
                          <table id="groupPlaceholderContainer" runat="server" style="width:100%">
                            <tr id="groupPlaceholder"></tr>
                     </table>
              </td>
                 </tr>
                 <tr>
             <td></td>
             </tr>
         <tr></tr>
         </tbody>
         </table>
         </LayoutTemplate>
         </asp:ListView>
         </div>
         </section>
        </body>
</asp:Content>
