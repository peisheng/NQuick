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
	/// 实体类vc_sms_charge_record 。(属性说明自动提取数据库字段的描述信息)
	/// </summary>
	[Table("vc_sms_charge_record")]
	[Serializable]
	public partial class vc_sms_charge_record : Entity 
	{
		#region Model
		private int _id;
		private string _sign;
		private string _behavior;
		private string _trade_status;
		private string _trade_no;
		private string _phone;
		private string _province_id;
		private string _area_code;
		private string _product_id;
		private string _app_name;
		private string _product_name;
		private int? _price;
		private string _app_id;
		private string _fee_num;
		private string _content;
		private int? _status;
		private DateTime? _ex_datetime;
		private string _cp_id;
		private string _src_cp_id;
		private string _sp_id;
		private int? _sync_status;
		private DateTime? _sync_datetime;
		private int? _sync_times;
		private string _service_id;
		private string _ch_id;
		private string _src_trade_status;
		private string _service_type;
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
		/// ¼ÓÃÜºóÑéÖ¤
		/// </summary>
		public string sign
		{
			get{ return _sign; }
			set
			{
				this.OnPropertyValueChange(_.sign,_sign,value);
				this._sign=value;
			}
		}
		/// <summary>
		/// ÐÐÎª (¶©¹º order ÍË¶© unsubscribe)
		/// </summary>
		public string behavior
		{
			get{ return _behavior; }
			set
			{
				this.OnPropertyValueChange(_.behavior,_behavior,value);
				this._behavior=value;
			}
		}
		/// <summary>
		/// ½»Ò××´Ì¬¡£(0 ³É¹¦)
		/// </summary>
		public string trade_status
		{
			get{ return _trade_status; }
			set
			{
				this.OnPropertyValueChange(_.trade_status,_trade_status,value);
				this._trade_status=value;
			}
		}
		/// <summary>
		/// ½»Ò×Á÷Ë®ºÅ
		/// </summary>
		public string trade_no
		{
			get{ return _trade_no; }
			set
			{
				this.OnPropertyValueChange(_.trade_no,_trade_no,value);
				this._trade_no=value;
			}
		}
		/// <summary>
		/// ÊÖ»úºÅÂë
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
		/// Ê¡·Ý´úÂë
		/// </summary>
		public string province_id
		{
			get{ return _province_id; }
			set
			{
				this.OnPropertyValueChange(_.province_id,_province_id,value);
				this._province_id=value;
			}
		}
		/// <summary>
		/// ³ÇÊÐ´úÂë
		/// </summary>
		public string area_code
		{
			get{ return _area_code; }
			set
			{
				this.OnPropertyValueChange(_.area_code,_area_code,value);
				this._area_code=value;
			}
		}
		/// <summary>
		/// ²úÆ·´úÂë
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
		public string app_name
		{
			get{ return _app_name; }
			set
			{
				this.OnPropertyValueChange(_.app_name,_app_name,value);
				this._app_name=value;
			}
		}
		/// <summary>
		/// ²úÆ·Ãû³Æ
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
		/// ×Ê·Ñ(·Ö)
		/// </summary>
		public int? price
		{
			get{ return _price; }
			set
			{
				this.OnPropertyValueChange(_.price,_price,value);
				this._price=value;
			}
		}
		/// <summary>
		/// Ó¦ÓÃID
		/// </summary>
		public string app_id
		{
			get{ return _app_id; }
			set
			{
				this.OnPropertyValueChange(_.app_id,_app_id,value);
				this._app_id=value;
			}
		}
		/// <summary>
		/// 
		/// </summary>
		public string fee_num
		{
			get{ return _fee_num; }
			set
			{
				this.OnPropertyValueChange(_.fee_num,_fee_num,value);
				this._fee_num=value;
			}
		}
		/// <summary>
		/// ·¢ËÍÄÚÈÝ(µã²¥Âë)¶ÔÓ¦Extension
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
		/// <summary>
		/// _0Ç©ÃûÑéÖ¤³É¹¦£¬1ÑéÖ¤Ê§°Ü,2¿ÛÁ¿
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
		/// ½»Ò×Ê±¼ä
		/// </summary>
		public DateTime? ex_datetime
		{
			get{ return _ex_datetime; }
			set
			{
				this.OnPropertyValueChange(_.ex_datetime,_ex_datetime,value);
				this._ex_datetime=value;
			}
		}
		/// <summary>
		/// ºÏ×÷·½±àºÅ
		/// </summary>
		public string cp_id
		{
			get{ return _cp_id; }
			set
			{
				this.OnPropertyValueChange(_.cp_id,_cp_id,value);
				this._cp_id=value;
			}
		}
		/// <summary>
		/// ºË¼õ·½±àºÅ
		/// </summary>
		public string src_cp_id
		{
			get{ return _src_cp_id; }
			set
			{
				this.OnPropertyValueChange(_.src_cp_id,_src_cp_id,value);
				this._src_cp_id=value;
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
		/// Í¬²½×´Ì¬ 1³É¹¦ 0Ê§°Ü
		/// </summary>
		public int? sync_status
		{
			get{ return _sync_status; }
			set
			{
				this.OnPropertyValueChange(_.sync_status,_sync_status,value);
				this._sync_status=value;
			}
		}
		/// <summary>
		/// Í¬²½Ê±¼ä
		/// </summary>
		public DateTime? sync_datetime
		{
			get{ return _sync_datetime; }
			set
			{
				this.OnPropertyValueChange(_.sync_datetime,_sync_datetime,value);
				this._sync_datetime=value;
			}
		}
		/// <summary>
		/// Í¬²½´ÎÊý£¬×î¸ßÎª5´Î£¬³¬¹ý²»ÔÚÍ¬²½
		/// </summary>
		public int? sync_times
		{
			get{ return _sync_times; }
			set
			{
				this.OnPropertyValueChange(_.sync_times,_sync_times,value);
				this._sync_times=value;
			}
		}
		/// <summary>
		/// 
		/// </summary>
		public string service_id
		{
			get{ return _service_id; }
			set
			{
				this.OnPropertyValueChange(_.service_id,_service_id,value);
				this._service_id=value;
			}
		}
		/// <summary>
		/// 
		/// </summary>
		public string ch_id
		{
			get{ return _ch_id; }
			set
			{
				this.OnPropertyValueChange(_.ch_id,_ch_id,value);
				this._ch_id=value;
			}
		}
		/// <summary>
		/// 
		/// </summary>
		public string src_trade_status
		{
			get{ return _src_trade_status; }
			set
			{
				this.OnPropertyValueChange(_.src_trade_status,_src_trade_status,value);
				this._src_trade_status=value;
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
		#endregion

		#region Method
		/// <summary>
		/// 获取实体中的主键列
		/// </summary>
		public override Field[] GetPrimaryKeyFields()
		{
			return new Field[] {
				_.id,
				_.phone};
		}
		/// <summary>
		/// 获取列信息
		/// </summary>
		public override Field[] GetFields()
		{
			return new Field[] {
				_.id,
				_.sign,
				_.behavior,
				_.trade_status,
				_.trade_no,
				_.phone,
				_.province_id,
				_.area_code,
				_.product_id,
				_.app_name,
				_.product_name,
				_.price,
				_.app_id,
				_.fee_num,
				_.content,
				_.status,
				_.ex_datetime,
				_.cp_id,
				_.src_cp_id,
				_.sp_id,
				_.sync_status,
				_.sync_datetime,
				_.sync_times,
				_.service_id,
				_.ch_id,
				_.src_trade_status,
				_.service_type};
		}
		/// <summary>
		/// 获取值信息
		/// </summary>
		public override object[] GetValues()
		{
			return new object[] {
				this._id,
				this._sign,
				this._behavior,
				this._trade_status,
				this._trade_no,
				this._phone,
				this._province_id,
				this._area_code,
				this._product_id,
				this._app_name,
				this._product_name,
				this._price,
				this._app_id,
				this._fee_num,
				this._content,
				this._status,
				this._ex_datetime,
				this._cp_id,
				this._src_cp_id,
				this._sp_id,
				this._sync_status,
				this._sync_datetime,
				this._sync_times,
				this._service_id,
				this._ch_id,
				this._src_trade_status,
				this._service_type};
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
			public readonly static Field All = new Field("*","vc_sms_charge_record");
			/// <summary>
			/// 
			/// </summary>
			public readonly static Field id = new Field("id","vc_sms_charge_record","id");
			/// <summary>
			/// ¼ÓÃÜºóÑéÖ¤
			/// </summary>
			public readonly static Field sign = new Field("sign","vc_sms_charge_record","¼ÓÃÜºóÑéÖ¤");
			/// <summary>
			/// ÐÐÎª (¶©¹º order ÍË¶© unsubscribe)
			/// </summary>
			public readonly static Field behavior = new Field("behavior","vc_sms_charge_record","ÐÐÎª (¶©¹º order ÍË¶© unsubscribe)");
			/// <summary>
			/// ½»Ò××´Ì¬¡£(0 ³É¹¦)
			/// </summary>
			public readonly static Field trade_status = new Field("trade_status","vc_sms_charge_record","½»Ò××´Ì¬¡£(0 ³É¹¦)");
			/// <summary>
			/// ½»Ò×Á÷Ë®ºÅ
			/// </summary>
			public readonly static Field trade_no = new Field("trade_no","vc_sms_charge_record","½»Ò×Á÷Ë®ºÅ");
			/// <summary>
			/// ÊÖ»úºÅÂë
			/// </summary>
			public readonly static Field phone = new Field("phone","vc_sms_charge_record","ÊÖ»úºÅÂë");
			/// <summary>
			/// Ê¡·Ý´úÂë
			/// </summary>
			public readonly static Field province_id = new Field("province_id","vc_sms_charge_record","Ê¡·Ý´úÂë");
			/// <summary>
			/// ³ÇÊÐ´úÂë
			/// </summary>
			public readonly static Field area_code = new Field("area_code","vc_sms_charge_record","³ÇÊÐ´úÂë");
			/// <summary>
			/// ²úÆ·´úÂë
			/// </summary>
			public readonly static Field product_id = new Field("product_id","vc_sms_charge_record","²úÆ·´úÂë");
			/// <summary>
			/// 
			/// </summary>
			public readonly static Field app_name = new Field("app_name","vc_sms_charge_record","app_name");
			/// <summary>
			/// ²úÆ·Ãû³Æ
			/// </summary>
			public readonly static Field product_name = new Field("product_name","vc_sms_charge_record","²úÆ·Ãû³Æ");
			/// <summary>
			/// ×Ê·Ñ(·Ö)
			/// </summary>
			public readonly static Field price = new Field("price","vc_sms_charge_record","×Ê·Ñ(·Ö)");
			/// <summary>
			/// Ó¦ÓÃID
			/// </summary>
			public readonly static Field app_id = new Field("app_id","vc_sms_charge_record","Ó¦ÓÃID");
			/// <summary>
			/// 
			/// </summary>
			public readonly static Field fee_num = new Field("fee_num","vc_sms_charge_record","fee_num");
			/// <summary>
			/// ·¢ËÍÄÚÈÝ(µã²¥Âë)¶ÔÓ¦Extension
			/// </summary>
			public readonly static Field content = new Field("content","vc_sms_charge_record","·¢ËÍÄÚÈÝ(µã²¥Âë)¶ÔÓ¦Extension");
			/// <summary>
			/// _0Ç©ÃûÑéÖ¤³É¹¦£¬1ÑéÖ¤Ê§°Ü,2¿ÛÁ¿
			/// </summary>
			public readonly static Field status = new Field("status","vc_sms_charge_record","_0Ç©ÃûÑéÖ¤³É¹¦£¬1ÑéÖ¤Ê§°Ü,2¿ÛÁ¿");
			/// <summary>
			/// ½»Ò×Ê±¼ä
			/// </summary>
			public readonly static Field ex_datetime = new Field("ex_datetime","vc_sms_charge_record","½»Ò×Ê±¼ä");
			/// <summary>
			/// ºÏ×÷·½±àºÅ
			/// </summary>
			public readonly static Field cp_id = new Field("cp_id","vc_sms_charge_record","ºÏ×÷·½±àºÅ");
			/// <summary>
			/// ºË¼õ·½±àºÅ
			/// </summary>
			public readonly static Field src_cp_id = new Field("src_cp_id","vc_sms_charge_record","ºË¼õ·½±àºÅ");
			/// <summary>
			/// 
			/// </summary>
			public readonly static Field sp_id = new Field("sp_id","vc_sms_charge_record","sp_id");
			/// <summary>
			/// Í¬²½×´Ì¬ 1³É¹¦ 0Ê§°Ü
			/// </summary>
			public readonly static Field sync_status = new Field("sync_status","vc_sms_charge_record","Í¬²½×´Ì¬ 1³É¹¦ 0Ê§°Ü");
			/// <summary>
			/// Í¬²½Ê±¼ä
			/// </summary>
			public readonly static Field sync_datetime = new Field("sync_datetime","vc_sms_charge_record","Í¬²½Ê±¼ä");
			/// <summary>
			/// Í¬²½´ÎÊý£¬×î¸ßÎª5´Î£¬³¬¹ý²»ÔÚÍ¬²½
			/// </summary>
			public readonly static Field sync_times = new Field("sync_times","vc_sms_charge_record","Í¬²½´ÎÊý£¬×î¸ßÎª5´Î£¬³¬¹ý²»ÔÚÍ¬²½");
			/// <summary>
			/// 
			/// </summary>
			public readonly static Field service_id = new Field("service_id","vc_sms_charge_record","service_id");
			/// <summary>
			/// 
			/// </summary>
			public readonly static Field ch_id = new Field("ch_id","vc_sms_charge_record","ch_id");
			/// <summary>
			/// 
			/// </summary>
			public readonly static Field src_trade_status = new Field("src_trade_status","vc_sms_charge_record","src_trade_status");
			/// <summary>
			/// 
			/// </summary>
			public readonly static Field service_type = new Field("service_type","vc_sms_charge_record","service_type");
		}
		#endregion


	}
}

