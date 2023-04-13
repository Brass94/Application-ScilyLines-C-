using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CLUtilesTextes
{
    public class AnalyseTexte
    {
        public static int CompteCaractere(string mot, char cara)
        {
            int nbCaractere = 0;
            foreach (char c in mot)
            {
                if (c == cara)
                {
                nbCaractere++;
                }
            }
            return (nbCaractere);
        }
        public static bool PremierCaractere(string mot, char cara)
        {
            bool resultat = false;
            if (mot[0] == cara)
            {
                resultat = true;
            }
            return resultat;

        }
    }
}
