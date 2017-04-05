<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AjoutFournisseur.aspx.cs" Inherits="TestAjoutFournisseur.AjoutFournisseur" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <title>Ajout et commande fournisseur</title>
</head>
<body>
    <div class="container">
        <form id="form" runat="server">
            <div class="jumbotron">
                <div class="row">
                    <h1 class="text-center">Ajout d'un fournisseur</h1>
                    <hr />
                </div>
                <div class="row">
                    <div class="form-group">
                        <label for="TextNomFournisseur">Nom du fournisseur :</label>
                        <asp:TextBox CssClass="form-control" ID="TextNomFournisseur" runat="server"></asp:TextBox>
                    </div>
                </div>
                <br />
                <div class="row">
                    <asp:Button ID="BtnAddFournisseur" runat="server" Text="Ajouter" CssClass="btn btn-block btn-primary" OnClick="BtnAddFournisseur_Click" />
                </div>
            </div>
            <div class="jumbotron">
                <div class="row">
                    <h1 class="text-center">Création d'une commande fournisseur</h1>
                    <hr />
                </div>
                <div class="row">
                    <asp:SqlDataSource runat="server" ID="SqlDataSourceFournisseur" ConnectionString='<%$ ConnectionStrings:Sebo_CarysConnectionString %>' SelectCommand="SELECT * FROM [Fournisseur]"></asp:SqlDataSource>
                    <label for="TextDateCommande">Choix du fournisseur : </label>
                    <asp:DropDownList ID="DropDownFournisseur" runat="server" CssClass="form-control" DataSourceID="SqlDataSourceFournisseur" DataTextField="NomFournisseur" DataValueField="IdFournisseur"></asp:DropDownList>
                </div>
                <br />
                <div class="row">

                    <div class="col-lg-6">
                        <div class="row">
                            <label for="TextDateCommande">Date de commande : </label>
                            <asp:TextBox ID="TextDateCommande" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                        <div class="row">
                            <label for="TextQte">Article à commander : </label>
                            <asp:DropDownList ID="DropDownArticles" runat="server" CssClass="form-control" DataSourceID="SqlDataSourceArticles" DataTextField="LibelleArticle" DataValueField="Reference"></asp:DropDownList>
                            <asp:SqlDataSource runat="server" ID="SqlDataSourceArticles" ConnectionString='<%$ ConnectionStrings:Sebo_CarysConnectionString %>' SelectCommand="SELECT * FROM [Article]"></asp:SqlDataSource>
                        </div>
                        <div class="row">
                            <label for="TextDateCommande">Prix Unitaire fournisseur : </label>
                            <asp:TextBox ID="TextPrixUnitaire" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                        <div class="row">
                            <label for="TextQte">Quantité</label>
                            <asp:TextBox ID="TextQuantite" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-lg-6">

                    </div>
                </div>
                <br />
                <div class="row">
                    <div class="col-lg-6">
                        <asp:Button ID="BtnAddArticle" runat="server" CssClass="btn btn-primary btn-block" Text="Ajouter Article" />
                    </div>
                    <div class="col-lg-6">
                        <asp:Button ID="BtnAddCommande" runat="server" CssClass="btn btn-primary btn-block" Text="Créer commande" />
                    </div>
                </div>
            </div>
        </form>
    </div>
</body>
</html>
