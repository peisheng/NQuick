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
	/// 实体类admin 。(属性说明自动提取数据库字段的描述信息)
	/// </summary>
	[Table("admin")]
	[Serializable]
	public partial class admin : Entity 
	{
		#region Model
		private int _id;
		private string _username;
		private string _password;
		private string _name;
		private string _gender;
		private string _tel;
		private string _email;
		private DateTime? _indate;
		private int? _status;
		private string _adduser;
		private string _face;
		private short? _loginci;
		private DateTime? _lastdt;
		private string _style;
		private string _passkey;
		private int? _utype;
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
		public string username
		{
			get{ return _username; }
			set
			{
				this.OnPropertyValueChange(_.username,_username,value);
				this._username=value;
			}
		}
		/// <summary>
		/// 
		/// </summary>
		public string password
		{
			get{ return _password; }
			set
			{
				this.OnPropertyValueChange(_.password,_password,value);
				this._password=value;
			}
		}
		/// <summary>
		/// 
		/// </summary>
		public string name
		{
			get{ return _name; }
			set
			{
				this.OnPropertyValueChange(_.name,_name,value);
				this._name=value;
			}
		}
		/// <summary>
		/// 
		/// </summary>
		public string gender
		{
			get{ return _gender; }
			set
			{
				this.OnPropertyValueChange(_.gender,_gender,value);
				this._gender=value;
			}
		}
		/// <summary>
		/// 
		/// </summary>
		public string tel
		{
			get{ return _tel; }
			set
			{
				this.OnPropertyValueChange(_.tel,_tel,value);
				this._tel=value;
			}
		}
		/// <summary>
		/// 
		/// </summary>
		public string email
		{
			get{ return _email; }
			set
			{
				this.OnPropertyValueChange(_.email,_email,value);
				this._email=value;
			}
		}
		/// <summary>
		/// 
		/// </summary>
		public DateTime? indate
		{
			get{ return _indate; }
			set
			{
				this.OnPropertyValueChange(_.indate,_indate,value);
				this._indate=value;
			}
		}
		/// <summary>
		/// 
		/// </summary>
		public int? status
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
		/// <summary>
		/// 头像
		/// </summary>
		public string face
		{
			get{ return _face; }
			set
			{
				this.OnPropertyValueChange(_.face,_face,value);
				this._face=value;
			}
		}
		/// <summary>
		/// 登录次数
		/// </summary>
		public short? loginci
		{
			get{ return _loginci; }
			set
			{
				this.OnPropertyValueChange(_.loginci,_loginci,value);
				this._loginci=value;
			}
		}
		/// <summary>
		/// 
		/// </summary>
		public DateTime? lastdt
		{
			get{ return _lastdt; }
			set
			{
				this.OnPropertyValueChange(_.lastdt,_lastdt,value);
				this._lastdt=value;
			}
		}
		/// <summary>
		/// 皮肤颜色
		/// </summary>
		public string style
		{
			get{ return _style; }
			set
			{
				this.OnPropertyValueChange(_.style,_style,value);
				this._style=value;
			}
		}
		/// <summary>
		/// 密码匹配唯一值
		/// </summary>
		public string passkey
		{
			get{ return _passkey; }
			set
			{
				this.OnPropertyValueChange(_.passkey,_passkey,value);
				this._passkey=value;
			}
		}
		/// <summary>
		/// 用户类型0普通,1管理员
		/// </summary>
		public int? utype
		{
			get{ return _utype; }
			set
			{
				this.OnPropertyValueChange(_.utype,_utype,value);
				this._utype=value;
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
				_.username,
				_.password,
				_.name,
				_.gender,
				_.tel,
				_.email,
				_.indate,
				_.status,
				_.adduser,
				_.face,
				_.loginci,
				_.lastdt,
				_.style,
				_.passkey,
				_.utype};
		}
		/// <summary>
		/// 获取值信息
		/// </summary>
		public override object[] GetValues()
		{
			return new object[] {
				this._id,
				this._username,
				this._password,
				this._name,
				this._gender,
				this._tel,
				this._email,
				this._indate,
				this._status,
				this._adduser,
				this._face,
				this._loginci,
				this._lastdt,
				this._style,
				this._passkey,
				this._utype};
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
			public readonly static Field All = new Field("*","admin");
			/// <summary>
			/// 
			/// </summary>
			public readonly static Field id = new Field("id","admin","id");
			/// <summary>
			/// 
			/// </summary>
			public readonly static Field username = new Field("username","admin","username");
			/// <summary>
			/// 
			/// </summary>
			public readonly static Field password = new Field("password","admin","password");
			/// <summary>
			/// 
			/// </summary>
			public readonly static Field name = new Field("name","admin","name");
			/// <summary>
			/// 
			/// </summary>
			public readonly static Field gender = new Field("gender","admin","gender");
			/// <summary>
			/// 
			/// </summary>
			public readonly static Field tel = new Field("tel","admin","tel");
			/// <summary>
			/// 
			/// </summary>
			public readonly static Field email = new Field("email","admin","email");
			/// <summary>
			/// 
			/// </summary>
			public readonly static Field indate = new Field("indate","admin","indate");
			/// <summary>
			/// 
			/// </summary>
			public readonly static Field status = new Field("status","admin","status");
			/// <summary>
			/// 
			/// </summary>
			public readonly static Field adduser = new Field("adduser","admin","adduser");
			/// <summary>
			/// 头像
			/// </summary>
			public readonly static Field face = new Field("face","admin","头像");
			/// <summary>
			/// 登录次数
			/// </summary>
			public readonly static Field loginci = new Field("loginci","admin","登录次数");
			/// <summary>
			/// 
			/// </summary>
			public readonly static Field lastdt = new Field("lastdt","admin","lastdt");
			/// <summary>
			/// 皮肤颜色
			/// </summary>
			public readonly static Field style = new Field("style","admin","皮肤颜色");
			/// <summary>
			/// 密码匹配唯一值
			/// </summary>
			public readonly static Field passkey = new Field("passkey","admin","密码匹配唯一值");
			/// <summary>
			/// 用户类型0普通,1管理员
			/// </summary>
			public readonly static Field utype = new Field("utype","admin","用户类型0普通,1管理员");
		}
		#endregion


	}
}
