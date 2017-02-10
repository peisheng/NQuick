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
	/// 实体类vc_sdk_record 。(属性说明自动提取数据库字段的描述信息)
	/// </summary>
	[Table("vc_sdk_record")]
	[Serializable]
	public partial class vc_sdk_record : Entity 
	{
		#region Model
		private int _id;
		private string _order_no;
		private string _type;
		private string _pay_code;
		private string _mobile;
		private int? _price;
		private DateTime? _createtime;
		private int? _status;
		private string _appid;
		private string _exdate;
		private string _sign;
		private string _sp_id;
		private string _cp_id;
		private int? _report_stat;
		private int? _report_times;
		private int? _closed_stat;
		private string _province_id;
		private string _area_code;
		private DateTime? _unsubtime;
		private string _product_name;
		private string _src_cp_id;
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
		/// 交易标识
		/// </summary>
		public string order_no
		{
			get{ return _order_no; }
			set
			{
				this.OnPropertyValueChange(_.order_no,_order_no,value);
				this._order_no=value;
			}
		}
		/// <summary>
		/// _1点播 2包月 3退订
		/// </summary>
		public string type
		{
			get{ return _type; }
			set
			{
				this.OnPropertyValueChange(_.type,_type,value);
				this._type=value;
			}
		}
		/// <summary>
		/// 计费代码
		/// </summary>
		public string pay_code
		{
			get{ return _pay_code; }
			set
			{
				this.OnPropertyValueChange(_.pay_code,_pay_code,value);
				this._pay_code=value;
			}
		}
		/// <summary>
		/// 手机号码
		/// </summary>
		public string mobile
		{
			get{ return _mobile; }
			set
			{
				this.OnPropertyValueChange(_.mobile,_mobile,value);
				this._mobile=value;
			}
		}
		/// <summary>
		/// 资费(分)
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
		/// 请求时间
		/// </summary>
		public DateTime? createtime
		{
			get{ return _createtime; }
			set
			{
				this.OnPropertyValueChange(_.createtime,_createtime,value);
				this._createtime=value;
			}
		}
		/// <summary>
		/// _0:扣费成功,1:扣费失败,3:退订
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
		/// 计费代码
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
		/// 透传字段
		/// </summary>
		public string exdate
		{
			get{ return _exdate; }
			set
			{
				this.OnPropertyValueChange(_.exdate,_exdate,value);
				this._exdate=value;
			}
		}
		/// <summary>
		/// 签名
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
		/// _0 未发送 1已发送
		/// </summary>
		public int? report_stat
		{
			get{ return _report_stat; }
			set
			{
				this.OnPropertyValueChange(_.report_stat,_report_stat,value);
				this._report_stat=value;
			}
		}
		/// <summary>
		/// 发送给合作方次数
		/// </summary>
		public int? report_times
		{
			get{ return _report_times; }
			set
			{
				this.OnPropertyValueChange(_.report_times,_report_times,value);
				this._report_times=value;
			}
		}
		/// <summary>
		/// _0不核减 1核减
		/// </summary>
		public int? closed_stat
		{
			get{ return _closed_stat; }
			set
			{
				this.OnPropertyValueChange(_.closed_stat,_closed_stat,value);
				this._closed_stat=value;
			}
		}
		/// <summary>
		/// 
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
		/// 
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
		/// 
		/// </summary>
		public DateTime? unsubtime
		{
			get{ return _unsubtime; }
			set
			{
				this.OnPropertyValueChange(_.unsubtime,_unsubtime,value);
				this._unsubtime=value;
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
				_.order_no,
				_.type,
				_.pay_code,
				_.mobile,
				_.price,
				_.createtime,
				_.status,
				_.appid,
				_.exdate,
				_.sign,
				_.sp_id,
				_.cp_id,
				_.report_stat,
				_.report_times,
				_.closed_stat,
				_.province_id,
				_.area_code,
				_.unsubtime,
				_.product_name,
				_.src_cp_id,
				_.app_name};
		}
		/// <summary>
		/// 获取值信息
		/// </summary>
		public override object[] GetValues()
		{
			return new object[] {
				this._id,
				this._order_no,
				this._type,
				this._pay_code,
				this._mobile,
				this._price,
				this._createtime,
				this._status,
				this._appid,
				this._exdate,
				this._sign,
				this._sp_id,
				this._cp_id,
				this._report_stat,
				this._report_times,
				this._closed_stat,
				this._province_id,
				this._area_code,
				this._unsubtime,
				this._product_name,
				this._src_cp_id,
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
			public readonly static Field All = new Field("*","vc_sdk_record");
			/// <summary>
			/// 
			/// </summary>
			public readonly static Field id = new Field("id","vc_sdk_record","id");
			/// <summary>
			/// 交易标识
			/// </summary>
			public readonly static Field order_no = new Field("order_no","vc_sdk_record","交易标识");
			/// <summary>
			/// _1点播 2包月 3退订
			/// </summary>
			public readonly static Field type = new Field("type","vc_sdk_record","_1点播 2包月 3退订");
			/// <summary>
			/// 计费代码
			/// </summary>
			public readonly static Field pay_code = new Field("pay_code","vc_sdk_record","计费代码");
			/// <summary>
			/// 手机号码
			/// </summary>
			public readonly static Field mobile = new Field("mobile","vc_sdk_record","手机号码");
			/// <summary>
			/// 资费(分)
			/// </summary>
			public readonly static Field price = new Field("price","vc_sdk_record","资费(分)");
			/// <summary>
			/// 请求时间
			/// </summary>
			public readonly static Field createtime = new Field("createtime","vc_sdk_record","请求时间");
			/// <summary>
			/// _0:扣费成功,1:扣费失败,3:退订
			/// </summary>
			public readonly static Field status = new Field("status","vc_sdk_record","_0:扣费成功,1:扣费失败,3:退订");
			/// <summary>
			/// 计费代码
			/// </summary>
			public readonly static Field appid = new Field("appid","vc_sdk_record","计费代码");
			/// <summary>
			/// 透传字段
			/// </summary>
			public readonly static Field exdate = new Field("exdate","vc_sdk_record","透传字段");
			/// <summary>
			/// 签名
			/// </summary>
			public readonly static Field sign = new Field("sign","vc_sdk_record","签名");
			/// <summary>
			/// 
			/// </summary>
			public readonly static Field sp_id = new Field("sp_id","vc_sdk_record","sp_id");
			/// <summary>
			/// 
			/// </summary>
			public readonly static Field cp_id = new Field("cp_id","vc_sdk_record","cp_id");
			/// <summary>
			/// _0 未发送 1已发送
			/// </summary>
			public readonly static Field report_stat = new Field("report_stat","vc_sdk_record","_0 未发送 1已发送");
			/// <summary>
			/// 发送给合作方次数
			/// </summary>
			public readonly static Field report_times = new Field("report_times","vc_sdk_record","发送给合作方次数");
			/// <summary>
			/// _0不核减 1核减
			/// </summary>
			public readonly static Field closed_stat = new Field("closed_stat","vc_sdk_record","_0不核减 1核减");
			/// <summary>
			/// 
			/// </summary>
			public readonly static Field province_id = new Field("province_id","vc_sdk_record","province_id");
			/// <summary>
			/// 
			/// </summary>
			public readonly static Field area_code = new Field("area_code","vc_sdk_record","area_code");
			/// <summary>
			/// 
			/// </summary>
			public readonly static Field unsubtime = new Field("unsubtime","vc_sdk_record","unsubtime");
			/// <summary>
			/// 
			/// </summary>
			public readonly static Field product_name = new Field("product_name","vc_sdk_record","product_name");
			/// <summary>
			/// 
			/// </summary>
			public readonly static Field src_cp_id = new Field("src_cp_id","vc_sdk_record","src_cp_id");
			/// <summary>
			/// 
			/// </summary>
			public readonly static Field app_name = new Field("app_name","vc_sdk_record","app_name");
		}
		#endregion


	}
}
