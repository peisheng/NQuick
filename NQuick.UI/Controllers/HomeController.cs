﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using NQuick.Business;
using NQuick.Common;
using NQuick.DataModel;
using NQuick.DataModel.Base;

namespace NQuick.UI.Controllers
{
    [ErrorLog]
    public class HomeController : CommonController
    {
        #region Oracle、MySql、SqlServer、PostgreSql等
        public ActionResult Index()
        {
            return View();
        }
        /// <summary>
        /// 获取数据
        /// </summary>
        public JsonResult GetUser(TStudentParam param)
        {
            var bs = new TStudentLogic().GetUser(param);
            #region 以下逻辑可以重写Json()在内部实现
            //var data = bs.Data as List<TestTable1>;
            ////Map目的是过滤前端不需要的字段，如一张表有100个字段，但是前端grid只需要显示10个字段，那么就有90个字段前端其实是不需要的，所以需要在这里过滤掉那90个字段，即在TableMysql_Page1设置前端需要的字段。
            //var result = Common.Common.Map<TestTable1, TestTable_Page1>(data);
            //bs.Data = result;
            ////var test = Json(result);
            #endregion
            return Json(bs);
        }
        /// <summary>
        /// 新增数据
        /// </summary>
        public JsonResult AddUser(TStudentParam param)
        {
            var result = new TStudentLogic().AddUser(param);
            return Json(result); // 15259202703
        }
        /// <summary>
        /// 修改数据
        /// </summary>
        public JsonResult UptUser(TStudentParam param)
        {
            var result = new TStudentLogic().UptUser(param);
            return Json(result);
        }
        /// <summary>
        /// 删除数据
        /// </summary>
        public JsonResult DelUser(TStudentParam param)
        {
            var result = new TStudentLogic().DelUser(param);
            return Json(result);
        }
        #endregion
    }
}
