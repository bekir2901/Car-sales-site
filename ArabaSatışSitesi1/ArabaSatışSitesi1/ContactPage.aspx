<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="ContactPage.aspx.cs" Inherits="ArabaSatışSitesi1.ContactPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <asp:TextBox ID="tboxName" runat="server" ToolTip="İsminizi giriniz" Width="207px"></asp:TextBox>
        <br />
        <br />
        <br />
        <asp:TextBox ID="tboxMail" runat="server" ToolTip="Mail adresinizi giriniz" Width="209px"></asp:TextBox>
        <br />
        <br />
        <br />
        <asp:TextBox ID="tboxMessage" runat="server" Height="128px" TextMode="MultiLine" ToolTip="Mesajınızı giriniz" Width="469px"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="btnSend" runat="server" OnClick="btnSend_Click" Text="Mesajı Gönder" ToolTip="Mesajı gönder" Width="211px" />
    </form>
</asp:Content>
