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
	/// 实体类province 。(属性说明自动提取数据库字段的描述信息)
	/// </summary>
	[Table("province")]
	[Serializable]
	public partial class province : Entity 
	{
		#region Model
		private int _id;
		private string _provinceid;
		private string _province;
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
		public string provinceid
		{
			get{ return _provinceid; }
			set
			{
				this.OnPropertyValueChange(_.provinceid,_provinceid,value);
				this._provinceid=value;
			}
		}
		/// <summary>
		/// 
		/// </summary>
		public string Province
		{
			get{ return _province; }
			set
			{
				this.OnPropertyValueChange(_.province,_province,value);
				this._province=value;
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
				_.provinceid,
				_.province};
		}
		/// <summary>
		/// 获取值信息
		/// </summary>
		public override object[] GetValues()
		{
			return new object[] {
				this._id,
				this._provinceid,
				this._province};
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
			public readonly static Field All = new Field("*","province");
			/// <summary>
			/// 
			/// </summary>
			public readonly static Field id = new Field("id","province","id");
			/// <summary>
			/// 
			/// </summary>
			public readonly static Field provinceid = new Field("provinceid","province","provinceid");
			/// <summary>
			/// 
			/// </summary>
			public readonly static Field province = new Field("province","province","province");
		}
		#endregion


	}
}

