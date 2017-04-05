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
                            <asp:TextBox ID="TextDateCommande" CssClass="form-control" runat="server" disabled></asp:TextBox>
                        </div>
                        <br />
                        <div class="row">
                            <label for="TextQte">Article à commander : </label>
                            <asp:DropDownList ID="DropDownArticles" runat="server" CssClass="form-control" DataSourceID="SqlDataSourceArticles" DataTextField="LibelleArticle" DataValueField="Reference"></asp:DropDownList>
                            <asp:SqlDataSource runat="server" ID="SqlDataSourceArticles" ConnectionString='<%$ ConnectionStrings:Sebo_CarysConnectionString %>' SelectCommand="SELECT * FROM [Article]"></asp:SqlDataSource>
                        </div>
                        <br />
                        <div class="row">
                            <label for="TextPrixUnitaire">Prix Unitaire fournisseur : </label>
                            <asp:TextBox ID="TextPrixUnitaire" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                        <br />
                        <div class="row">
                            <label for="TextQte">Quantité</label>
                            <asp:TextBox ID="TextQuantite" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <br />
                    <div class="col-lg-6">
                        <div class="row">
                            <asp:Label ID="LabelIdCommande" runat="server" Text=""></asp:Label>
                        </div>
                        <div class="row">
                            <asp:ListBox ID="ListCommmande" CssClass="form-control" runat="server" DataSourceID="SqlDataSourceCommandeFournisseur" DataTextField="LigneCommande" DataValueField="Reference"></asp:ListBox>
                            <asp:SqlDataSource runat="server" ID="SqlDataSourceCommandeFournisseur" ConnectionString='<%$ ConnectionStrings:Sebo_CarysConnectionString %>' SelectCommand="SELECT LigneCommandeFournisseur.Reference, CONVERT(VARCHAR(1000), LigneCommandeFournisseur.Reference) + ':' + Article.LibelleArticle + ' Quantité : ' +  CONVERT(VARCHAR(1000), LigneCommandeFournisseur.QuantiteCommandeFournisseur) + ' Prix : ' + CONVERT(VARCHAR(1000), LigneCommandeFournisseur.PrixUnitaireFournisseur) AS LigneCommande FROM LigneCommandeFournisseur INNER JOIN Article ON LigneCommandeFournisseur.Reference = Article.Reference WHERE (LigneCommandeFournisseur.NumeroCommandeFournisseur = @NumeroCommandeFournisseur)">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="LabelIdCommande" PropertyName="Text" Name="NumeroCommandeFournisseur" Type="Int16"></asp:ControlParameter>
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </div>
                    </div>
                </div>
                <br />
                <div class="row">
                    <div class="col-lg-4">
                        <asp:Button ID="BtnNewCommande" runat="server" CssClass="btn btn-primary btn-block" Text="Nouvelle commande" OnClick="BtnNewCommande_Click" />
                    </div>
                    <div class="col-lg-4">
                        <asp:Button ID="BtnAddArticle" runat="server" CssClass="btn btn-primary btn-block" Text="Ajouter Article" OnClick="BtnAddArticle_Click" />
                    </div>
                    <div class="col-lg-4">
                        <asp:Button ID="BtnSaveCommande" runat="server" CssClass="btn btn-primary btn-block" Text="Terminer commande" />
                    </div>
                </div>
            </div>
        </form>
    </div>
</body>
</html>
