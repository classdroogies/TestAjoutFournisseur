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
    
    public partial class LigneCommande
    {
        public int QuantiteCommande { get; set; }
        public double PrixUnitaire { get; set; }
        public int NumeroCommande { get; set; }
        public int Reference { get; set; }
    
        public virtual Article Article { get; set; }
        public virtual PanierCommande PanierCommande { get; set; }
    }
}
