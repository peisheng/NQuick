//-----------------------------------------------------------------------
// <copyright file=" daily_by_report_copyRepository.cs" company="xxxx Enterprises">
// * Copyright (C) 2017 xxxx Enterprises All Rights Reserved
// * version : 4.0.30319.42000
// * author  : auto generated by T4
// * FileName: daily_by_report_copy.cs
// * history : Created by T4 02/09/2017 17:00:57 
// </copyright>
//-----------------------------------------------------------------------
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using NQuick.DataModel;
using NQuick.Common;
using NQuick.DataAccess.Base;
using NQuick.DataModel.Base;
using NQuick.Model;
using NQuick.Model.DmComicPlatform;

namespace NQuick.DataAccess.DmComicPlatform
{ 
    /// <summary>
    /// 数据库处理层。多表联查、复杂的Dos.ORM写法都可以丢到这层来写。
    /// </summary>
    public partial class daily_by_report_copyRepository : Repository<daily_by_report_copy>
    {
        /// <summary>
        /// 
        /// </summary>
        public daily_by_report_copyRepository():base(Constant.DbConnectionName2) 
        {
            
        }
    }
}