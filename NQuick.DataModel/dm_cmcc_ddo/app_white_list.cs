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
	/// 实体类app_white_list 。(属性说明自动提取数据库字段的描述信息)
	/// </summary>
	[Table("app_white_list")]
	[Serializable]
	public partial class app_white_list : Entity 
	{
		#region Model
		private int _id;
		private string _imsi;
		private string _remark;
		private DateTime? _addate;
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
		/// 卡号
		/// </summary>
		public string imsi
		{
			get{ return _imsi; }
			set
			{
				this.OnPropertyValueChange(_.imsi,_imsi,value);
				this._imsi=value;
			}
		}
		/// <summary>
		/// 备注
		/// </summary>
		public string remark
		{
			get{ return _remark; }
			set
			{
				this.OnPropertyValueChange(_.remark,_remark,value);
				this._remark=value;
			}
		}
		/// <summary>
		/// 
		/// </summary>
		public DateTime? addate
		{
			get{ return _addate; }
			set
			{
				this.OnPropertyValueChange(_.addate,_addate,value);
				this._addate=value;
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
				_.imsi,
				_.remark,
				_.addate};
		}
		/// <summary>
		/// 获取值信息
		/// </summary>
		public override object[] GetValues()
		{
			return new object[] {
				this._id,
				this._imsi,
				this._remark,
				this._addate};
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
			public readonly static Field All = new Field("*","app_white_list");
			/// <summary>
			/// 
			/// </summary>
			public readonly static Field id = new Field("id","app_white_list","id");
			/// <summary>
			/// 卡号
			/// </summary>
			public readonly static Field imsi = new Field("imsi","app_white_list","卡号");
			/// <summary>
			/// 备注
			/// </summary>
			public readonly static Field remark = new Field("remark","app_white_list","备注");
			/// <summary>
			/// 
			/// </summary>
			public readonly static Field addate = new Field("addate","app_white_list","addate");
		}
		#endregion


	}
}
