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
	/// 实体类tb_admins 。(属性说明自动提取数据库字段的描述信息)
	/// </summary>
	[Table("tb_admins")]
	[Serializable]
	public partial class tb_admins : Entity 
	{
		#region Model
		private int _admin_id;
		private string _admin_username;
		private string _admin_password;
		private string _admin_dept;
		private string _admin_name;
		private string _admin_gender;
		private string _admin_tel;
		private string _admin_email;
		private string _admin_pri;
		private DateTime _in_date;
		private object _in_time;
		private int _status;
		private string _adduser;
		/// <summary>
		/// 
		/// </summary>
		public int admin_id
		{
			get{ return _admin_id; }
			set
			{
				this.OnPropertyValueChange(_.admin_id,_admin_id,value);
				this._admin_id=value;
			}
		}
		/// <summary>
		/// 
		/// </summary>
		public string admin_username
		{
			get{ return _admin_username; }
			set
			{
				this.OnPropertyValueChange(_.admin_username,_admin_username,value);
				this._admin_username=value;
			}
		}
		/// <summary>
		/// 
		/// </summary>
		public string admin_password
		{
			get{ return _admin_password; }
			set
			{
				this.OnPropertyValueChange(_.admin_password,_admin_password,value);
				this._admin_password=value;
			}
		}
		/// <summary>
		/// 
		/// </summary>
		public string admin_dept
		{
			get{ return _admin_dept; }
			set
			{
				this.OnPropertyValueChange(_.admin_dept,_admin_dept,value);
				this._admin_dept=value;
			}
		}
		/// <summary>
		/// 
		/// </summary>
		public string admin_name
		{
			get{ return _admin_name; }
			set
			{
				this.OnPropertyValueChange(_.admin_name,_admin_name,value);
				this._admin_name=value;
			}
		}
		/// <summary>
		/// 
		/// </summary>
		public string admin_gender
		{
			get{ return _admin_gender; }
			set
			{
				this.OnPropertyValueChange(_.admin_gender,_admin_gender,value);
				this._admin_gender=value;
			}
		}
		/// <summary>
		/// 
		/// </summary>
		public string admin_tel
		{
			get{ return _admin_tel; }
			set
			{
				this.OnPropertyValueChange(_.admin_tel,_admin_tel,value);
				this._admin_tel=value;
			}
		}
		/// <summary>
		/// 
		/// </summary>
		public string admin_email
		{
			get{ return _admin_email; }
			set
			{
				this.OnPropertyValueChange(_.admin_email,_admin_email,value);
				this._admin_email=value;
			}
		}
		/// <summary>
		/// 
		/// </summary>
		public string admin_pri
		{
			get{ return _admin_pri; }
			set
			{
				this.OnPropertyValueChange(_.admin_pri,_admin_pri,value);
				this._admin_pri=value;
			}
		}
		/// <summary>
		/// 
		/// </summary>
		public DateTime in_date
		{
			get{ return _in_date; }
			set
			{
				this.OnPropertyValueChange(_.in_date,_in_date,value);
				this._in_date=value;
			}
		}
		/// <summary>
		/// 
		/// </summary>
		public object in_time
		{
			get{ return _in_time; }
			set
			{
				this.OnPropertyValueChange(_.in_time,_in_time,value);
				this._in_time=value;
			}
		}
		/// <summary>
		/// 
		/// </summary>
		public int status
		{
			get{ return _status; }
			set
			{
				this.OnPropertyValueChange(_.status,_status,value);
				this._status=value;
			}
		}
		/// <summary>
		/// 
		/// </summary>
		public string adduser
		{
			get{ return _adduser; }
			set
			{
				this.OnPropertyValueChange(_.adduser,_adduser,value);
				this._adduser=value;
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
				_.admin_id};
		}
		/// <summary>
		/// 获取列信息
		/// </summary>
		public override Field[] GetFields()
		{
			return new Field[] {
				_.admin_id,
				_.admin_username,
				_.admin_password,
				_.admin_dept,
				_.admin_name,
				_.admin_gender,
				_.admin_tel,
				_.admin_email,
				_.admin_pri,
				_.in_date,
				_.in_time,
				_.status,
				_.adduser};
		}
		/// <summary>
		/// 获取值信息
		/// </summary>
		public override object[] GetValues()
		{
			return new object[] {
				this._admin_id,
				this._admin_username,
				this._admin_password,
				this._admin_dept,
				this._admin_name,
				this._admin_gender,
				this._admin_tel,
				this._admin_email,
				this._admin_pri,
				this._in_date,
				this._in_time,
				this._status,
				this._adduser};
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
			public readonly static Field All = new Field("*","tb_admins");
			/// <summary>
			/// 
			/// </summary>
			public readonly static Field admin_id = new Field("admin_id","tb_admins","admin_id");
			/// <summary>
			/// 
			/// </summary>
			public readonly static Field admin_username = new Field("admin_username","tb_admins","admin_username");
			/// <summary>
			/// 
			/// </summary>
			public readonly static Field admin_password = new Field("admin_password","tb_admins","admin_password");
			/// <summary>
			/// 
			/// </summary>
			public readonly static Field admin_dept = new Field("admin_dept","tb_admins","admin_dept");
			/// <summary>
			/// 
			/// </summary>
			public readonly static Field admin_name = new Field("admin_name","tb_admins","admin_name");
			/// <summary>
			/// 
			/// </summary>
			public readonly static Field admin_gender = new Field("admin_gender","tb_admins","admin_gender");
			/// <summary>
			/// 
			/// </summary>
			public readonly static Field admin_tel = new Field("admin_tel","tb_admins","admin_tel");
			/// <summary>
			/// 
			/// </summary>
			public readonly static Field admin_email = new Field("admin_email","tb_admins","admin_email");
			/// <summary>
			/// 
			/// </summary>
			public readonly static Field admin_pri = new Field("admin_pri","tb_admins","admin_pri");
			/// <summary>
			/// 
			/// </summary>
			public readonly static Field in_date = new Field("in_date","tb_admins","in_date");
			/// <summary>
			/// 
			/// </summary>
			public readonly static Field in_time = new Field("in_time","tb_admins","in_time");
			/// <summary>
			/// 
			/// </summary>
			public readonly static Field status = new Field("status","tb_admins","status");
			/// <summary>
			/// 
			/// </summary>
			public readonly static Field adduser = new Field("adduser","tb_admins","adduser");
		}
		#endregion


	}
}
