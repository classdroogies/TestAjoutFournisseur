using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TestAjoutFournisseur.Models;

namespace TestAjoutFournisseur
{
    public partial class WebFormRegis : System.Web.UI.Page
    {
        private Sebo_CarysEntities em = new Sebo_CarysEntities();

        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataSourceID = null;
            GridView1.DataBind();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            TestAjoutFournisseur.Models.Role role = new Models.Role ();
          /*  role.LibelleRole = "Auteur Comique";
            em.Roles.Add(role);
            em.SaveChanges();
            TextBox2.Text = role.IdRole.ToString(); */

            TestAjoutFournisseur.Models.Acteur act = new Models.Acteur();
            act.NomActeur = TextBox1.Text;
            act.IdRole = 4; // role.IdRole;        

           
            em.Acteurs.Add(act);
            em.SaveChanges();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            /*IQueryable<Acteur> liste =  from x in em.Acteurs
                                        select x;
            IEnumerable<Acteur> liste3 = from x in liste
                                         where x.NomActeur.Contains("a")
                                         select x; */

            /*
            foreach (Acteur a in liste)
            {
                Response.Write(a.NomActeur + "<br/>");
            }*/
            Catalogue cat = new Catalogue(em);
            gridActeurs.DataSource = cat.getActeurs("a").ToList();
            gridActeurs.DataBind();

            var liste2 = from x in em.Acteurs
                         where x.NomActeur.Contains ("o")
                                        join y in em.Roles on x.IdRole equals y.IdRole
                                       select new {x.IdActeur, x.NomActeur, x.IdRole, y.LibelleRole };

           
            GridView1.DataSource = liste2.ToList();
            GridView1.DataBind();

        }
    }
}