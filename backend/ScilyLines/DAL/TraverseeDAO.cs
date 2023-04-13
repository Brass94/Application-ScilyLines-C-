using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MySql.Data.MySqlClient;

namespace ScilyLines.DAL
{
    public class TraverseeDAO
    {
        string provider;
        string database;
        string uid;
        string mdp;

        private static ConnexionSql maConnexionSql;
        private static MySqlCommand Ocom;

        public TraverseeDAO(string provider, string database, string uid, string mdp)
        {
            this.provider = provider;
            this.database = database;
            this.uid = uid;
            this.mdp = mdp;
        }
        public List<Traversee> getTraversee(List<Liaison> listeLiaison)
        {
            maConnexionSql = ConnexionSql.getInstance(provider, database, uid, mdp);
            maConnexionSql.openConnection();
            string req = "select * from traversee";
            Ocom = maConnexionSql.reqExec(req);
            MySqlDataReader reader = Ocom.ExecuteReader();
            List<Traversee> listeTraversee = new List<Traversee>();

        }
        }

