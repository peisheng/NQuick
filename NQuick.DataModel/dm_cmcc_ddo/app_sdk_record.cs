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
	/// 实体类app_sdk_record 。(属性说明自动提取数据库字段的描述信息)
	/// </summary>
	[Table("app_sdk_record")]
	[Serializable]
	public partial class app_sdk_record : Entity 
	{
		#region Model
		private int _id;
		private string _orderid;
		private string _pid;
		private string _imsi;
		private string _imei;
		private string _mobile;
		private string _ua;
		private string _os;
		private string _ip;
		private int? _sub_stat;
		private string _sub_msg;
		private string _sub_port;
		private string _type;
		private string _result;
		private string _msg;
		private int? _cost;
		private string _subtime;
		private string _deltime;
		private string _itemId;
		private string _sp_id;
		private string _cp_id;
		private int? _report_stat;
		private int? _report_times;
		private int? _closed_stat;
		private string _chid;
		private string _cpparam;
		private string _app_id;
		private string _province_id;
		private string _area_code;
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
		public string orderid
		{
			get{ return _orderid; }
			set
			{
				this.OnPropertyValueChange(_.orderid,_orderid,value);
				this._orderid=value;
			}
		}
		/// <summary>
		/// 计费点代码
		/// </summary>
		public string pid
		{
			get{ return _pid; }
			set
			{
				this.OnPropertyValueChange(_.pid,_pid,value);
				this._pid=value;
			}
		}
		/// <summary>
		/// 手机串号
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
		/// 设备识别码
		/// </summary>
		public string imei
		{
			get{ return _imei; }
			set
			{
				this.OnPropertyValueChange(_.imei,_imei,value);
				this._imei=value;
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
		/// 手机型号
		/// </summary>
		public string ua
		{
			get{ return _ua; }
			set
			{
				this.OnPropertyValueChange(_.ua,_ua,value);
				this._ua=value;
			}
		}
		/// <summary>
		/// 版本号
		/// </summary>
		public string os
		{
			get{ return _os; }
			set
			{
				this.OnPropertyValueChange(_.os,_os,value);
				this._os=value;
			}
		}
		/// <summary>
		/// ip
		/// </summary>
		public string ip
		{
			get{ return _ip; }
			set
			{
				this.OnPropertyValueChange(_.ip,_ip,value);
				this._ip=value;
			}
		}
		/// <summary>
		/// 请求状态0成功
		/// </summary>
		public int? sub_stat
		{
			get{ return _sub_stat; }
			set
			{
				this.OnPropertyValueChange(_.sub_stat,_sub_stat,value);
				this._sub_stat=value;
			}
		}
		/// <summary>
		/// 上行返回说明
		/// </summary>
		public string sub_msg
		{
			get{ return _sub_msg; }
			set
			{
				this.OnPropertyValueChange(_.sub_msg,_sub_msg,value);
				this._sub_msg=value;
			}
		}
		/// <summary>
		/// 
		/// </summary>
		public string sub_port
		{
			get{ return _sub_port; }
			set
			{
				this.OnPropertyValueChange(_.sub_port,_sub_port,value);
				this._sub_port=value;
			}
		}
		/// <summary>
		/// 类型
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
		/// _0表示计费成功，其它为失败
		/// </summary>
		public string result
		{
			get{ return _result; }
			set
			{
				this.OnPropertyValueChange(_.result,_result,value);
				this._result=value;
			}
		}
		/// <summary>
		/// 返回说明
		/// </summary>
		public string msg
		{
			get{ return _msg; }
			set
			{
				this.OnPropertyValueChange(_.msg,_msg,value);
				this._msg=value;
			}
		}
		/// <summary>
		/// 扣费金额
		/// </summary>
		public int? cost
		{
			get{ return _cost; }
			set
			{
				this.OnPropertyValueChange(_.cost,_cost,value);
				this._cost=value;
			}
		}
		/// <summary>
		/// 请求时间
		/// </summary>
		public string subtime
		{
			get{ return _subtime; }
			set
			{
				this.OnPropertyValueChange(_.subtime,_subtime,value);
				this._subtime=value;
			}
		}
		/// <summary>
		/// 扣费时间
		/// </summary>
		public string deltime
		{
			get{ return _deltime; }
			set
			{
				this.OnPropertyValueChange(_.deltime,_deltime,value);
				this._deltime=value;
			}
		}
		/// <summary>
		/// 咪咕计费点
		/// </summary>
		public string itemId
		{
			get{ return _itemId; }
			set
			{
				this.OnPropertyValueChange(_.itemId,_itemId,value);
				this._itemId=value;
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
		public string chid
		{
			get{ return _chid; }
			set
			{
				this.OnPropertyValueChange(_.chid,_chid,value);
				this._chid=value;
			}
		}
		/// <summary>
		/// 
		/// </summary>
		public string cpparam
		{
			get{ return _cpparam; }
			set
			{
				this.OnPropertyValueChange(_.cpparam,_cpparam,value);
				this._cpparam=value;
			}
		}
		/// <summary>
		/// 
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
				_.orderid,
				_.pid,
				_.imsi,
				_.imei,
				_.mobile,
				_.ua,
				_.os,
				_.ip,
				_.sub_stat,
				_.sub_msg,
				_.sub_port,
				_.type,
				_.result,
				_.msg,
				_.cost,
				_.subtime,
				_.deltime,
				_.itemId,
				_.sp_id,
				_.cp_id,
				_.report_stat,
				_.report_times,
				_.closed_stat,
				_.chid,
				_.cpparam,
				_.app_id,
				_.province_id,
				_.area_code};
		}
		/// <summary>
		/// 获取值信息
		/// </summary>
		public override object[] GetValues()
		{
			return new object[] {
				this._id,
				this._orderid,
				this._pid,
				this._imsi,
				this._imei,
				this._mobile,
				this._ua,
				this._os,
				this._ip,
				this._sub_stat,
				this._sub_msg,
				this._sub_port,
				this._type,
				this._result,
				this._msg,
				this._cost,
				this._subtime,
				this._deltime,
				this._itemId,
				this._sp_id,
				this._cp_id,
				this._report_stat,
				this._report_times,
				this._closed_stat,
				this._chid,
				this._cpparam,
				this._app_id,
				this._province_id,
				this._area_code};
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
			public readonly static Field All = new Field("*","app_sdk_record");
			/// <summary>
			/// 
			/// </summary>
			public readonly static Field id = new Field("id","app_sdk_record","id");
			/// <summary>
			/// 交易标识
			/// </summary>
			public readonly static Field orderid = new Field("orderid","app_sdk_record","交易标识");
			/// <summary>
			/// 计费点代码
			/// </summary>
			public readonly static Field pid = new Field("pid","app_sdk_record","计费点代码");
			/// <summary>
			/// 手机串号
			/// </summary>
			public readonly static Field imsi = new Field("imsi","app_sdk_record","手机串号");
			/// <summary>
			/// 设备识别码
			/// </summary>
			public readonly static Field imei = new Field("imei","app_sdk_record","设备识别码");
			/// <summary>
			/// 手机号码
			/// </summary>
			public readonly static Field mobile = new Field("mobile","app_sdk_record","手机号码");
			/// <summary>
			/// 手机型号
			/// </summary>
			public readonly static Field ua = new Field("ua","app_sdk_record","手机型号");
			/// <summary>
			/// 版本号
			/// </summary>
			public readonly static Field os = new Field("os","app_sdk_record","版本号");
			/// <summary>
			/// ip
			/// </summary>
			public readonly static Field ip = new Field("ip","app_sdk_record","ip");
			/// <summary>
			/// 请求状态0成功
			/// </summary>
			public readonly static Field sub_stat = new Field("sub_stat","app_sdk_record","请求状态0成功");
			/// <summary>
			/// 上行返回说明
			/// </summary>
			public readonly static Field sub_msg = new Field("sub_msg","app_sdk_record","上行返回说明");
			/// <summary>
			/// 
			/// </summary>
			public readonly static Field sub_port = new Field("sub_port","app_sdk_record","sub_port");
			/// <summary>
			/// 类型
			/// </summary>
			public readonly static Field type = new Field("type","app_sdk_record","类型");
			/// <summary>
			/// _0表示计费成功，其它为失败
			/// </summary>
			public readonly static Field result = new Field("result","app_sdk_record","_0表示计费成功，其它为失败");
			/// <summary>
			/// 返回说明
			/// </summary>
			public readonly static Field msg = new Field("msg","app_sdk_record","返回说明");
			/// <summary>
			/// 扣费金额
			/// </summary>
			public readonly static Field cost = new Field("cost","app_sdk_record","扣费金额");
			/// <summary>
			/// 请求时间
			/// </summary>
			public readonly static Field subtime = new Field("subtime","app_sdk_record","请求时间");
			/// <summary>
			/// 扣费时间
			/// </summary>
			public readonly static Field deltime = new Field("deltime","app_sdk_record","扣费时间");
			/// <summary>
			/// 咪咕计费点
			/// </summary>
			public readonly static Field itemId = new Field("itemId","app_sdk_record","咪咕计费点");
			/// <summary>
			/// 
			/// </summary>
			public readonly static Field sp_id = new Field("sp_id","app_sdk_record","sp_id");
			/// <summary>
			/// 
			/// </summary>
			public readonly static Field cp_id = new Field("cp_id","app_sdk_record","cp_id");
			/// <summary>
			/// _0 未发送 1已发送
			/// </summary>
			public readonly static Field report_stat = new Field("report_stat","app_sdk_record","_0 未发送 1已发送");
			/// <summary>
			/// 发送给合作方次数
			/// </summary>
			public readonly static Field report_times = new Field("report_times","app_sdk_record","发送给合作方次数");
			/// <summary>
			/// _0不核减 1核减
			/// </summary>
			public readonly static Field closed_stat = new Field("closed_stat","app_sdk_record","_0不核减 1核减");
			/// <summary>
			/// 
			/// </summary>
			public readonly static Field chid = new Field("chid","app_sdk_record","chid");
			/// <summary>
			/// 
			/// </summary>
			public readonly static Field cpparam = new Field("cpparam","app_sdk_record","cpparam");
			/// <summary>
			/// 
			/// </summary>
			public readonly static Field app_id = new Field("app_id","app_sdk_record","app_id");
			/// <summary>
			/// 
			/// </summary>
			public readonly static Field province_id = new Field("province_id","app_sdk_record","province_id");
			/// <summary>
			/// 
			/// </summary>
			public readonly static Field area_code = new Field("area_code","app_sdk_record","area_code");
		}
		#endregion


	}
}
