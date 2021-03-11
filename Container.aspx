<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Container.aspx.cs" Inherits="CRUD_Container_prj.Container" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <div style="font-size:x-large" align="center">Formulário do Contêiner</div>
        <table class="nav-justified">
            <tr>
                <td class="modal-lg" style="width: 155px">Código do Cliente:</td>
                <td>
                    <asp:TextBox ID="txtCodCliente" runat="server"></asp:TextBox>
                    <asp:Button ID="btnBusca" runat="server" BackColor="#666666" Font-Bold="True" ForeColor="White" OnClick="btnBusca_Click" Text="Pegar dados" />
                </td>
            </tr>
            <tr>
                <td class="modal-lg" style="width: 155px; height: 20px">Nome do Cliente:</td>
                <td style="height: 20px">
                    <asp:TextBox ID="txtNmCliente" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="modal-lg" style="width: 155px">Número do Contêiner:</td>
                <td>
                    <asp:TextBox ID="txtNumContainer" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="modal-lg" style="width: 155px">Tipo:</td>
                <td>
                    <asp:DropDownList ID="ddTipo" runat="server">
                        <asp:ListItem>20</asp:ListItem>
                        <asp:ListItem>40</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="modal-lg" style="width: 155px">Status:</td>
                <td>
                    <asp:DropDownList ID="ddStatus" runat="server">
                        <asp:ListItem>Cheio</asp:ListItem>
                        <asp:ListItem>Vazio</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="modal-lg" style="width: 155px">Categoria:</td>
                <td>
                    <asp:DropDownList ID="ddCategoria" runat="server">
                        <asp:ListItem>Exportação</asp:ListItem>
                        <asp:ListItem>Importação</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="modal-lg" style="width: 155px">&nbsp;</td>
                <td>
        <asp:Button ID="btnCadastrar" runat="server" BackColor="#666666" Font-Bold="True" ForeColor="White" OnClick="btnCadastrar_Click" Text="Cadastrar" />
        <asp:Button ID="btnAlterar" runat="server" BackColor="#666666" Font-Bold="True" ForeColor="White" OnClick="btnAlterar_Click" Text="Alterar" />
        <asp:Button ID="btnDeletar" runat="server" BackColor="#666666" Font-Bold="True" ForeColor="White" OnClick="btnDeletar_Click" OnClientClick="return confirm('Tem certeza que deseja deletar?');" Text="Deletar" />
        <asp:Button ID="btnConsultar" runat="server" BackColor="#666666" Font-Bold="True" ForeColor="White" OnClick="btnConsultar_Click" Text="Consultar" />
                </td>
            </tr>
            <tr>
                <td class="modal-lg" style="width: 155px">&nbsp;</td>
                <td>
        <asp:GridView ID="Consulta" runat="server" Width="775px">
        </asp:GridView>
                </td>
            </tr>
        </table>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
    </div>
</asp:Content>
