namespace Dos.ORM.NoSql
{
    using System;
    using System.Configuration;
    using System.Runtime.InteropServices;

    public class NoSqlSession
    {
        private ICache Cache;
        public Dos.ORM.NoSql.NoSqlType NoSqlType;

        public NoSqlSession()
        {
            string str = ConfigurationManager.AppSettings["NoSqlType"];
            if (string.IsNullOrWhiteSpace(str))
            {
                throw new Exception("请在AppSetting中配置<add key=\"NoSqlType\" value=\"IIS/Redis/MongoDB/Memcache\" />");
            }
            string str2 = str.ToLower();
            if (!(str2 == "redis"))
            {
                if (str2 != "iis")
                {
                    throw new Exception("暂时不支持的NoSql数据库！");
                }
            }
            else
            {
                this.NoSqlType = Dos.ORM.NoSql.NoSqlType.Redis;
                this.Cache = new Redis();
                return;
            }
            this.NoSqlType = Dos.ORM.NoSql.NoSqlType.IIS;
            this.Cache = new IIS();
        }

        public NoSqlSession(Dos.ORM.NoSql.NoSqlType noSqlType, string host = "", string port = "", string pwd = "")
        {
            Dos.ORM.NoSql.NoSqlType type = noSqlType;
            if (type != Dos.ORM.NoSql.NoSqlType.IIS)
            {
                if (type != Dos.ORM.NoSql.NoSqlType.Redis)
                {
                    throw new Exception("暂时不支持的NoSql数据库！");
                }
                this.NoSqlType = Dos.ORM.NoSql.NoSqlType.Redis;
                this.Cache = new Redis(host, port, pwd);
            }
            else
            {
                this.NoSqlType = Dos.ORM.NoSql.NoSqlType.IIS;
                this.Cache = new IIS();
            }
        }

        public T Get<T>(string key)
        {
            return this.Cache.Get<T>(key);
        }

        public bool Remove(string key)
        {
            return this.Cache.Remove(key);
        }

        public bool Set<T>(string key, T value)
        {
            return this.Cache.Set<T>(key, value);
        }

        public bool Set<T>(string key, T value, TimeSpan expiresIn)
        {
            return this.Cache.Set<T>(key, value, expiresIn);
        }
    }
}

