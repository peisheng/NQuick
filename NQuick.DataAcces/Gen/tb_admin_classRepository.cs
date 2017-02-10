//-----------------------------------------------------------------------
// <copyright file=" tb_admin_classRepository.cs" company="xxxx Enterprises">
// * Copyright (C) 2017 xxxx Enterprises All Rights Reserved
// * version : 4.0.30319.42000
// * author  : auto generated by T4
// * FileName: tb_admin_class.cs
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
    public partial class tb_admin_classRepository : Repository<tb_admin_class>
    {
        /// <summary>
        /// 
        /// </summary>
        public tb_admin_classRepository():base(Constant.DbConnectionName2) 
        {
            
        }
    }
}