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
	/// 实体类vc_sms_month_appinfo 。(属性说明自动提取数据库字段的描述信息)
	/// </summary>
	[Table("vc_sms_month_appinfo")]
	[Serializable]
	public partial class vc_sms_month_appinfo : Entity 
	{
		#region Model
		private int _id;
		private string _appid;
		private string _product_name;
		private string _product_id;
		private string _sp_id;
		private string _price;
		private string _dg_content;
		private string _dg_prot;
		private string _td_content;
		private string _td_prot;
		private string _service_name;
		private string _app_name;
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
		public string appid
		{
			get{ return _appid; }
			set
			{
				this.OnPropertyValueChange(_.appid,_appid,value);
				this._appid=value;
			}
		}
		/// <summary>
		/// 
		/// </summary>
		public string product_name
		{
			get{ return _product_name; }
			set
			{
				this.OnPropertyValueChange(_.product_name,_product_name,value);
				this._product_name=value;
			}
		}
		/// <summary>
		/// 
		/// </summary>
		public string product_id
		{
			get{ return _product_id; }
			set
			{
				this.OnPropertyValueChange(_.product_id,_product_id,value);
				this._product_id=value;
			}
		}
		/// <summary>
		/// 
		/// </summary>
		public string sp_id
		{
			get{ return _sp_id; }
			set
			{
				this.OnPropertyValueChange(_.sp_id,_sp_id,value);
				this._sp_id=value;
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
		public string dg_content
		{
			get{ return _dg_content; }
			set
			{
				this.OnPropertyValueChange(_.dg_content,_dg_content,value);
				this._dg_content=value;
			}
		}
		/// <summary>
		/// 
		/// </summary>
		public string dg_prot
		{
			get{ return _dg_prot; }
			set
			{
				this.OnPropertyValueChange(_.dg_prot,_dg_prot,value);
				this._dg_prot=value;
			}
		}
		/// <summary>
		/// 
		/// </summary>
		public string td_content
		{
			get{ return _td_content; }
			set
			{
				this.OnPropertyValueChange(_.td_content,_td_content,value);
				this._td_content=value;
			}
		}
		/// <summary>
		/// 
		/// </summary>
		public string td_prot
		{
			get{ return _td_prot; }
			set
			{
				this.OnPropertyValueChange(_.td_prot,_td_prot,value);
				this._td_prot=value;
			}
		}
		/// <summary>
		/// 
		/// </summary>
		public string service_name
		{
			get{ return _service_name; }
			set
			{
				this.OnPropertyValueChange(_.service_name,_service_name,value);
				this._service_name=value;
			}
		}
		/// <summary>
		/// 
		/// </summary>
		public string app_name
		{
			get{ return _app_name; }
			set
			{
				this.OnPropertyValueChange(_.app_name,_app_name,value);
				this._app_name=value;
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
				_.appid,
				_.product_name,
				_.product_id,
				_.sp_id,
				_.price,
				_.dg_content,
				_.dg_prot,
				_.td_content,
				_.td_prot,
				_.service_name,
				_.app_name};
		}
		/// <summary>
		/// 获取值信息
		/// </summary>
		public override object[] GetValues()
		{
			return new object[] {
				this._id,
				this._appid,
				this._product_name,
				this._product_id,
				this._sp_id,
				this._price,
				this._dg_content,
				this._dg_prot,
				this._td_content,
				this._td_prot,
				this._service_name,
				this._app_name};
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
			public readonly static Field All = new Field("*","vc_sms_month_appinfo");
			/// <summary>
			/// 
			/// </summary>
			public readonly static Field id = new Field("id","vc_sms_month_appinfo","id");
			/// <summary>
			/// 
			/// </summary>
			public readonly static Field appid = new Field("appid","vc_sms_month_appinfo","appid");
			/// <summary>
			/// 
			/// </summary>
			public readonly static Field product_name = new Field("product_name","vc_sms_month_appinfo","product_name");
			/// <summary>
			/// 
			/// </summary>
			public readonly static Field product_id = new Field("product_id","vc_sms_month_appinfo","product_id");
			/// <summary>
			/// 
			/// </summary>
			public readonly static Field sp_id = new Field("sp_id","vc_sms_month_appinfo","sp_id");
			/// <summary>
			/// 
			/// </summary>
			public readonly static Field price = new Field("price","vc_sms_month_appinfo","price");
			/// <summary>
			/// 
			/// </summary>
			public readonly static Field dg_content = new Field("dg_content","vc_sms_month_appinfo","dg_content");
			/// <summary>
			/// 
			/// </summary>
			public readonly static Field dg_prot = new Field("dg_prot","vc_sms_month_appinfo","dg_prot");
			/// <summary>
			/// 
			/// </summary>
			public readonly static Field td_content = new Field("td_content","vc_sms_month_appinfo","td_content");
			/// <summary>
			/// 
			/// </summary>
			public readonly static Field td_prot = new Field("td_prot","vc_sms_month_appinfo","td_prot");
			/// <summary>
			/// 
			/// </summary>
			public readonly static Field service_name = new Field("service_name","vc_sms_month_appinfo","service_name");
			/// <summary>
			/// 
			/// </summary>
			public readonly static Field app_name = new Field("app_name","vc_sms_month_appinfo","app_name");
		}
		#endregion


	}
}
