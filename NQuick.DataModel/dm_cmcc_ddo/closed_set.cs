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

namespace NQuick.Model.DmCmccDdo
{

	/// <summary>
	/// 实体类closed_set 。(属性说明自动提取数据库字段的描述信息)
	/// </summary>
	[Table("closed_set")]
	[Serializable]
	public partial class closed_set : Entity 
	{
		#region Model
		private int _id;
		private int _sp_id;
		private int _cp_id;
		private int _closed_per;
		private string _province_id;
		private int _begin_price;
		private int _stat;
		private DateTime? _add_time;
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
		/// 
		/// </summary>
		public int sp_id
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
		public int cp_id
		{
			get{ return _cp_id; }
			set
			{
				this.OnPropertyValueChange(_.cp_id,_cp_id,value);
				this._cp_id=value;
			}
		}
		/// <summary>
		/// 核减比例
		/// </summary>
		public int closed_per
		{
			get{ return _closed_per; }
			set
			{
				this.OnPropertyValueChange(_.closed_per,_closed_per,value);
				this._closed_per=value;
			}
		}
		/// <summary>
		/// 省份代码
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
		/// 核减起始金额(分)
		/// </summary>
		public int begin_price
		{
			get{ return _begin_price; }
			set
			{
				this.OnPropertyValueChange(_.begin_price,_begin_price,value);
				this._begin_price=value;
			}
		}
		/// <summary>
		/// _1 开通  0关闭
		/// </summary>
		public int stat
		{
			get{ return _stat; }
			set
			{
				this.OnPropertyValueChange(_.stat,_stat,value);
				this._stat=value;
			}
		}
		/// <summary>
		/// 
		/// </summary>
		public DateTime? add_time
		{
			get{ return _add_time; }
			set
			{
				this.OnPropertyValueChange(_.add_time,_add_time,value);
				this._add_time=value;
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
				_.id};
		}
		/// <summary>
		/// 获取列信息
		/// </summary>
		public override Field[] GetFields()
		{
			return new Field[] {
				_.id,
				_.sp_id,
				_.cp_id,
				_.closed_per,
				_.province_id,
				_.begin_price,
				_.stat,
				_.add_time};
		}
		/// <summary>
		/// 获取值信息
		/// </summary>
		public override object[] GetValues()
		{
			return new object[] {
				this._id,
				this._sp_id,
				this._cp_id,
				this._closed_per,
				this._province_id,
				this._begin_price,
				this._stat,
				this._add_time};
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
			public readonly static Field All = new Field("*","closed_set");
			/// <summary>
			/// 
			/// </summary>
			public readonly static Field id = new Field("id","closed_set","id");
			/// <summary>
			/// 
			/// </summary>
			public readonly static Field sp_id = new Field("sp_id","closed_set","sp_id");
			/// <summary>
			/// 
			/// </summary>
			public readonly static Field cp_id = new Field("cp_id","closed_set","cp_id");
			/// <summary>
			/// 核减比例
			/// </summary>
			public readonly static Field closed_per = new Field("closed_per","closed_set","核减比例");
			/// <summary>
			/// 省份代码
			/// </summary>
			public readonly static Field province_id = new Field("province_id","closed_set","省份代码");
			/// <summary>
			/// 核减起始金额(分)
			/// </summary>
			public readonly static Field begin_price = new Field("begin_price","closed_set","核减起始金额(分)");
			/// <summary>
			/// _1 开通  0关闭
			/// </summary>
			public readonly static Field stat = new Field("stat","closed_set","_1 开通  0关闭");
			/// <summary>
			/// 
			/// </summary>
			public readonly static Field add_time = new Field("add_time","closed_set","add_time");
		}
		#endregion


	}
}

