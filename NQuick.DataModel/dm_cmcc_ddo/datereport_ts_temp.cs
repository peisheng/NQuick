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
	/// 实体类datereport_ts_temp 。(属性说明自动提取数据库字段的描述信息)
	/// </summary>
	[Table("datereport_ts_temp")]
	[Serializable]
	public partial class datereport_ts_temp : Entity 
	{
		#region Model
		private int _id;
		private DateTime? _tjdate;
		private string _province;
		private string _spname;
		private string _service_type;
		private int? _u_ts;
		private int? _u_ts_new;
		private int? _fee_user;
		private int? _fee_user_all;
		private DateTime? _add_time;
		private string _add_name;
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
		public DateTime? tjdate
		{
			get{ return _tjdate; }
			set
			{
				this.OnPropertyValueChange(_.tjdate,_tjdate,value);
				this._tjdate=value;
			}
		}
		/// <summary>
		/// 
		/// </summary>
		public string province
		{
			get{ return _province; }
			set
			{
				this.OnPropertyValueChange(_.province,_province,value);
				this._province=value;
			}
		}
		/// <summary>
		/// 
		/// </summary>
		public string spname
		{
			get{ return _spname; }
			set
			{
				this.OnPropertyValueChange(_.spname,_spname,value);
				this._spname=value;
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
		/// 不知情投诉工单量
		/// </summary>
		public int? u_ts
		{
			get{ return _u_ts; }
			set
			{
				this.OnPropertyValueChange(_.u_ts,_u_ts,value);
				this._u_ts=value;
			}
		}
		/// <summary>
		/// 新增不知情投诉工单量
		/// </summary>
		public int? u_ts_new
		{
			get{ return _u_ts_new; }
			set
			{
				this.OnPropertyValueChange(_.u_ts_new,_u_ts_new,value);
				this._u_ts_new=value;
			}
		}
		/// <summary>
		/// 付费用户数
		/// </summary>
		public int? fee_user
		{
			get{ return _fee_user; }
			set
			{
				this.OnPropertyValueChange(_.fee_user,_fee_user,value);
				this._fee_user=value;
			}
		}
		/// <summary>
		/// 上月至今付费用户数
		/// </summary>
		public int? fee_user_all
		{
			get{ return _fee_user_all; }
			set
			{
				this.OnPropertyValueChange(_.fee_user_all,_fee_user_all,value);
				this._fee_user_all=value;
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
		/// <summary>
		/// 
		/// </summary>
		public string add_name
		{
			get{ return _add_name; }
			set
			{
				this.OnPropertyValueChange(_.add_name,_add_name,value);
				this._add_name=value;
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
				_.tjdate,
				_.province,
				_.spname,
				_.service_type,
				_.u_ts,
				_.u_ts_new,
				_.fee_user,
				_.fee_user_all,
				_.add_time,
				_.add_name};
		}
		/// <summary>
		/// 获取值信息
		/// </summary>
		public override object[] GetValues()
		{
			return new object[] {
				this._id,
				this._tjdate,
				this._province,
				this._spname,
				this._service_type,
				this._u_ts,
				this._u_ts_new,
				this._fee_user,
				this._fee_user_all,
				this._add_time,
				this._add_name};
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
			public readonly static Field All = new Field("*","datereport_ts_temp");
			/// <summary>
			/// 
			/// </summary>
			public readonly static Field id = new Field("id","datereport_ts_temp","id");
			/// <summary>
			/// 
			/// </summary>
			public readonly static Field tjdate = new Field("tjdate","datereport_ts_temp","tjdate");
			/// <summary>
			/// 
			/// </summary>
			public readonly static Field province = new Field("province","datereport_ts_temp","province");
			/// <summary>
			/// 
			/// </summary>
			public readonly static Field spname = new Field("spname","datereport_ts_temp","spname");
			/// <summary>
			/// 
			/// </summary>
			public readonly static Field service_type = new Field("service_type","datereport_ts_temp","service_type");
			/// <summary>
			/// 不知情投诉工单量
			/// </summary>
			public readonly static Field u_ts = new Field("u_ts","datereport_ts_temp","不知情投诉工单量");
			/// <summary>
			/// 新增不知情投诉工单量
			/// </summary>
			public readonly static Field u_ts_new = new Field("u_ts_new","datereport_ts_temp","新增不知情投诉工单量");
			/// <summary>
			/// 付费用户数
			/// </summary>
			public readonly static Field fee_user = new Field("fee_user","datereport_ts_temp","付费用户数");
			/// <summary>
			/// 上月至今付费用户数
			/// </summary>
			public readonly static Field fee_user_all = new Field("fee_user_all","datereport_ts_temp","上月至今付费用户数");
			/// <summary>
			/// 
			/// </summary>
			public readonly static Field add_time = new Field("add_time","datereport_ts_temp","add_time");
			/// <summary>
			/// 
			/// </summary>
			public readonly static Field add_name = new Field("add_name","datereport_ts_temp","add_name");
		}
		#endregion


	}
}
