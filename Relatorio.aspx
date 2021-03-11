<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Relatorio.aspx.cs" Inherits="CRUD_Container_prj.Relatorio" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <div style="font-size:x-large">Relatório de movimentações</div>
        <asp:ListView ID="ListView1" runat="server" DataKeyNames="Código Cliente" DataSourceID="SqlDataSource2">
            <AlternatingItemTemplate>
                <tr style="background-color: #FFFFFF;color: #284775;">
                    <td>
                        <asp:Label ID="Código_ClienteLabel" runat="server" Text='<%# Eval("[Código Cliente]") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Nome_do_ClienteLabel" runat="server" Text='<%# Eval("[Nome do Cliente]") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Número_do_ContêinerLabel" runat="server" Text='<%# Eval("[Número do Contêiner]") %>' />
                    </td>
                    <td>
                        <asp:Label ID="TipoLabel" runat="server" Text='<%# Eval("Tipo") %>' />
                    </td>
                    <td>
                        <asp:Label ID="StatusLabel" runat="server" Text='<%# Eval("Status") %>' />
                    </td>
                    <td>
                        <asp:Label ID="CategoriaLabel" runat="server" Text='<%# Eval("Categoria") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Tipo_de_MovimentaçãoLabel" runat="server" Text='<%# Eval("[Tipo de Movimentação]") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Movimentação_TotalLabel" runat="server" Text='<%# Eval("[Movimentação Total]") %>' />
                    </td>
                </tr>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <tr style="background-color: #999999;">
                    <td>
                        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                    </td>
                    <td>
                        <asp:Label ID="Código_ClienteLabel1" runat="server" Text='<%# Eval("[Código Cliente]") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="Nome_do_ClienteTextBox" runat="server" Text='<%# Bind("[Nome do Cliente]") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="Número_do_ContêinerTextBox" runat="server" Text='<%# Bind("[Número do Contêiner]") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="TipoTextBox" runat="server" Text='<%# Bind("Tipo") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="StatusTextBox" runat="server" Text='<%# Bind("Status") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="CategoriaTextBox" runat="server" Text='<%# Bind("Categoria") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="Tipo_de_MovimentaçãoTextBox" runat="server" Text='<%# Bind("[Tipo de Movimentação]") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="Movimentação_TotalTextBox" runat="server" Text='<%# Bind("[Movimentação Total]") %>' />
                    </td>
                </tr>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                    <tr>
                        <td>No data was returned.</td>
                    </tr>
                </table>
            </EmptyDataTemplate>
            <InsertItemTemplate>
                <tr style="">
                    <td>
                        <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                    </td>
                    <td>
                        <asp:TextBox ID="Código_ClienteTextBox" runat="server" Text='<%# Bind("[Código Cliente]") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="Nome_do_ClienteTextBox" runat="server" Text='<%# Bind("[Nome do Cliente]") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="Número_do_ContêinerTextBox" runat="server" Text='<%# Bind("[Número do Contêiner]") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="TipoTextBox" runat="server" Text='<%# Bind("Tipo") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="StatusTextBox" runat="server" Text='<%# Bind("Status") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="CategoriaTextBox" runat="server" Text='<%# Bind("Categoria") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="Tipo_de_MovimentaçãoTextBox" runat="server" Text='<%# Bind("[Tipo de Movimentação]") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="Movimentação_TotalTextBox" runat="server" Text='<%# Bind("[Movimentação Total]") %>' />
                    </td>
                </tr>
            </InsertItemTemplate>
            <ItemTemplate>
                <tr style="background-color: #E0FFFF;color: #333333;">
                    <td>
                        <asp:Label ID="Código_ClienteLabel" runat="server" Text='<%# Eval("[Código Cliente]") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Nome_do_ClienteLabel" runat="server" Text='<%# Eval("[Nome do Cliente]") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Número_do_ContêinerLabel" runat="server" Text='<%# Eval("[Número do Contêiner]") %>' />
                    </td>
                    <td>
                        <asp:Label ID="TipoLabel" runat="server" Text='<%# Eval("Tipo") %>' />
                    </td>
                    <td>
                        <asp:Label ID="StatusLabel" runat="server" Text='<%# Eval("Status") %>' />
                    </td>
                    <td>
                        <asp:Label ID="CategoriaLabel" runat="server" Text='<%# Eval("Categoria") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Tipo_de_MovimentaçãoLabel" runat="server" Text='<%# Eval("[Tipo de Movimentação]") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Movimentação_TotalLabel" runat="server" Text='<%# Eval("[Movimentação Total]") %>' />
                    </td>
                </tr>
            </ItemTemplate>
            <LayoutTemplate>
                <table runat="server">
                    <tr runat="server">
                        <td runat="server">
                            <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                <tr runat="server" style="background-color: #E0FFFF;color: #333333;">
                                    <th runat="server">Código Cliente</th>
                                    <th runat="server">Nome do Cliente</th>
                                    <th runat="server">Número do Contêiner</th>
                                    <th runat="server">Tipo</th>
                                    <th runat="server">Status</th>
                                    <th runat="server">Categoria</th>
                                    <th runat="server">Tipo de Movimentação</th>
                                    <th runat="server">Movimentação Total</th>
                                </tr>
                                <tr id="itemPlaceholder" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr runat="server">
                        <td runat="server" style="text-align: center;background-color: #5D7B9D;font-family: Verdana, Arial, Helvetica, sans-serif;color: #FFFFFF">
                            <asp:DataPager ID="DataPager1" runat="server">
                                <Fields>
                                    <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                                </Fields>
                            </asp:DataPager>
                        </td>
                    </tr>
                </table>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <tr style="background-color: #E2DED6;font-weight: bold;color: #333333;">
                    <td>
                        <asp:Label ID="Código_ClienteLabel" runat="server" Text='<%# Eval("[Código Cliente]") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Nome_do_ClienteLabel" runat="server" Text='<%# Eval("[Nome do Cliente]") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Número_do_ContêinerLabel" runat="server" Text='<%# Eval("[Número do Contêiner]") %>' />
                    </td>
                    <td>
                        <asp:Label ID="TipoLabel" runat="server" Text='<%# Eval("Tipo") %>' />
                    </td>
                    <td>
                        <asp:Label ID="StatusLabel" runat="server" Text='<%# Eval("Status") %>' />
                    </td>
                    <td>
                        <asp:Label ID="CategoriaLabel" runat="server" Text='<%# Eval("Categoria") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Tipo_de_MovimentaçãoLabel" runat="server" Text='<%# Eval("[Tipo de Movimentação]") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Movimentação_TotalLabel" runat="server" Text='<%# Eval("[Movimentação Total]") %>' />
                    </td>
                </tr>
            </SelectedItemTemplate>
        </asp:ListView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:PortoTConnectionString %>" SelectCommand="SELECT * FROM [TOTAL_MOVIMENTACOES_CLIENTE]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
