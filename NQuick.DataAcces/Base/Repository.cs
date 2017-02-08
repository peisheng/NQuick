#region << 版 本 注 释 >>
/****************************************************
* 文 件 名：Sys_BaseDataLogic
* Copyright(c) 青之软件
* CLR 版本: 4.0.30319.17929
* 创 建 人：周浩
* 电子邮箱：admin@itdos.com
* 创建日期：2014/10/1 11:00:49
* 文件描述：
******************************************************
* 修 改 人：
* 修改日期：
* 备注描述：
*******************************************************/
#endregion
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using Dos.Common;
using Dos.ORM;
using Dos.ORM.Common;

namespace NQuick.DataAccess.Base
{
    public abstract class Repository<T>:Db where T : Entity 
    {
        
        public Repository(string connectionName):base(connectionName)
        { 
            base.Context.RegisterSqlLogger(delegate(string sql)
            {
                //在此可以记录sql日志
                //写日志会影响性能，建议开发版本记录sql以便调试，发布正式版本不要记录
                LogHelper.Debug(sql, "SQL日志");
            });
        }
       
        #region 查询
        /// <summary>
        /// 获取整表数据
        /// </summary>
        /// <returns></returns>
        public   List<T> GetAll()
        {
            return base.Context.From<T>().ToList();
        }
        /// <summary>
        /// 通用查询
        /// </summary>
        public  List<T> Query(Expression<Func<T, bool>> where, Expression<Func<T, object>> orderBy = null, string ascOrDesc = "asc", int? top = null, int? pageSize = null, int? pageIndex = null)
        {
            var fs =base.Context.From<T>().Where(where);
            if (top != null)
            {
                fs.Top(top.Value);
            }
            else if (pageIndex != null && pageSize != null)
            {
                fs.Page(pageSize.Value, pageIndex.Value);
            }
            if (orderBy != null)
            {
                if (ascOrDesc.ToLower() == "asc")
                {
                    fs.OrderBy(orderBy);
                }
                else
                {
                    fs.OrderByDescending(orderBy);
                }
            }
            return fs.ToList();
        }
        /// <summary>
        /// 通用查询
        /// </summary>
        public  List<T> Query(Where<T> where, Expression<Func<T, object>> orderBy = null, string ascOrDesc = "asc", int? top = null, int? pageSize = null, int? pageIndex = null)
        {
            var fs =base.Context.From<T>().Where(where);
            if (top != null)
            {
                fs.Top(top.Value);
            }
            else if (pageIndex != null && pageSize != null)
            {
                fs.Page(pageSize.Value, pageIndex.Value);
            }
            if (orderBy != null)
            {
                if (ascOrDesc.ToLower() == "asc")
                {
                    fs.OrderBy(orderBy);
                }
                else
                {
                    fs.OrderByDescending(orderBy);
                }
            }
            return fs.ToList();
        }
        /// <summary>
        /// 通用查询
        /// </summary>
        public  List<T> Query(Where<T> where, OrderByClip orderBy = null, string ascOrDesc = "asc", int? top = null, int? pageSize = null, int? pageIndex = null)
        {
            var fs =base.Context.From<T>().Where(where);
            if (top != null)
            {
                fs.Top(top.Value);
            }
            else if (pageIndex != null && pageSize != null)
            {
                fs.Page(pageSize.Value, pageIndex.Value);
            }
            if (orderBy != null)
            {
                fs.OrderBy(orderBy);
            }
            return fs.ToList();
        }
        /// <summary>
        /// 通用查询
        /// </summary>
        public  T First(Expression<Func<T, bool>> where, Expression<Func<T, object>> orderBy = null, string ascOrDesc = "asc", int? top = null, int? pageSize = null, int? pageIndex = null)
        {
            var fs =base.Context.From<T>().Where(where);
            if (top != null)
            {
                fs.Top(top.Value);
            }
            else if (pageIndex != null && pageSize != null)
            {
                fs.Page(pageSize.Value, pageIndex.Value);
            }
            if (orderBy != null)
            {
                if (ascOrDesc.ToLower() == "asc")
                {
                    return fs.OrderBy(orderBy).First();
                }
                return fs.OrderByDescending(orderBy).First();
            }
            var model = fs.First();
            return model;
        }
        /// <summary>
        /// 通用查询
        /// </summary>
        public  T First(Where<T> where, Expression<Func<T, object>> orderBy = null, string ascOrDesc = "asc", int? top = null, int? pageSize = null, int? pageIndex = null)
        {
            var fs =base.Context.From<T>().Where(where);
            if (top != null)
            {
                fs.Top(top.Value);
            }
            else if (pageIndex != null && pageSize != null)
            {
                fs.Page(pageSize.Value, pageIndex.Value);
            }
            if (orderBy != null)
            {
                if (ascOrDesc.ToLower() == "asc")
                {
                    return fs.OrderBy(orderBy).First();
                }
                return fs.OrderByDescending(orderBy).First();
            }
            return fs.First();
        }
        /// <summary>
        /// 根据条件判断是否存在数据
        /// </summary>
        /// <param name="where"></param>
        /// <returns></returns>
        public  bool Any(Expression<Func<T, bool>> where)
        {
            return base.Context.Exists<T>(where);
        }
        /// <summary>
        /// 取总数
        /// </summary>
        public  int Count(Expression<Func<T, bool>> where)
        {
            return base.Context.From<T>().Where(where).Count();
        }
        /// <summary>
        /// 取总数
        /// </summary>
        /// <param name="where"></param>
        /// <returns></returns>
        public  int Count(Where<T> where)
        {
            return base.Context.From<T>().Where(where).Count();
        }
        #endregion
        #region 插入
        /// <summary>
        /// 插入单个实体
        /// </summary>
        /// <param name="entity"></param>
        /// <returns></returns>
        public  int Insert(T entity)
        {
            return base.Context.Insert<T>(entity);
        }
        /// <summary>
        /// 插入单个实体
        /// </summary>
        /// <param name="context"></param>
        /// <param name="entity"></param>
        /// <returns></returns>
        public  void Insert(DbTrans context, T entity)
        {
            base.Context.Insert<T>(context, entity);
            //context.Set<T>().Add(entity);
        }
        /// <summary>
        /// 插入多个实体
        /// </summary>
        /// <param name="entities"></param>
        /// <returns></returns>
        public  int Insert(IEnumerable<T> entities)
        {
            return base.Context.Insert<T>(entities);
        }
        public  void Insert(DbTrans context, IEnumerable<T> entities)
        {
            base.Context.Insert<T>(context, entities.ToArray());
        }
        #endregion
        #region 更新
        /// <summary>
        /// 更新单个实体
        /// </summary>
        /// <param name="entity"></param>
        /// <returns></returns>
        public  int Update(T entity)
        {
            return base.Context.Update(entity);
        }
        /// <summary>
        /// 更新单个实体
        /// </summary>
        public  int Update(T entity, Where where)
        {
            return base.Context.Update(entity, where);
        }
        /// <summary>
        /// 更新单个实体
        /// </summary>
        public  int Update(T entity, Expression<Func<T, bool>> lambdaWhere)
        {
            return base.Context.Update(entity, lambdaWhere);
        }
        public  void Update(DbTrans context, T entity)
        {
            base.Context.Update(context, entity);
        }
        /// <summary>
        /// 更新多个实体
        /// </summary>
        /// <param name="entities"></param>
        /// <returns></returns>
        public  int Update(IEnumerable<T> entities)
        {
            var enumerable = entities as T[] ?? entities.ToArray();
            base.Context.Update(enumerable.ToArray());
            return 1;
        }
        public  void Update(DbTrans context, IEnumerable<T> entities)
        {
            base.Context.Update(context, entities.ToArray());
        }
        #endregion
        #region 删除
        /// <summary>
        /// 删除单个实体
        /// </summary>
        public  int Delete(T entitie)
        {
            return base.Context.Delete<T>(entitie);
        }
        /// <summary>
        /// 删除多个实体
        /// </summary>
        public  int Delete(IEnumerable<T> entities)
        {
            return base.Context.Delete<T>(entities);
        }
        /// <summary>
        /// 删除单个实体
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public  int Delete(Guid? id)
        {
            if (id == null)
            {
                return 0;
            }
            return base.Context.Delete<T>(id.Value);
        }
        /// <summary>
        /// 删除单个实体
        /// </summary>
        public  int Delete(Expression<Func<T, bool>> where)
        {
            return base.Context.Delete<T>(where);
        }
        /// <summary>
        /// 删除单个实体
        /// </summary>
        public  int Delete(Where<T> where)
        {
            return base.Context.Delete<T>(where.ToWhereClip());
        }
        #endregion
    }
}
