using Dos.ORM;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace NQuick.DataAccess.Base
{
    public class DbAdapter
    {
        string connectionName = "";
        public DbAdapter(string ConnectionName)
        {
            this.connectionName = connectionName;
        }
        public DbSession GetDbSession()
        {
            return new DbSession(connectionName);
        }
    }
}
