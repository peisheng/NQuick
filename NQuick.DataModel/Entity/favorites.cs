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

namespace NQuick.Model
{

	/// <summary>
	/// 实体类favorites 。(属性说明自动提取数据库字段的描述信息)
	/// </summary>
	[Table("favorites")]
	[Serializable]
	public partial class favorites : Entity 
	{
		#region Model
		private int _id;
		private long? _FavoritesId;
		private string _FavoritesTitle;
		private int? _Type;
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
		public long? FavoritesId
		{
			get{ return _FavoritesId; }
			set
			{
				this.OnPropertyValueChange(_.FavoritesId,_FavoritesId,value);
				this._FavoritesId=value;
			}
		}
		/// <summary>
		/// 
		/// </summary>
		public string FavoritesTitle
		{
			get{ return _FavoritesTitle; }
			set
			{
				this.OnPropertyValueChange(_.FavoritesTitle,_FavoritesTitle,value);
				this._FavoritesTitle=value;
			}
		}
		/// <summary>
		/// 
		/// </summary>
		public int? Type
		{
			get{ return _Type; }
			set
			{
				this.OnPropertyValueChange(_.Type,_Type,value);
				this._Type=value;
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
				_.FavoritesId,
				_.FavoritesTitle,
				_.Type};
		}
		/// <summary>
		/// 获取值信息
		/// </summary>
		public override object[] GetValues()
		{
			return new object[] {
				this._id,
				this._FavoritesId,
				this._FavoritesTitle,
				this._Type};
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
			public readonly static Field All = new Field("*","favorites");
			/// <summary>
			/// 
			/// </summary>
			public readonly static Field id = new Field("id","favorites","id");
			/// <summary>
			/// 
			/// </summary>
			public readonly static Field FavoritesId = new Field("FavoritesId","favorites","FavoritesId");
			/// <summary>
			/// 
			/// </summary>
			public readonly static Field FavoritesTitle = new Field("FavoritesTitle","favorites","FavoritesTitle");
			/// <summary>
			/// 
			/// </summary>
			public readonly static Field Type = new Field("Type","favorites","Type");
		}
		#endregion


	}
}
