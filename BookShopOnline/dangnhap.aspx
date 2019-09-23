<%@ Page Title="Đăng nhập" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="dangnhap.aspx.cs" Inherits="BookShopOnline.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
   <style>
       .btn{
           background-color:white;
           color:black;
           font-size:15px;
       }
       .btn:hover{
           background-color:aqua;
           color:yellow;
           font-size:20px;
       }
   </style>

    <body style="background-image:url(../Images/backg.png);margin-top:150px;font-size:20px"> 
    <div>   
       <h2><%: Title %></h2>
    <asp:TextBox ID="TK" runat="server" BackColor="White" BorderColor="Black" BorderStyle="Inset"></asp:TextBox>
    <br />
        <br />
    <asp:TextBox ID="MK" runat="server" BackColor="White" BorderColor="Black" BorderStyle="Inset"></asp:TextBox>
    <br />
   &nbsp;&nbsp;&nbsp;&nbsp;
        <br />
         <asp:Button ID="DangNhap" CssClass="btn" runat="server" Text="Đăng nhập" BorderStyle="Inset"  OnClick="DangNhap_Click"/>
    <br /> 
        <br />
        <a href="quenmatkhau.aspx" > <p style="font-style:italic">Quên mật khẩu?</p></a><br \>
  <asp:Label ID="thongbao" runat="server" Text=""></asp:Label>
        </div>
</asp:Content>
