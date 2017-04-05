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
    }
}