<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="AddCars1.aspx.cs" Inherits="ArabaSatışSitesi1.AddCars1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
    <table class="nav-justified" style="margin-bottom: 6px">
        <tr>
            <td style="width: 251px">Araba markasını&nbsp; seçiniz</td>
            <td>
                <asp:DropDownList ID="combobox" runat="server" Height="16px" Width="193px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="width: 251px; height: 22px">Araba modelini seçiniz</td>
            <td style="height: 22px">
                <asp:TextBox ID="tboxModel" runat="server" Width="180px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 251px; height: 20px">Araba fotoğraf linki</td>
            <td style="height: 20px">
                <asp:TextBox ID="tboxPhoto" runat="server" Width="180px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 251px">Araba yakıt tipi giriniz</td>
            <td>
                <asp:TextBox ID="tboxFuel" runat="server" Width="180px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 251px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 251px">Açıklama giriniz </td>
            <td>
                <asp:TextBox ID="tboxDescription" runat="server" Height="115px" TextMode="MultiLine" Width="183px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 251px">Araç satıcısı</td>
            <td>
                <asp:TextBox ID="tboxSeller" runat="server" Width="180px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 251px; height: 23px">İİletişim telefon numarası</td>
            <td style="height: 23px">
                <asp:TextBox ID="tboxContact" runat="server" Width="180px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 251px; height: 27px">Araç fiyatı</td>
            <td style="height: 27px">
                <asp:TextBox ID="tboxPrice" runat="server" Width="180px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 251px; height: 27px">&nbsp;</td>
            <td style="height: 27px">
                <asp:Button ID="btnSend" runat="server" Height="36px" OnClick="btnSend_Click2" Text="İlanı Gönder" Width="194px" />
            </td>
        </tr>
    </table>
</form>
</asp:Content>
