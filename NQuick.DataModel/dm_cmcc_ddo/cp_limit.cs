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
	/// 实体类cp_limit 。(属性说明自动提取数据库字段的描述信息)
	/// </summary>
	[Table("cp_limit")]
	[Serializable]
	public partial class cp_limit : Entity 
	{
		#region Model
		private long _id;
		private string _cpid;
		private string _limit_miscid;
		private int _limit_num;
		private int _limit_income;
		private int _day_num;
		private int _day_income;
		private int _stat;
		private int? _close_stat;
		private string _spid;
		private DateTime? _mod_time;
		private string _mod_user;
		private int _closed_per;
		/// <summary>
		/// 
		/// </summary>
		public long id
		{
			get{ return _id; }
			set
			{
				this.OnPropertyValueChange(_.id,_id,value);
				this._id=value;
			}
		}
		/// <summary>
		/// 合作方
		/// </summary>
		public string cpid
		{
			get{ return _cpid; }
			set
			{
				this.OnPropertyValueChange(_.cpid,_cpid,value);
				this._cpid=value;
			}
		}
		/// <summary>
		/// 限制省份
		/// </summary>
		public string limit_miscid
		{
			get{ return _limit_miscid; }
			set
			{
				this.OnPropertyValueChange(_.limit_miscid,_limit_miscid,value);
				this._limit_miscid=value;
			}
		}
		/// <summary>
		/// 月限制条数 0默认不限制
		/// </summary>
		public int limit_num
		{
			get{ return _limit_num; }
			set
			{
				this.OnPropertyValueChange(_.limit_num,_limit_num,value);
				this._limit_num=value;
			}
		}
		/// <summary>
		/// 月限制金额分 0默认不限制
		/// </summary>
		public int limit_income
		{
			get{ return _limit_income; }
			set
			{
				this.OnPropertyValueChange(_.limit_income,_limit_income,value);
				this._limit_income=value;
			}
		}
		/// <summary>
		/// 日限制条数 0默认不限制
		/// </summary>
		public int day_num
		{
			get{ return _day_num; }
			set
			{
				this.OnPropertyValueChange(_.day_num,_day_num,value);
				this._day_num=value;
			}
		}
		/// <summary>
		/// 日限制金额分 0默认不限制
		/// </summary>
		public int day_income
		{
			get{ return _day_income; }
			set
			{
				this.OnPropertyValueChange(_.day_income,_day_income,value);
				this._day_income=value;
			}
		}
		/// <summary>
		/// 是否启用：0：不启用，1：启用
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
		/// _0不关闭省份 1关闭省份
		/// </summary>
		public int? close_stat
		{
			get{ return _close_stat; }
			set
			{
				this.OnPropertyValueChange(_.close_stat,_close_stat,value);
				this._close_stat=value;
			}
		}
		/// <summary>
		/// 公司
		/// </summary>
		public string spid
		{
			get{ return _spid; }
			set
			{
				this.OnPropertyValueChange(_.spid,_spid,value);
				this._spid=value;
			}
		}
		/// <summary>
		/// 
		/// </summary>
		public DateTime? mod_time
		{
			get{ return _mod_time; }
			set
			{
				this.OnPropertyValueChange(_.mod_time,_mod_time,value);
				this._mod_time=value;
			}
		}
		/// <summary>
		/// 
		/// </summary>
		public string mod_user
		{
			get{ return _mod_user; }
			set
			{
				this.OnPropertyValueChange(_.mod_user,_mod_user,value);
				this._mod_user=value;
			}
		}
		/// <summary>
		/// 
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
				_.cpid,
				_.limit_miscid,
				_.limit_num,
				_.limit_income,
				_.day_num,
				_.day_income,
				_.stat,
				_.close_stat,
				_.spid,
				_.mod_time,
				_.mod_user,
				_.closed_per};
		}
		/// <summary>
		/// 获取值信息
		/// </summary>
		public override object[] GetValues()
		{
			return new object[] {
				this._id,
				this._cpid,
				this._limit_miscid,
				this._limit_num,
				this._limit_income,
				this._day_num,
				this._day_income,
				this._stat,
				this._close_stat,
				this._spid,
				this._mod_time,
				this._mod_user,
				this._closed_per};
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
			public readonly static Field All = new Field("*","cp_limit");
			/// <summary>
			/// 
			/// </summary>
			public readonly static Field id = new Field("id","cp_limit","id");
			/// <summary>
			/// 合作方
			/// </summary>
			public readonly static Field cpid = new Field("cpid","cp_limit","合作方");
			/// <summary>
			/// 限制省份
			/// </summary>
			public readonly static Field limit_miscid = new Field("limit_miscid","cp_limit","限制省份");
			/// <summary>
			/// 月限制条数 0默认不限制
			/// </summary>
			public readonly static Field limit_num = new Field("limit_num","cp_limit","月限制条数 0默认不限制");
			/// <summary>
			/// 月限制金额分 0默认不限制
			/// </summary>
			public readonly static Field limit_income = new Field("limit_income","cp_limit","月限制金额分 0默认不限制");
			/// <summary>
			/// 日限制条数 0默认不限制
			/// </summary>
			public readonly static Field day_num = new Field("day_num","cp_limit","日限制条数 0默认不限制");
			/// <summary>
			/// 日限制金额分 0默认不限制
			/// </summary>
			public readonly static Field day_income = new Field("day_income","cp_limit","日限制金额分 0默认不限制");
			/// <summary>
			/// 是否启用：0：不启用，1：启用
			/// </summary>
			public readonly static Field stat = new Field("stat","cp_limit","是否启用：0：不启用，1：启用");
			/// <summary>
			/// _0不关闭省份 1关闭省份
			/// </summary>
			public readonly static Field close_stat = new Field("close_stat","cp_limit","_0不关闭省份 1关闭省份");
			/// <summary>
			/// 公司
			/// </summary>
			public readonly static Field spid = new Field("spid","cp_limit","公司");
			/// <summary>
			/// 
			/// </summary>
			public readonly static Field mod_time = new Field("mod_time","cp_limit","mod_time");
			/// <summary>
			/// 
			/// </summary>
			public readonly static Field mod_user = new Field("mod_user","cp_limit","mod_user");
			/// <summary>
			/// 
			/// </summary>
			public readonly static Field closed_per = new Field("closed_per","cp_limit","closed_per");
		}
		#endregion


	}
}
