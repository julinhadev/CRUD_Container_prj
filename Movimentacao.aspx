<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Movimentacao.aspx.cs" Inherits="CRUD_Container_prj.Movimentacao" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <div style="font-size:x-large" align="center">Formulário de Movimentação de Contêiner</div>
        <br />
        <table class="nav-justified">
            <tr>
                <td class="modal-lg" style="width: 153px; height: 30px;">Código do Cliente:</td>
                <td style="height: 30px">
                    <asp:TextBox ID="txtCodMov" runat="server"></asp:TextBox>
                    <asp:Button ID="btnBuscaMov" runat="server" BackColor="#666666" Font-Bold="True" ForeColor="White" OnClick="btnBuscaMov_Click" Text="Pegar dados" />
                </td>
            </tr>
            <tr>
                <td class="modal-lg" style="width: 153px; height: 30px;">Tipo de Movimentação:</td>
                <td style="height: 30px">
                    <asp:DropDownList ID="ddTipoMov" runat="server">
                        <asp:ListItem>Descarga</asp:ListItem>
                        <asp:ListItem>Embarque</asp:ListItem>
                        <asp:ListItem>Gate In</asp:ListItem>
                        <asp:ListItem>Gate Out</asp:ListItem>
                        <asp:ListItem>Posicionamento</asp:ListItem>
                        <asp:ListItem>Pesagem</asp:ListItem>
                        <asp:ListItem>Scanner</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="modal-lg" style="width: 153px; height: 29px;">Data de Início:</td>
                <td style="height: 29px">
                    <asp:TextBox ID="txtDtInicio" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="modal-lg" style="width: 153px; height: 29px">Data Final:</td>
                <td style="height: 29px">
                    <asp:TextBox ID="txtDtFim" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="modal-lg" style="width: 153px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="modal-lg" style="width: 153px; height: 30px"></td>
                <td style="height: 30px">
        <asp:Button ID="btnCadastrarMov0" runat="server" BackColor="#666666" Font-Bold="True" ForeColor="White" OnClick="btnCadastrarMov_Click" Text="Cadastrar" />
        <asp:Button ID="btnAlterarMov" runat="server" BackColor="#666666" Font-Bold="True" ForeColor="White" OnClick="btnAlterarMov_Click" Text="Alterar" />
        <asp:Button ID="btnDeletar" runat="server" BackColor="#666666" Font-Bold="True" ForeColor="White" OnClick="btnDeletar_Click" Text="Deletar" />
        <asp:Button ID="btnConsultar" runat="server" BackColor="#666666" Font-Bold="True" ForeColor="White" OnClick="btnConsultar_Click" Text="Consultar" />
                </td>
            </tr>
            <tr>
                <td class="modal-lg" style="width: 153px"></td>
                <td>
                    <asp:GridView ID="ConsMov" runat="server" style="margin-left: 0px" Width="773px">
                    </asp:GridView>
                </td>
            </tr>
        </table>
    </div>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
</asp:Content>
