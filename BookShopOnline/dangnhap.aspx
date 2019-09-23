<%@ Page Title="Đăng nhập" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="dangnhap.aspx.cs" Inherits="BookShopOnline.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <body style="background-image:url(../Images/backg.png)"> 
    <div style="margin-top:100px">   
       <h2><%: Title %></h2>
    <asp:TextBox ID="TK" runat="server" BackColor="White" BorderColor="Black" BorderStyle="Inset"></asp:TextBox>
    <br />
        <br />
    <asp:TextBox ID="MK" runat="server" BackColor="White" BorderColor="Black" BorderStyle="Inset"></asp:TextBox>
    <br />
        <br />

   &nbsp;&nbsp;&nbsp;&nbsp;
         <asp:Button ID="DangNhap" runat="server" Text="Đăng nhập" BorderStyle="Inset" ForeColor="#FF0066" OnClick="DangNhap_Click"/>
    <br /> 
         <br />
        <a href="quenmatkhau.aspx" style="font-size:20px;"> <p style="font-style:italic">Quên mật khẩu?</p></a><br \>
  <asp:Label ID="thongbao" runat="server" Text=""></asp:Label>
        </div>
</asp:Content>
