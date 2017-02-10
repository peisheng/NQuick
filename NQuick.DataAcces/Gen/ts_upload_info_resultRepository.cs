//-----------------------------------------------------------------------
// <copyright file=" ts_upload_info_resultRepository.cs" company="xxxx Enterprises">
// * Copyright (C) 2017 xxxx Enterprises All Rights Reserved
// * version : 4.0.30319.42000
// * author  : auto generated by T4
// * FileName: ts_upload_info_result.cs
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
    public partial class ts_upload_info_resultRepository : Repository<ts_upload_info_result>
    {
        /// <summary>
        /// 
        /// </summary>
        public ts_upload_info_resultRepository():base(Constant.DbConnectionName2) 
        {
            
        }
    }
}