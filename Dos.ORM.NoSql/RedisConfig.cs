namespace Dos.ORM.NoSql
{
    using System;
    using System.Diagnostics;
    using System.Runtime.CompilerServices;

    public class RedisConfig
    {
        //[CompilerGenerated, DebuggerBrowsable(DebuggerBrowsableState.Never)]
        //private int <CacheExpireMinutes> k__BackingField;
        //[CompilerGenerated, DebuggerBrowsable(DebuggerBrowsableState.Never)]
        //private int <DataBase> k__BackingField;
        //[CompilerGenerated, DebuggerBrowsable(DebuggerBrowsableState.Never)]
        //private string <Hosts> k__BackingField;
        //[CompilerGenerated, DebuggerBrowsable(DebuggerBrowsableState.Never)]
        //private string <Name> k__BackingField;
        //[CompilerGenerated, DebuggerBrowsable(DebuggerBrowsableState.Never)]
        //private string <Pwd> k__BackingField;

        public int CacheExpireMinutes { get; set; }

        public int DataBase { get; set; }

        public string Hosts { get; set; }

        public string Name { get; set; }

        public string Pwd { get; set; }
    }
}

