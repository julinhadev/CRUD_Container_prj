<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CRUD_Container_prj._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>Porto!</h1>
        <p class="lead">Bem-vindo ao sistema de gerenciamento de Contêiner!</p>
        <a href="https://localhost:44354/Container" class="btn btn-primary btn-lg">Contêiner &raquo;</a>
        <a href="https://localhost:44354/Movimentacao" class="btn btn-primary btn-lg">Movimentação &raquo;</a>
        <a href="https://localhost:44354/Relatorio" class="btn btn-primary btn-lg">Relatório &raquo;</a>
    </div>   

</asp:Content>
