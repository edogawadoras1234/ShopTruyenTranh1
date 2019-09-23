<%@ Page Title="Đăng kí" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="dangki.aspx.cs" Inherits="BookShopOnline.dangki" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <body style="margin-top:150px;background-image:url(../Images/backg.png);font-size:20px"> 

    <h2><%: Title %></h2>

        <style type="text/css">
    .auto-style1 {
        width: auto;
        height:23px;
    }
    .auto-style3 {
        height: 23px;
    }
    .auto-style6 {
        height: 24px;
        width: 229px;
    }
    .auto-style7 {
        height: 23px;
        width: auto;
    }
    .auto-style17 {
        height: 18px;
        width: 229px;
    }
    .auto-style22 {
        height: 26px;
        width: auto;
    }
    .auto-style23 {
        height: 6px;
        width: 229px;
    }
    .auto-style24 {
        height: 23px;
        width: auto;
    }
    .auto-style25 {
        width: auto;
    }
    .auto-style26 {
        height: 24px;
        width: auto;
    }
    .auto-style27 {
        height: 18px;
        width: auto;
    }
    .auto-style31 {
        width: 229px;
    }
    .auto-style32 {
        height: 23px;
        width: 174px;
    }
    .auto-style33 {
        height: 6px;
        width: 174px;
    }
    .auto-style34 {
        width: 174px;
    }
    .auto-style35 {
        height: 24px;
        width: 174px;
    }
    .auto-style36 {
        height: 18px;
        width: 174px;
    }
    </style>

   <div id="TableWrapper" >
<table class="auto-style1" runat="server" id="FormTable">
    <tr>
        <td class="auto-style24">
            <p style="width: 127px">Tên</p>
        </td>
        <td class="auto-style32">
            <asp:TextBox ID="Name" runat="server" BackColor="White" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" ForeColor="Black" Height="30px"></asp:TextBox>
        </td>
        <td class="auto-style7">
            <asp:Label ID="ten" runat="server" Text="Nhập&nbsp;tên" CssClass="ErrorMessage" Visible ="False" BorderStyle="None"></asp:Label>
            
        </td>
    </tr>
    <tr>
        <td class="auto-style22">
            <p style="width: 178px">Tài khoản email</p>
        </td>
        <td class="auto-style33">
            <asp:TextBox ID="EmailAddress" runat="server" BackColor="White" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" ForeColor="Black"></asp:TextBox>
        </td>
        <td class="auto-style23">
            <asp:Label ID="email" runat="server" Text="Nhập&nbsp;Email" CssClass="ErrorMessage" Visible ="False" BorderStyle="None"></asp:Label>
           </td>
    </tr>
    <tr>
        <td class="auto-style25">
            <p style="width: 249px">Xác thực tài khoản email</p>
        </td>
        <td class="auto-style34">
            <asp:TextBox ID="ConfirmEmailAddress" runat="server" BackColor="White" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" ForeColor="Black"></asp:TextBox>
        </td>
        <td class="auto-style31">
            <asp:Label ID="xnemail" runat="server" Text="Xác&nbsp;nhận&nbsp;Email" CssClass="ErrorMessage" Visible ="false"></asp:Label>
          </td>
    </tr>
    <tr>
        <td class="auto-style26">
            <p style="width: 157px">Mật Khẩu</p>
        </td>
        <td class="auto-style35">
            <asp:TextBox ID="Password" runat="server" BackColor="White" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" ForeColor="Black"></asp:TextBox>
        </td>
        <td class="auto-style6">
        <asp:Label ID="mk" runat="server" Text="Nhập mật khẩu" CssClass="ErrorMessage" Visible ="false"></asp:Label>    
        </td>
    </tr>
    <tr>
        <td class="auto-style26">
           <p style="width: 168px">Địa Chỉ</p>           
        </td>
        <td class="auto-style35">
            <asp:TextBox ID="ConfirmPassword" runat="server" BackColor="White" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" ForeColor="Black"></asp:TextBox>
        </td>
        <td class="auto-style6"><asp:Label ID="xnmk" runat="server" Text="Nhập&nbsp;địa&nbsp;chỉ&nbsp;" CssClass="ErrorMessage" Visible ="false"></asp:Label>    
        </td>
    </tr>
    <tr>
    </tr>
    <tr>
        <td class="auto-style25">&nbsp;</td>
        <td class="auto-style34">
            <asp:Button ID="SendButton" runat="server" ForeColor="Red" Text="Đăng kí" OnClick="SendButton_Click" CssClass="buttonsend"/>
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        </td>
        <td class="auto-style31">&nbsp;
            
            <br />
            
        </td>
    </tr>
</table>
        </div>
        </body>
</asp:Content>
