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
	/// 实体类service_match 。(属性说明自动提取数据库字段的描述信息)
	/// </summary>
	[Table("service_match")]
	[Serializable]
	public partial class service_match : Entity 
	{
		#region Model
		private int _id;
		private string _pid;
		private string _service_id;
		private string _cp_id;
		private string _sp_id;
		private string _ch_id;
		private string _service_type;
		private int? _price;
		private bool _coop_status;
		private DateTime? _start_coop_date;
		private DateTime? _stop_coop_date;
		private string _content_start;
		private string _content;
		private int? _rank;
		private int? _match_type;
		private int _sid;
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
		/// 游戏频道号、长号码
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
		/// 
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
		/// _0 开通 1关闭
		/// </summary>
		public bool coop_status
		{
			get{ return _coop_status; }
			set
			{
				this.OnPropertyValueChange(_.coop_status,_coop_status,value);
				this._coop_status=value;
			}
		}
		/// <summary>
		/// 
		/// </summary>
		public DateTime? start_coop_date
		{
			get{ return _start_coop_date; }
			set
			{
				this.OnPropertyValueChange(_.start_coop_date,_start_coop_date,value);
				this._start_coop_date=value;
			}
		}
		/// <summary>
		/// 
		/// </summary>
		public DateTime? stop_coop_date
		{
			get{ return _stop_coop_date; }
			set
			{
				this.OnPropertyValueChange(_.stop_coop_date,_stop_coop_date,value);
				this._stop_coop_date=value;
			}
		}
		/// <summary>
		/// 
		/// </summary>
		public string content_start
		{
			get{ return _content_start; }
			set
			{
				this.OnPropertyValueChange(_.content_start,_content_start,value);
				this._content_start=value;
			}
		}
		/// <summary>
		/// 上行内容
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
		/// 匹配优先级
		/// </summary>
		public int? rank
		{
			get{ return _rank; }
			set
			{
				this.OnPropertyValueChange(_.rank,_rank,value);
				this._rank=value;
			}
		}
		/// <summary>
		/// _0模糊匹配  1精确匹配  （短彩匹配类型）
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
		public int sid
		{
			get{ return _sid; }
			set
			{
				this.OnPropertyValueChange(_.sid,_sid,value);
				this._sid=value;
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
				_.pid,
				_.service_id,
				_.cp_id,
				_.sp_id,
				_.ch_id,
				_.service_type,
				_.price,
				_.coop_status,
				_.start_coop_date,
				_.stop_coop_date,
				_.content_start,
				_.content,
				_.rank,
				_.match_type,
				_.sid};
		}
		/// <summary>
		/// 获取值信息
		/// </summary>
		public override object[] GetValues()
		{
			return new object[] {
				this._id,
				this._pid,
				this._service_id,
				this._cp_id,
				this._sp_id,
				this._ch_id,
				this._service_type,
				this._price,
				this._coop_status,
				this._start_coop_date,
				this._stop_coop_date,
				this._content_start,
				this._content,
				this._rank,
				this._match_type,
				this._sid};
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
			public readonly static Field All = new Field("*","service_match");
			/// <summary>
			/// 
			/// </summary>
			public readonly static Field id = new Field("id","service_match","id");
			/// <summary>
			/// 
			/// </summary>
			public readonly static Field pid = new Field("pid","service_match","pid");
			/// <summary>
			/// 
			/// </summary>
			public readonly static Field service_id = new Field("service_id","service_match","service_id");
			/// <summary>
			/// 
			/// </summary>
			public readonly static Field cp_id = new Field("cp_id","service_match","cp_id");
			/// <summary>
			/// 
			/// </summary>
			public readonly static Field sp_id = new Field("sp_id","service_match","sp_id");
			/// <summary>
			/// 游戏频道号、长号码
			/// </summary>
			public readonly static Field ch_id = new Field("ch_id","service_match","游戏频道号、长号码");
			/// <summary>
			/// 
			/// </summary>
			public readonly static Field service_type = new Field("service_type","service_match","service_type");
			/// <summary>
			/// 
			/// </summary>
			public readonly static Field price = new Field("price","service_match","price");
			/// <summary>
			/// _0 开通 1关闭
			/// </summary>
			public readonly static Field coop_status = new Field("coop_status","service_match","_0 开通 1关闭");
			/// <summary>
			/// 
			/// </summary>
			public readonly static Field start_coop_date = new Field("start_coop_date","service_match","start_coop_date");
			/// <summary>
			/// 
			/// </summary>
			public readonly static Field stop_coop_date = new Field("stop_coop_date","service_match","stop_coop_date");
			/// <summary>
			/// 
			/// </summary>
			public readonly static Field content_start = new Field("content_start","service_match","content_start");
			/// <summary>
			/// 上行内容
			/// </summary>
			public readonly static Field content = new Field("content","service_match","上行内容");
			/// <summary>
			/// 匹配优先级
			/// </summary>
			public readonly static Field rank = new Field("rank","service_match","匹配优先级");
			/// <summary>
			/// _0模糊匹配  1精确匹配  （短彩匹配类型）
			/// </summary>
			public readonly static Field match_type = new Field("match_type","service_match","_0模糊匹配  1精确匹配  （短彩匹配类型）");
			/// <summary>
			/// 
			/// </summary>
			public readonly static Field sid = new Field("sid","service_match","sid");
		}
		#endregion


	}
}

