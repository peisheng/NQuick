using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using Dos.Common;
using Dos.ORM;
using System.Data.Common;
using NQuick.Common;
using NQuick.DataAccess;
using NQuick.DataModel.Base;
using NQuick.DataModel;
using NQuick.DataCache;
using NQuick.Model;

namespace NQuick.Business
{
  public  class productsLogic
    {
        public BaseResult GetProduct()
        {
            var where = new Where<products>();
            #region 模糊搜索条件

            #endregion

            var rep = new productsRepository();
           var list= rep.Query(where,d=>d.coupon_money,"desc",null,20,1);
            return new BaseResult(true, list, "",list.Count);
        }

        public bool insert()
        {
            var rep = new productsRepository();
            int i= rep.Insert(new products() { });
            return true;
        }
    }
}
