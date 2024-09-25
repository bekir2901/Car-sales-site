<%@ Page Title="" Language="C#" MasterPageFile="~/AdminLayout.Master" AutoEventWireup="true" CodeBehind="AdminAddCars.aspx.cs" Inherits="ArabaSatışSitesi1.AdminAddCars" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <asp:DataList ID="DataList1" runat="server">
           <ItemTemplate>
                 <table class="nav-justified" style="margin-bottom: 6px">
        <tr>
            <td style="width: 251px">&nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 251px; height: 22px">Araba modeli:</td>
            <td style="height: 22px">
                <asp:TextBox ID="tboxModel" runat="server" Width="180px" ReadOnly="True" Text='<%# Eval("CarModel") %>'></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 251px; height: 20px">Araba fotoğrafı:</td>
            <td style="height: 20px">
                <asp:TextBox ID="tboxPhoto" runat="server" Width="180px" ReadOnly="True" Text='<%# Eval("CarPhoto") %>'></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 251px; height: 60px;">Araba yakıt tipi:</td>
            <td style="height: 60px">
                <asp:TextBox ID="tboxFuel" runat="server" Width="180px" ReadOnly="True" Text='<%# Eval("CarFuelType") %>'></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 251px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 251px">Açıklama:</td>
            <td>
                <asp:TextBox ID="tboxDescription" runat="server" Height="115px" TextMode="MultiLine" Width="183px" ReadOnly="True" Text='<%# Eval("CarDescription") %>'></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 251px">Araç satıcısı:</td>
            <td>
                <asp:TextBox ID="tboxSeller" runat="server" Width="180px" ReadOnly="True" Text='<%# Eval("CarSeller") %>'></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 251px; height: 23px">İİletişim telefon numarası:</td>
            <td style="height: 23px">
                <asp:TextBox ID="tboxContact" runat="server" Width="180px" ReadOnly="True" Text='<%# Eval("CarContact") %>'></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 251px; height: 27px">Araç fiyatı:</td>
            <td style="height: 27px">
                <asp:TextBox ID="tboxPrice" runat="server" Width="180px" ReadOnly="True" Text='<%# Eval("CarPrice") %>'></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 251px; height: 27px">&nbsp;</td>
            <td style="height: 27px">
                &nbsp;</td>
        </tr>
                     <tr>
                         <td style="width: 251px; height: 27px">&nbsp;</td>
                         <td style="height: 27px">
                           <a href="ApproveCars.aspx?carid=<%# Eval("CarID") %>"><div class="btn btn-danger">Onayla</div></a> 
                         </td>
                     </tr>
                     <tr>
                         <td style="width: 251px; height: 27px">&nbsp;</td>
                         <td style="height: 27px">&nbsp;</td>
                     </tr>
                     <tr>
                         <td style="width: 251px; height: 27px; border-bottom-style: solid; border-bottom-width: medium; border-bottom-color: #000000;">&nbsp;</td>
                         <td style="height: 27px; border-bottom-style: solid; border-bottom-width: medium; border-bottom-color: #000000;">&nbsp;</td>
                     </tr>
    </table>
           </ItemTemplate>
        </asp:DataList>
        ++</form>
</asp:Content>
