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
	/// 实体类ts_cpn 。(属性说明自动提取数据库字段的描述信息)
	/// </summary>
	[Table("ts_cpn")]
	[Serializable]
	public partial class ts_cpn : Entity 
	{
		#region Model
		private int _id;
		private string _filename;
		private DateTime? _upload_time;
		private string _upload_user;
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
		public string filename
		{
			get{ return _filename; }
			set
			{
				this.OnPropertyValueChange(_.filename,_filename,value);
				this._filename=value;
			}
		}
		/// <summary>
		/// 
		/// </summary>
		public DateTime? upload_time
		{
			get{ return _upload_time; }
			set
			{
				this.OnPropertyValueChange(_.upload_time,_upload_time,value);
				this._upload_time=value;
			}
		}
		/// <summary>
		/// 
		/// </summary>
		public string upload_user
		{
			get{ return _upload_user; }
			set
			{
				this.OnPropertyValueChange(_.upload_user,_upload_user,value);
				this._upload_user=value;
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
				_.filename,
				_.upload_time,
				_.upload_user};
		}
		/// <summary>
		/// 获取值信息
		/// </summary>
		public override object[] GetValues()
		{
			return new object[] {
				this._id,
				this._filename,
				this._upload_time,
				this._upload_user};
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
			public readonly static Field All = new Field("*","ts_cpn");
			/// <summary>
			/// 
			/// </summary>
			public readonly static Field id = new Field("id","ts_cpn","id");
			/// <summary>
			/// 
			/// </summary>
			public readonly static Field filename = new Field("filename","ts_cpn","filename");
			/// <summary>
			/// 
			/// </summary>
			public readonly static Field upload_time = new Field("upload_time","ts_cpn","upload_time");
			/// <summary>
			/// 
			/// </summary>
			public readonly static Field upload_user = new Field("upload_user","ts_cpn","upload_user");
		}
		#endregion


	}
}

