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
	/// 实体类temp_phone1 。(属性说明自动提取数据库字段的描述信息)
	/// </summary>
	[Table("temp_phone1")]
	[Serializable]
	public partial class temp_phone1 : Entity 
	{
		#region Model
		private int _id;
		private string _phone;
		private string _province;
		private string _city;
		private string _datetime;
		private string _servicename;
		private string _price;
		private string _channame;
		private string _channame1;
		private string _cpname;
		private string _content;
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
		public string city
		{
			get{ return _city; }
			set
			{
				this.OnPropertyValueChange(_.city,_city,value);
				this._city=value;
			}
		}
		/// <summary>
		/// 
		/// </summary>
		public string datetime
		{
			get{ return _datetime; }
			set
			{
				this.OnPropertyValueChange(_.datetime,_datetime,value);
				this._datetime=value;
			}
		}
		/// <summary>
		/// 
		/// </summary>
		public string servicename
		{
			get{ return _servicename; }
			set
			{
				this.OnPropertyValueChange(_.servicename,_servicename,value);
				this._servicename=value;
			}
		}
		/// <summary>
		/// 
		/// </summary>
		public string price
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
		public string channame
		{
			get{ return _channame; }
			set
			{
				this.OnPropertyValueChange(_.channame,_channame,value);
				this._channame=value;
			}
		}
		/// <summary>
		/// 
		/// </summary>
		public string channame1
		{
			get{ return _channame1; }
			set
			{
				this.OnPropertyValueChange(_.channame1,_channame1,value);
				this._channame1=value;
			}
		}
		/// <summary>
		/// 
		/// </summary>
		public string cpname
		{
			get{ return _cpname; }
			set
			{
				this.OnPropertyValueChange(_.cpname,_cpname,value);
				this._cpname=value;
			}
		}
		/// <summary>
		/// 
		/// </summary>
		public string content
		{
			get{ return _content; }
			set
			{
				this.OnPropertyValueChange(_.content,_content,value);
				this._content=value;
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
				_.phone,
				_.province,
				_.city,
				_.datetime,
				_.servicename,
				_.price,
				_.channame,
				_.channame1,
				_.cpname,
				_.content};
		}
		/// <summary>
		/// 获取值信息
		/// </summary>
		public override object[] GetValues()
		{
			return new object[] {
				this._id,
				this._phone,
				this._province,
				this._city,
				this._datetime,
				this._servicename,
				this._price,
				this._channame,
				this._channame1,
				this._cpname,
				this._content};
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
			public readonly static Field All = new Field("*","temp_phone1");
			/// <summary>
			/// 
			/// </summary>
			public readonly static Field id = new Field("id","temp_phone1","id");
			/// <summary>
			/// 
			/// </summary>
			public readonly static Field phone = new Field("phone","temp_phone1","phone");
			/// <summary>
			/// 
			/// </summary>
			public readonly static Field province = new Field("province","temp_phone1","province");
			/// <summary>
			/// 
			/// </summary>
			public readonly static Field city = new Field("city","temp_phone1","city");
			/// <summary>
			/// 
			/// </summary>
			public readonly static Field datetime = new Field("datetime","temp_phone1","datetime");
			/// <summary>
			/// 
			/// </summary>
			public readonly static Field servicename = new Field("servicename","temp_phone1","servicename");
			/// <summary>
			/// 
			/// </summary>
			public readonly static Field price = new Field("price","temp_phone1","price");
			/// <summary>
			/// 
			/// </summary>
			public readonly static Field channame = new Field("channame","temp_phone1","channame");
			/// <summary>
			/// 
			/// </summary>
			public readonly static Field channame1 = new Field("channame1","temp_phone1","channame1");
			/// <summary>
			/// 
			/// </summary>
			public readonly static Field cpname = new Field("cpname","temp_phone1","cpname");
			/// <summary>
			/// 
			/// </summary>
			public readonly static Field content = new Field("content","temp_phone1","content");
		}
		#endregion


	}
}

