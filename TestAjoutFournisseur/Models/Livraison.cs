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
    
    public partial class Livraison
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Livraison()
        {
            this.LigneLivraisons = new HashSet<LigneLivraison>();
        }
    
        public int NumeroLivraison { get; set; }
        public System.DateTime DateLivraison { get; set; }
        public bool AccuseReception { get; set; }
        public bool LivraisonComplete { get; set; }
        public int NumeroCommande { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<LigneLivraison> LigneLivraisons { get; set; }
        public virtual PanierCommande PanierCommande { get; set; }
    }
}
