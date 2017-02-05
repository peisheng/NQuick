namespace Dos.ORM.NoSql
{
    using System;

    public interface ICache
    {
        T Get<T>(string key);
        bool Remove(string key);
        bool Set<T>(string key, T value);
        bool Set<T>(string key, T value, TimeSpan expiresIn);
    }
}

