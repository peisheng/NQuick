//-----------------------------------------------------------------------
// <copyright file=" temp_cp_infoRepository.cs" company="xxxx Enterprises">
// * Copyright (C) 2017 xxxx Enterprises All Rights Reserved
// * version : 4.0.30319.42000
// * author  : auto generated by T4
// * FileName: temp_cp_info.cs
// * history : Created by T4 02/09/2017 17:00:08 
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
using NQuick.Model.DmCmccDdo;

namespace NQuick.DataAccess.DmCmccDdo
{ 
    /// <summary>
    /// 数据库处理层。多表联查、复杂的Dos.ORM写法都可以丢到这层来写。
    /// </summary>
    public partial class temp_cp_infoRepository : Repository<temp_cp_info>
    {
        /// <summary>
        /// 
        /// </summary>
        public temp_cp_infoRepository():base(Constant.DbConnectionName) 
        {
            
        }
    }
}
