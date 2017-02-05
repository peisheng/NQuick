namespace Dos.ORM.NoSql
{
    using Dos.Common;
    using System;

    public class IIS : ICache
    {
        public T Get<T>(string key)
        {
            if (CacheHelper.Get(key) != null)
            {
                return JSON.ToObject<T>(CacheHelper.Get(key).ToString());
            }
            return default(T);
        }

        public bool Remove(string key)
        {
            CacheHelper.Remove(key);
            return true;
        }

        public bool Set<T>(string key, T value)
        {
            CacheHelper.Set(key, JSON.ToJSON(value));
            return true;
        }

        public bool Set<T>(string key, T value, TimeSpan expiresIn)
        {
            CacheHelper.Set(key, JSON.ToJSON(value), expiresIn.Seconds);
            return true;
        }
    }
}

