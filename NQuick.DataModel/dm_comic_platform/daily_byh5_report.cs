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
	/// 实体类daily_byh5_report 。(属性说明自动提取数据库字段的描述信息)
	/// </summary>
	[Table("daily_byh5_report")]
	[Serializable]
	public partial class daily_byh5_report : Entity 
	{
		#region Model
		private int _id;
		private string _service_id;
		private string _cp_id;
		private string _sp_id;
		private string _province_id;
		private string _service_type;
		private int? _nums;
		private DateTime? _count_date;
		private int? _type;
		private int? _income;
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
		public string service_id
		{
			get{ return _service_id; }
			set
			{
				this.OnPropertyValueChange(_.service_id,_service_id,value);
				this._service_id=value;
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
		public string service_type
		{
			get{ return _service_type; }
			set
			{
				this.OnPropertyValueChange(_.service_type,_service_type,value);
				this._service_type=value;
			}
		}
		/// <summary>
		/// 
		/// </summary>
		public int? nums
		{
			get{ return _nums; }
			set
			{
				this.OnPropertyValueChange(_.nums,_nums,value);
				this._nums=value;
			}
		}
		/// <summary>
		/// 
		/// </summary>
		public DateTime? count_date
		{
			get{ return _count_date; }
			set
			{
				this.OnPropertyValueChange(_.count_date,_count_date,value);
				this._count_date=value;
			}
		}
		/// <summary>
		/// _1 订购 2 退订
		/// </summary>
		public int? type
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
		public int? income
		{
			get{ return _income; }
			set
			{
				this.OnPropertyValueChange(_.income,_income,value);
				this._income=value;
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
				_.service_id,
				_.cp_id,
				_.sp_id,
				_.province_id,
				_.service_type,
				_.nums,
				_.count_date,
				_.type,
				_.income};
		}
		/// <summary>
		/// 获取值信息
		/// </summary>
		public override object[] GetValues()
		{
			return new object[] {
				this._id,
				this._service_id,
				this._cp_id,
				this._sp_id,
				this._province_id,
				this._service_type,
				this._nums,
				this._count_date,
				this._type,
				this._income};
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
			public readonly static Field All = new Field("*","daily_byh5_report");
			/// <summary>
			/// 
			/// </summary>
			public readonly static Field id = new Field("id","daily_byh5_report","id");
			/// <summary>
			/// 
			/// </summary>
			public readonly static Field service_id = new Field("service_id","daily_byh5_report","service_id");
			/// <summary>
			/// 
			/// </summary>
			public readonly static Field cp_id = new Field("cp_id","daily_byh5_report","cp_id");
			/// <summary>
			/// 
			/// </summary>
			public readonly static Field sp_id = new Field("sp_id","daily_byh5_report","sp_id");
			/// <summary>
			/// 
			/// </summary>
			public readonly static Field province_id = new Field("province_id","daily_byh5_report","province_id");
			/// <summary>
			/// 
			/// </summary>
			public readonly static Field service_type = new Field("service_type","daily_byh5_report","service_type");
			/// <summary>
			/// 
			/// </summary>
			public readonly static Field nums = new Field("nums","daily_byh5_report","nums");
			/// <summary>
			/// 
			/// </summary>
			public readonly static Field count_date = new Field("count_date","daily_byh5_report","count_date");
			/// <summary>
			/// _1 订购 2 退订
			/// </summary>
			public readonly static Field type = new Field("type","daily_byh5_report","_1 订购 2 退订");
			/// <summary>
			/// 
			/// </summary>
			public readonly static Field income = new Field("income","daily_byh5_report","income");
		}
		#endregion


	}
}

