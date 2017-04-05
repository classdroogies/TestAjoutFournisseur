//------------------------------------------------------------------------------
// <auto-generated>
//     Ce code a été généré à partir d'un modèle.
//
//     Des modifications manuelles apportées à ce fichier peuvent conduire à un comportement inattendu de votre application.
//     Les modifications manuelles apportées à ce fichier sont remplacées si le code est régénéré.
// </auto-generated>
//------------------------------------------------------------------------------

namespace TestAjoutFournisseur.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class PanierCommande
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public PanierCommande()
        {
            this.LigneCommandes = new HashSet<LigneCommande>();
            this.Livraisons = new HashSet<Livraison>();
            this.Paiements = new HashSet<Paiement>();
        }
    
        public int NumeroCommande { get; set; }
        public System.DateTime DateCommande { get; set; }
        public string EtatCommande { get; set; }
        public int IdPaiement { get; set; }
        public int NumeroClient { get; set; }
    
        public virtual Client Client { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<LigneCommande> LigneCommandes { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Livraison> Livraisons { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Paiement> Paiements { get; set; }
        public virtual Paiement Paiement { get; set; }
    }
}
