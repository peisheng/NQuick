﻿using System;
using System.Data;
using System.Data.Common;
using Dos.ORM;
using Dos.ORM.Common;

namespace NQuick.DataModel
{
    /// <summary>
    /// 如果前端不需要Test1、Test2、Test3这三个字段，可以建立此ViewModel。
    /// </summary>
    public class TestTable_Page1
    {
        public Guid Id { get; set; }
        public string Name { get; set; }
        public string IDNumber { get; set; }
        public string MobilePhone { get; set; }
        public DateTime CreateTime { get; set; }
    }
    /// <summary>
    /// 同张表可以建立多个ViewModel，以适应不同页面不同列数。
    /// </summary>
    public class TestTable_Page2
    {

    }
}