&nbsp;&nbsp;&nbsp;
        <br />
&nbsp;&nbsp;
        <asp:ListView ID="ListView2" runat="server" DataSourceID="SqlDataSource3">
            <AlternatingItemTemplate>
                <li style="background-color: #FFFFFF;color: #284775;">total_movimentacao:
                    <asp:Label ID="total_movimentacaoLabel" runat="server" Text='<%# Eval("total_movimentacao") %>' />
                    <br />
                </li>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <li style="background-color: #999999;">total_movimentacao:
                    <asp:TextBox ID="total_movimentacaoTextBox" runat="server" Text='<%# Bind("total_movimentacao") %>' />
                    <br />
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                </li>
            </EditItemTemplate>
            <EmptyDataTemplate>
                No data was returned.
            </EmptyDataTemplate>
            <InsertItemTemplate>
                <li style="">total_movimentacao:
                    <asp:TextBox ID="total_movimentacaoTextBox" runat="server" Text='<%# Bind("total_movimentacao") %>' />
                    <br />
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                </li>
            </InsertItemTemplate>
            <ItemSeparatorTemplate>
<br />
            </ItemSeparatorTemplate>
            <ItemTemplate>
                <li style="background-color: #E0FFFF;color: #333333;">total_movimentacao:
                    <asp:Label ID="total_movimentacaoLabel" runat="server" Text='<%# Eval("total_movimentacao") %>' />
                    <br />
                </li>
            </ItemTemplate>
            <LayoutTemplate>
                <ul id="itemPlaceholderContainer" runat="server" style="font-family: Verdana, Arial, Helvetica, sans-serif;">
                    <li runat="server" id="itemPlaceholder" />
                </ul>
                <div style="text-align: center;background-color: #5D7B9D;font-family: Verdana, Arial, Helvetica, sans-serif;color: #FFFFFF;">
                </div>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <li style="background-color: #E2DED6;font-weight: bold;color: #333333;">total_movimentacao:
                    <asp:Label ID="total_movimentacaoLabel" runat="server" Text='<%# Eval("total_movimentacao") %>' />
                    <br />
                </li>
            </SelectedItemTemplate>
        </asp:ListView>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:PortoTConnectionString %>" SelectCommand="SELECT * FROM [TOTAL_MOVIMENTACOES]"></asp:SqlDataSource>
&nbsp;<p style="margin-left: 1040px">
        <br />
        </p>
    </div>
</asp:Content>
