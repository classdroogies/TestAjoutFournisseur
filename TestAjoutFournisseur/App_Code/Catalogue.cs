using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using TestAjoutFournisseur.Models;

namespace TestAjoutFournisseur
{
    public class Catalogue
    {
        private Sebo_CarysEntities em;

        public Catalogue(Sebo_CarysEntities em)
        {
            this.em = em;
        }

        public IEnumerable<Acteur> getActeurs (string masque)
        {
            IQueryable<Acteur> liste = from x in em.Acteurs
                                       select x;
            IEnumerable<Acteur> liste3 = liste.Where(x => x.NomActeur.Contains(masque));
                                         
            return liste3;
        }
    }
}