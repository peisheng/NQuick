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
	/// 实体类region 。(属性说明自动提取数据库字段的描述信息)
	/// </summary>
	[Table("region")]
	[Serializable]
	public partial class region : Entity 
	{
		#region Model
		private int _id;
		private string _name;
		private string _code;
		private string _parent_code;
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
		/// 省份名称或者城市名称
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
		/// 省份代码或者城市代码
		/// </summary>
		public string code
		{
			get{ return _code; }
			set
			{
				this.OnPropertyValueChange(_.code,_code,value);
				this._code=value;
			}
		}
		/// <summary>
		/// 省份值为空，或者为省份代码
		/// </summary>
		public string parent_code
		{
			get{ return _parent_code; }
			set
			{
				this.OnPropertyValueChange(_.parent_code,_parent_code,value);
				this._parent_code=value;
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
				_.name,
				_.code,
				_.parent_code};
		}
		/// <summary>
		/// 获取值信息
		/// </summary>
		public override object[] GetValues()
		{
			return new object[] {
				this._id,
				this._name,
				this._code,
				this._parent_code};
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
			public readonly static Field All = new Field("*","region");
			/// <summary>
			/// 
			/// </summary>
			public readonly static Field id = new Field("id","region","id");
			/// <summary>
			/// 省份名称或者城市名称
			/// </summary>
			public readonly static Field name = new Field("name","region","省份名称或者城市名称");
			/// <summary>
			/// 省份代码或者城市代码
			/// </summary>
			public readonly static Field code = new Field("code","region","省份代码或者城市代码");
			/// <summary>
			/// 省份值为空，或者为省份代码
			/// </summary>
			public readonly static Field parent_code = new Field("parent_code","region","省份值为空，或者为省份代码");
		}
		#endregion


	}
}
