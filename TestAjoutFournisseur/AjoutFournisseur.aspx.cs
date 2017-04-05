using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TestAjoutFournisseur.Models;

namespace TestAjoutFournisseur
{
    /// <summary>
    /// Code behind de la page d'ajout d'un fournisseur
    /// </summary>
    public partial class AjoutFournisseur : System.Web.UI.Page
    {
        // Entitée de la base de donnée
        private Sebo_CarysEntities _entities = new Sebo_CarysEntities();

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        /// <summary>
        /// Méthode appelée quand l'utilisateur clic sur le bouton ajouter un fournisseur
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void BtnAddFournisseur_Click(object sender, EventArgs e)
        {
            Fournisseur fournisseur = new Fournisseur();
            fournisseur.NomFournisseur = TextNomFournisseur.Text;

            _entities.Fournisseurs.Add(fournisseur);
            _entities.SaveChanges();
        }

        /// <summary>
        /// Méthode appelée quand l'utilisateur clic sur le bouton nouvelle commande
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void BtnNewCommande_Click(object sender, EventArgs e)
        {
            // Création de la commande
            CommandeFournisseur commande = new CommandeFournisseur();
            commande.DateCommandeFournisseur = DateTime.Now;
            commande.IdFournisseur = int.Parse(DropDownFournisseur.SelectedValue);
            // Ajout de la commande à l'entité de la base
            _entities.CommandeFournisseurs.Add(commande);
            // Mise à jour de la base
            _entities.SaveChanges();
            // Récupération de l'id de la nouvelle commande
            LabelIdCommande.Text = _entities.CommandeFournisseurs.Select(c => c.NumeroCommandeFournisseur).OrderByDescending(p => p).FirstOrDefault().ToString();
            TextDateCommande.Text = DateTime.Now.ToShortDateString();
        }

        /// <summary>
        /// Méthode appelée quand l'utilisateur clic sur le bouton d'ajout d'un article à la commande
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void BtnAddArticle_Click(object sender, EventArgs e)
        {
            // Ajout d'un article à la commande
            LigneCommandeFournisseur ligneCommande = new LigneCommandeFournisseur();
            ligneCommande.NumeroCommandeFournisseur = int.Parse(LabelIdCommande.Text);
            ligneCommande.PrixUnitaireFournisseur = double.Parse(TextPrixUnitaire.Text);
            ligneCommande.QuantiteCommandeFournisseur = int.Parse(TextQuantite.Text);
            ligneCommande.Reference = int.Parse(DropDownArticles.SelectedValue);
            // Ajout de la ligne de commande à l'entité de la base
            _entities.LigneCommandeFournisseurs.Add(ligneCommande);
            // Mise à jour de la base
            _entities.SaveChanges();
            // Mise à jour de la liste
            ListCommmande.DataBind();
        }
    }
}