<%@ Page Title="Liên hệ" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Lienhe.aspx.cs" Inherits="BookShopOnline.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <body style="background-image:url(../Images/backg.png)"> 
    <div style="margin-top:200px">
    <h2><%: Title %>.</h2>
    <h3>Nếu có bất kì bộ truyện nào được yêu mến, các bạn có thể liên hệ với </h3>
    <address>
        Shop Truyện Tranh<br />
        10/11 Phước Long - Nha Trang<br />
        <abbr title="Phone">SĐT:</abbr>
        012.345.6789
    </address>

    <address>
        <strong>Email:</strong>   <a href="mailto:Support@example.com">edogawadoras123@gmail.com</a><br />
        <strong>Marketing:</strong> <a href="mailto:Marketing@example.com">Marketing@gmail.com</a>
    </address>
        </div>
        </body>
</asp:Content>
