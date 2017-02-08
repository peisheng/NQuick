using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Dos.Common;
using Dos.ORM;

namespace NQuick.DataAccess.Base
{
    public class Db
    {

        public static Hashtable ht = new Hashtable();
        public  DbSession Context = null;
        public Db(string connectionName)
        {
            if (ht.ContainsKey(connectionName))
            {
                Context = ht[connectionName] as DbSession;
            }
            else
            {
                Context = new DbSession(connectionName);
                ht.Add(connectionName,Context);
            } 
        }
    }
}
