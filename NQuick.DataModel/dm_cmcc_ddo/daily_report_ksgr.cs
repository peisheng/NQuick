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
	/// 实体类daily_report_ksgr 。(属性说明自动提取数据库字段的描述信息)
	/// </summary>
	[Table("daily_report_ksgr")]
	[Serializable]
	public partial class daily_report_ksgr : Entity 
	{
		#region Model
		private int _id;
		private string _cp_id;
		private string _sp_id;
		private string _product_id;
		private string _province_id;
		private int? _all_mt_num;
		private int? _mt_succ_num;
		private int? _income;
		private int? _mt_succ_num2;
		private int? _income2;
		private DateTime? _date_time;
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
		public int? all_mt_num
		{
			get{ return _all_mt_num; }
			set
			{
				this.OnPropertyValueChange(_.all_mt_num,_all_mt_num,value);
				this._all_mt_num=value;
			}
		}
		/// <summary>
		/// 
		/// </summary>
		public int? mt_succ_num
		{
			get{ return _mt_succ_num; }
			set
			{
				this.OnPropertyValueChange(_.mt_succ_num,_mt_succ_num,value);
				this._mt_succ_num=value;
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
		/// <summary>
		/// 
		/// </summary>
		public int? mt_succ_num2
		{
			get{ return _mt_succ_num2; }
			set
			{
				this.OnPropertyValueChange(_.mt_succ_num2,_mt_succ_num2,value);
				this._mt_succ_num2=value;
			}
		}
		/// <summary>
		/// 
		/// </summary>
		public int? income2
		{
			get{ return _income2; }
			set
			{
				this.OnPropertyValueChange(_.income2,_income2,value);
				this._income2=value;
			}
		}
		/// <summary>
		/// 
		/// </summary>
		public DateTime? date_time
		{
			get{ return _date_time; }
			set
			{
				this.OnPropertyValueChange(_.date_time,_date_time,value);
				this._date_time=value;
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
				_.cp_id,
				_.sp_id,
				_.product_id,
				_.province_id,
				_.all_mt_num,
				_.mt_succ_num,
				_.income,
				_.mt_succ_num2,
				_.income2,
				_.date_time};
		}
		/// <summary>
		/// 获取值信息
		/// </summary>
		public override object[] GetValues()
		{
			return new object[] {
				this._id,
				this._cp_id,
				this._sp_id,
				this._product_id,
				this._province_id,
				this._all_mt_num,
				this._mt_succ_num,
				this._income,
				this._mt_succ_num2,
				this._income2,
				this._date_time};
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
			public readonly static Field All = new Field("*","daily_report_ksgr");
			/// <summary>
			/// 
			/// </summary>
			public readonly static Field id = new Field("id","daily_report_ksgr","id");
			/// <summary>
			/// 
			/// </summary>
			public readonly static Field cp_id = new Field("cp_id","daily_report_ksgr","cp_id");
			/// <summary>
			/// 
			/// </summary>
			public readonly static Field sp_id = new Field("sp_id","daily_report_ksgr","sp_id");
			/// <summary>
			/// 
			/// </summary>
			public readonly static Field product_id = new Field("product_id","daily_report_ksgr","product_id");
			/// <summary>
			/// 
			/// </summary>
			public readonly static Field province_id = new Field("province_id","daily_report_ksgr","province_id");
			/// <summary>
			/// 
			/// </summary>
			public readonly static Field all_mt_num = new Field("all_mt_num","daily_report_ksgr","all_mt_num");
			/// <summary>
			/// 
			/// </summary>
			public readonly static Field mt_succ_num = new Field("mt_succ_num","daily_report_ksgr","mt_succ_num");
			/// <summary>
			/// 
			/// </summary>
			public readonly static Field income = new Field("income","daily_report_ksgr","income");
			/// <summary>
			/// 
			/// </summary>
			public readonly static Field mt_succ_num2 = new Field("mt_succ_num2","daily_report_ksgr","mt_succ_num2");
			/// <summary>
			/// 
			/// </summary>
			public readonly static Field income2 = new Field("income2","daily_report_ksgr","income2");
			/// <summary>
			/// 
			/// </summary>
			public readonly static Field date_time = new Field("date_time","daily_report_ksgr","date_time");
		}
		#endregion


	}
}

