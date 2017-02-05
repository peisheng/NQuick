namespace Dos.ORM.NoSql
{
    using Dos.Common;
    using StackExchange.Redis;
    using System;
    using System.Collections.Concurrent;
    using System.Configuration;

    public class Redis : ICache
    {
        private static RedisConfig _conf;
        private static ConcurrentDictionary<string, ConnectionMultiplexer> _multiplexers = new ConcurrentDictionary<string, ConnectionMultiplexer>();

        public Redis()
        {
        }

        public Redis(string host, string port, string pwd)
        {
            RedisConfig config1 = new RedisConfig {
                Hosts = host + ":" + port,
                Pwd = pwd
            };
            Conf = config1;
        }

        public T Get<T>(string key)
        {
            RedisValue value2 = this.Cache.StringGet(key, CommandFlags.None);
            if (value2 != RedisValue.Null)
            {
                return JSON.ToObject<T>((string) value2);
            }
            return default(T);
        }

        private static ConnectionMultiplexer GetMultiplexer(RedisConfig config)
        {
            ConnectionMultiplexer multiplexer = null;
            if (!_multiplexers.TryGetValue(config.Hosts, out multiplexer))
            {
                ConfigurationOptions configuration = ConfigurationOptions.Parse(config.Hosts);
                configuration.AllowAdmin = true;
                configuration.ConnectRetry = 2;
                if (!string.IsNullOrWhiteSpace(config.Pwd))
                {
                    configuration.Password = config.Pwd;
                }
                multiplexer = ConnectionMultiplexer.Connect(configuration, null);
                _multiplexers.TryAdd(config.Hosts, multiplexer);
            }
            return multiplexer;
        }

        public bool Remove(string key)
        {
            return this.Cache.KeyDelete(key, CommandFlags.None);
        }

        public bool Set<T>(string key, T value)
        {
            return this.Cache.StringSet(key, JSON.ToJSON(value), null, When.Always, CommandFlags.None);
        }

        public bool Set<T>(string key, T value, TimeSpan expiresIn)
        {
            return this.Cache.StringSet(key, JSON.ToJSON(value), new TimeSpan?(expiresIn), When.Always, CommandFlags.None);
        }

        public IDatabase Cache
        {
            get
            {
                return this.conn.GetDatabase(Conf.DataBase, null);
            }
        }

        public static RedisConfig Conf
        {
            get
            {
                if (_conf == null)
                {
                    return new RedisConfig { Hosts = ConfigurationManager.AppSettings["RedisHost"] + ":" + ConfigurationManager.AppSettings["RedisPort"], Pwd = ConfigurationManager.AppSettings["RedisPwd"] };
                }
                return _conf;
            }
            set
            {
                _conf = value;
            }
        }

        public ConnectionMultiplexer conn
        {
            get
            {
                return GetMultiplexer(Conf);
            }
        }
    }
}

