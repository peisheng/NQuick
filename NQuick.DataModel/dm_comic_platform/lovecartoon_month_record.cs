﻿//------------------------------------------------------------------------------
// <auto-generated>
//     此代码由工具生成。
//     运行时版本:4.0.30319.42000
//     Website: http://ITdos.com/Dos/ORM/Index.html
//     对此文件的更改可能会导致不正确的行为，并且如果
//     重新生成代码，这些更改将会丢失。
// </auto-generated>
//------------------------------------------------------------------------------


using System;
using System.Data;
using System.Data.Common;
using Dos.ORM;
using Dos.ORM.Common;

namespace NQuick.Model.DmComicPlatform
{

	/// <summary>
	/// 实体类lovecartoon_month_record 。(属性说明自动提取数据库字段的描述信息)
	/// </summary>
	[Table("lovecartoon_month_record")]
	[Serializable]
	public partial class lovecartoon_month_record : Entity 
	{
		#region Model
		private int _id;
		private string _type;
		private string _sign;
		private string _phone;
		private string _province_id;
		private string _area_code;
		private string _product_id;
		private int? _price;
		private int? _substat;
		private string _result;
		private DateTime? _ex_datetime;
		private string _cp_id;
		private string _src_cp_id;
		private string _sp_id;
		private string _closed_status;
		private DateTime? _un_datetime;
		/// <summary>
		/// 
		/// </summary>
		public int id
		{
			get{ return _id; }
			set
			{
				this.OnPropertyValueChange(_.id,_id,value);
				this._id=value;
			}
		}
		/// <summary>
		/// subscribe 订购 unsubscribe 退订
		/// </summary>
		public string type
		{
			get{ return _type; }
			set
			{
				this.OnPropertyValueChange(_.type,_type,value);
				this._type=value;
			}
		}
		/// <summary>
		/// 
		/// </summary>
		public string sign
		{
			get{ return _sign; }
			set
			{
				this.OnPropertyValueChange(_.sign,_sign,value);
				this._sign=value;
			}
		}
		/// <summary>
		/// 
		/// </summary>
		public string phone
		{
			get{ return _phone; }
			set
			{
				this.OnPropertyValueChange(_.phone,_phone,value);
				this._phone=value;
			}
		}
		/// <summary>
		/// 
		/// </summary>
		public string province_id
		{
			get{ return _province_id; }
			set
			{
				this.OnPropertyValueChange(_.province_id,_province_id,value);
				this._province_id=value;
			}
		}
		/// <summary>
		/// 
		/// </summary>
		public string area_code
		{
			get{ return _area_code; }
			set
			{
				this.OnPropertyValueChange(_.area_code,_area_code,value);
				this._area_code=value;
			}
		}
		/// <summary>
		/// 
		/// </summary>
		public string product_id
		{
			get{ return _product_id; }
			set
			{
				this.OnPropertyValueChange(_.product_id,_product_id,value);
				this._product_id=value;
			}
		}
		/// <summary>
		/// 
		/// </summary>
		public int? price
		{
			get{ return _price; }
			set
			{
				this.OnPropertyValueChange(_.price,_price,value);
				this._price=value;
			}
		}
		/// <summary>
		/// 
		/// </summary>
		public int? substat
		{
			get{ return _substat; }
			set
			{
				this.OnPropertyValueChange(_.substat,_substat,value);
				this._substat=value;
			}
		}
		/// <summary>
		/// 
		/// </summary>
		public string result
		{
			get{ return _result; }
			set
			{
				this.OnPropertyValueChange(_.result,_result,value);
				this._result=value;
			}
		}
		/// <summary>
		/// 
		/// </summary>
		public DateTime? ex_datetime
		{
			get{ return _ex_datetime; }
			set
			{
				this.OnPropertyValueChange(_.ex_datetime,_ex_datetime,value);
				this._ex_datetime=value;
			}
		}
		/// <summary>
		/// 
		/// </summary>
		public string cp_id
		{
			get{ return _cp_id; }
			set
			{
				this.OnPropertyValueChange(_.cp_id,_cp_id,value);
				this._cp_id=value;
			}
		}
		/// <summary>
		/// 
		/// </summary>
		public string src_cp_id
		{
			get{ return _src_cp_id; }
			set
			{
				this.OnPropertyValueChange(_.src_cp_id,_src_cp_id,value);
				this._src_cp_id=value;
			}
		}
		/// <summary>
		/// 
		/// </summary>
		public string sp_id
		{
			get{ return _sp_id; }
			set
			{
				this.OnPropertyValueChange(_.sp_id,_sp_id,value);
				this._sp_id=value;
			}
		}
		/// <summary>
		/// 
		/// </summary>
		public string closed_status
		{
			get{ return _closed_status; }
			set
			{
				this.OnPropertyValueChange(_.closed_status,_closed_status,value);
				this._closed_status=value;
			}
		}
		/// <summary>
		/// 
		/// </summary>
		public DateTime? un_datetime
		{
			get{ return _un_datetime; }
			set
			{
				this.OnPropertyValueChange(_.un_datetime,_un_datetime,value);
				this._un_datetime=value;
			}
		}
		#endregion

