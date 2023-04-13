using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ScilyLines;

namespace ScilyLines.Modele
{
    public class Traversee
    
         {
        int id;
        string date;
        string heure;
        Liaison liaison;
        public Traversee(string date, string heure, Liaison liaison)
        {
      
            this.date = date;
            this.heure = heure;
            this.liaison = liaison;
        }
        public int Id { get => id; set => id = value; }
        public string Date { get => date; }
        public string Heure { get => heure; set => heure = value; }
        public Liaison Liaison { get => liaison; }
    }
}




