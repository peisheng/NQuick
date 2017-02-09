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
	/// 实体类service_info 。(属性说明自动提取数据库字段的描述信息)
	/// </summary>
	[Table("service_info")]
	[Serializable]
	public partial class service_info : Entity 
	{
		#region Model
		private int _id;
		private string _service_id;
		private string _service_name;
		private string _content;
		private string _ch_id;
		private string _sp_id;
		private string _service_type;
		private int? _price;
		private DateTime? _coop_date;
		private int _coop_status;
		private int? _match_type;
		private string _channel_id;
		private string _td_content;
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
		/// 业务id/道具id
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
		/// 道具名称
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
		/// 短、彩指令
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
		/// 游戏id,长号码
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
		/// 业务线类型
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
		/// <summary>
		/// 资费
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
		/// 合作时间
		/// </summary>
		public DateTime? coop_date
		{
			get{ return _coop_date; }
			set
			{
				this.OnPropertyValueChange(_.coop_date,_coop_date,value);
				this._coop_date=value;
			}
		}
		/// <summary>
		/// _0 开通 1关闭
		/// </summary>
		public int coop_status
		{
			get{ return _coop_status; }
			set
			{
				this.OnPropertyValueChange(_.coop_status,_coop_status,value);
				this._coop_status=value;
			}
		}
		/// <summary>
		/// _0模糊匹配  1精确匹配（短彩匹配类型）
		/// </summary>
		public int? match_type
		{
			get{ return _match_type; }
			set
			{
				this.OnPropertyValueChange(_.match_type,_match_type,value);
				this._match_type=value;
			}
		}
		/// <summary>
		/// 
		/// </summary>
		public string channel_id
		{
			get{ return _channel_id; }
			set
			{
				this.OnPropertyValueChange(_.channel_id,_channel_id,value);
				this._channel_id=value;
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
				_.service_id,
				_.service_name,
				_.content,
				_.ch_id,
				_.sp_id,
				_.service_type,
				_.price,
				_.coop_date,
				_.coop_status,
				_.match_type,
				_.channel_id,
				_.td_content};
		}
		/// <summary>
		/// 获取值信息
		/// </summary>
		public override object[] GetValues()
		{
			return new object[] {
				this._id,
				this._service_id,
				this._service_name,
				this._content,
				this._ch_id,
				this._sp_id,
				this._service_type,
				this._price,
				this._coop_date,
				this._coop_status,
				this._match_type,
				this._channel_id,
				this._td_content};
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
			public readonly static Field All = new Field("*","service_info");
			/// <summary>
			/// 
			/// </summary>
			public readonly static Field id = new Field("id","service_info","id");
			/// <summary>
			/// 业务id/道具id
			/// </summary>
			public readonly static Field service_id = new Field("service_id","service_info","业务id/道具id");
			/// <summary>
			/// 道具名称
			/// </summary>
			public readonly static Field service_name = new Field("service_name","service_info","道具名称");
			/// <summary>
			/// 短、彩指令
			/// </summary>
			public readonly static Field content = new Field("content","service_info","短、彩指令");
			/// <summary>
			/// 游戏id,长号码
			/// </summary>
			public readonly static Field ch_id = new Field("ch_id","service_info","游戏id,长号码");
			/// <summary>
			/// 
			/// </summary>
			public readonly static Field sp_id = new Field("sp_id","service_info","sp_id");
			/// <summary>
			/// 业务线类型
			/// </summary>
			public readonly static Field service_type = new Field("service_type","service_info","业务线类型");
			/// <summary>
			/// 资费
			/// </summary>
			public readonly static Field price = new Field("price","service_info","资费");
			/// <summary>
			/// 合作时间
			/// </summary>
			public readonly static Field coop_date = new Field("coop_date","service_info","合作时间");
			/// <summary>
			/// _0 开通 1关闭
			/// </summary>
			public readonly static Field coop_status = new Field("coop_status","service_info","_0 开通 1关闭");
			/// <summary>
			/// _0模糊匹配  1精确匹配（短彩匹配类型）
			/// </summary>
			public readonly static Field match_type = new Field("match_type","service_info","_0模糊匹配  1精确匹配（短彩匹配类型）");
			/// <summary>
			/// 
			/// </summary>
			public readonly static Field channel_id = new Field("channel_id","service_info","channel_id");
			/// <summary>
			/// 
			/// </summary>
			public readonly static Field td_content = new Field("td_content","service_info","td_content");
		}
		#endregion


	}
}