		#region Method
		/// <summary>
		/// 获取实体中的主键列
		/// </summary>
		public override Field[] GetPrimaryKeyFields()
		{
			return new Field[] {
				_.id,
				_.phone,
				_.cp_id};
		}
		/// <summary>
		/// 获取列信息
		/// </summary>
		public override Field[] GetFields()
		{
			return new Field[] {
				_.id,
				_.type,
				_.sign,
				_.phone,
				_.province_id,
				_.area_code,
				_.product_id,
				_.price,
				_.substat,
				_.result,
				_.ex_datetime,
				_.cp_id,
				_.src_cp_id,
				_.sp_id,
				_.closed_status,
				_.un_datetime};
		}
		/// <summary>
		/// 获取值信息
		/// </summary>
		public override object[] GetValues()
		{
			return new object[] {
				this._id,
				this._type,
				this._sign,
				this._phone,
				this._province_id,
				this._area_code,
				this._product_id,
				this._price,
				this._substat,
				this._result,
				this._ex_datetime,
				this._cp_id,
				this._src_cp_id,
				this._sp_id,
				this._closed_status,
				this._un_datetime};
		}
		#endregion

		#region _Field
		/// <summary>
		/// 字段信息
		/// </summary>
		public class _
		{
			/// <summary>
			/// * 
			/// </summary>
			public readonly static Field All = new Field("*","lovecartoon_month_record");
			/// <summary>
			/// 
			/// </summary>
			public readonly static Field id = new Field("id","lovecartoon_month_record","id");
			/// <summary>
			/// subscribe 订购 unsubscribe 退订
			/// </summary>
			public readonly static Field type = new Field("type","lovecartoon_month_record","subscribe 订购 unsubscribe 退订");
			/// <summary>
			/// 
			/// </summary>
			public readonly static Field sign = new Field("sign","lovecartoon_month_record","sign");
			/// <summary>
			/// 
			/// </summary>
			public readonly static Field phone = new Field("phone","lovecartoon_month_record","phone");
			/// <summary>
			/// 
			/// </summary>
			public readonly static Field province_id = new Field("province_id","lovecartoon_month_record","province_id");
			/// <summary>
			/// 
			/// </summary>
			public readonly static Field area_code = new Field("area_code","lovecartoon_month_record","area_code");
			/// <summary>
			/// 
			/// </summary>
			public readonly static Field product_id = new Field("product_id","lovecartoon_month_record","product_id");
			/// <summary>
			/// 
			/// </summary>
			public readonly static Field price = new Field("price","lovecartoon_month_record","price");
			/// <summary>
			/// 
			/// </summary>
			public readonly static Field substat = new Field("substat","lovecartoon_month_record","substat");
			/// <summary>
			/// 
			/// </summary>
			public readonly static Field result = new Field("result","lovecartoon_month_record","result");
			/// <summary>
			/// 
			/// </summary>
			public readonly static Field ex_datetime = new Field("ex_datetime","lovecartoon_month_record","ex_datetime");
			/// <summary>
			/// 
			/// </summary>
			public readonly static Field cp_id = new Field("cp_id","lovecartoon_month_record","cp_id");
			/// <summary>
			/// 
			/// </summary>
			public readonly static Field src_cp_id = new Field("src_cp_id","lovecartoon_month_record","src_cp_id");
			/// <summary>
			/// 
			/// </summary>
			public readonly static Field sp_id = new Field("sp_id","lovecartoon_month_record","sp_id");
			/// <summary>
			/// 
			/// </summary>
			public readonly static Field closed_status = new Field("closed_status","lovecartoon_month_record","closed_status");
			/// <summary>
			/// 
			/// </summary>
			public readonly static Field un_datetime = new Field("un_datetime","lovecartoon_month_record","un_datetime");
		}
		#endregion


	}
}

