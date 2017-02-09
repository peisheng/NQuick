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
	/// 实体类month_report 。(属性说明自动提取数据库字段的描述信息)
	/// </summary>
	[Table("month_report")]
	[Serializable]
	public partial class month_report : Entity 
	{
		#region Model
		private long _id;
		private string _sp_id;
		private string _cp_id;
		private string _product_id;
		private string _province_id;
		private int _all_mo_num;
		private int _all_mo_user;
		private int _all_mo_dst_num;
		private int _all_mo_dst_user;
		private int _mo_succ_num;
		private int _mo_succ_dst_num;
		private int _mo_succ_user;
		private int _mo_succ_dst_user;
		private int _all_mt_num;
		private int _all_mt_user;
		private int _all_mt_dst_num;
		private int _all_mt_dst_user;
		private int _mt_succ_num;
		private int _mt_succ_dst_num;
		private int _mt_succ_user;
		private int _mt_succ_dst_user;
		private int _income;
		private string _date_time;
		/// <summary>
		/// 
		/// </summary>
		public long id
		{
			get{ return _id; }
			set
			{
				this.OnPropertyValueChange(_.id,_id,value);
				this._id=value;
			}
		}
		/// <summary>
		/// 归属公司
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
		/// 合作方编号
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
		/// 业务代码
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
		/// 省份代码
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
		/// 上行总数
		/// </summary>
		public int all_mo_num
		{
			get{ return _all_mo_num; }
			set
			{
				this.OnPropertyValueChange(_.all_mo_num,_all_mo_num,value);
				this._all_mo_num=value;
			}
		}
		/// <summary>
		/// 上行总用户数
		/// </summary>
		public int all_mo_user
		{
			get{ return _all_mo_user; }
			set
			{
				this.OnPropertyValueChange(_.all_mo_user,_all_mo_user,value);
				this._all_mo_user=value;
			}
		}
		/// <summary>
		/// 上行去重总数
		/// </summary>
		public int all_mo_dst_num
		{
			get{ return _all_mo_dst_num; }
			set
			{
				this.OnPropertyValueChange(_.all_mo_dst_num,_all_mo_dst_num,value);
				this._all_mo_dst_num=value;
			}
		}
		/// <summary>
		/// 上行去重总用户数
		/// </summary>
		public int all_mo_dst_user
		{
			get{ return _all_mo_dst_user; }
			set
			{
				this.OnPropertyValueChange(_.all_mo_dst_user,_all_mo_dst_user,value);
				this._all_mo_dst_user=value;
			}
		}
		/// <summary>
		/// 成功上行总数
		/// </summary>
		public int mo_succ_num
		{
			get{ return _mo_succ_num; }
			set
			{
				this.OnPropertyValueChange(_.mo_succ_num,_mo_succ_num,value);
				this._mo_succ_num=value;
			}
		}
		/// <summary>
		/// 成功上行去重数
		/// </summary>
		public int mo_succ_dst_num
		{
			get{ return _mo_succ_dst_num; }
			set
			{
				this.OnPropertyValueChange(_.mo_succ_dst_num,_mo_succ_dst_num,value);
				this._mo_succ_dst_num=value;
			}
		}
		/// <summary>
		/// 成功上行用户数
		/// </summary>
		public int mo_succ_user
		{
			get{ return _mo_succ_user; }
			set
			{
				this.OnPropertyValueChange(_.mo_succ_user,_mo_succ_user,value);
				this._mo_succ_user=value;
			}
		}
		/// <summary>
		/// 成功上行去重用户数
		/// </summary>
		public int mo_succ_dst_user
		{
			get{ return _mo_succ_dst_user; }
			set
			{
				this.OnPropertyValueChange(_.mo_succ_dst_user,_mo_succ_dst_user,value);
				this._mo_succ_dst_user=value;
			}
		}
		/// <summary>
		/// 下行总数
		/// </summary>
		public int all_mt_num
		{
			get{ return _all_mt_num; }
			set
			{
				this.OnPropertyValueChange(_.all_mt_num,_all_mt_num,value);
				this._all_mt_num=value;
			}
		}
		/// <summary>
		/// 下行总用户数
		/// </summary>
		public int all_mt_user
		{
			get{ return _all_mt_user; }
			set
			{
				this.OnPropertyValueChange(_.all_mt_user,_all_mt_user,value);
				this._all_mt_user=value;
			}
		}
		/// <summary>
		/// 下行去重总数
		/// </summary>
		public int all_mt_dst_num
		{
			get{ return _all_mt_dst_num; }
			set
			{
				this.OnPropertyValueChange(_.all_mt_dst_num,_all_mt_dst_num,value);
				this._all_mt_dst_num=value;
			}
		}
		/// <summary>
		/// 下行去重用户数
		/// </summary>
		public int all_mt_dst_user
		{
			get{ return _all_mt_dst_user; }
			set
			{
				this.OnPropertyValueChange(_.all_mt_dst_user,_all_mt_dst_user,value);
				this._all_mt_dst_user=value;
			}
		}
		/// <summary>
		/// 成功下行总数
		/// </summary>
		public int mt_succ_num
		{
			get{ return _mt_succ_num; }
			set
			{
				this.OnPropertyValueChange(_.mt_succ_num,_mt_succ_num,value);
				this._mt_succ_num=value;
			}
		}
		/// <summary>
		/// 成功下行去重数
		/// </summary>
		public int mt_succ_dst_num
		{
			get{ return _mt_succ_dst_num; }
			set
			{
				this.OnPropertyValueChange(_.mt_succ_dst_num,_mt_succ_dst_num,value);
				this._mt_succ_dst_num=value;
			}
		}
		/// <summary>
		/// 成功下行用户数
		/// </summary>
		public int mt_succ_user
		{
			get{ return _mt_succ_user; }
			set
			{
				this.OnPropertyValueChange(_.mt_succ_user,_mt_succ_user,value);
				this._mt_succ_user=value;
			}
		}
		/// <summary>
		/// 成功下行去重用户数
		/// </summary>
		public int mt_succ_dst_user
		{
			get{ return _mt_succ_dst_user; }
			set
			{
				this.OnPropertyValueChange(_.mt_succ_dst_user,_mt_succ_dst_user,value);
				this._mt_succ_dst_user=value;
			}
		}
		/// <summary>
		/// 总收入（分）
		/// </summary>
		public int income
		{
			get{ return _income; }
			set
			{
				this.OnPropertyValueChange(_.income,_income,value);
				this._income=value;
			}
		}
		/// <summary>
		/// 日期
		/// </summary>
		public string date_time
		{
			get{ return _date_time; }
			set
			{
				this.OnPropertyValueChange(_.date_time,_date_time,value);
				this._date_time=value;
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
				_.sp_id,
				_.cp_id,
				_.product_id,
				_.province_id,
				_.all_mo_num,
				_.all_mo_user,
				_.all_mo_dst_num,
				_.all_mo_dst_user,
				_.mo_succ_num,
				_.mo_succ_dst_num,
				_.mo_succ_user,
				_.mo_succ_dst_user,
				_.all_mt_num,
				_.all_mt_user,
				_.all_mt_dst_num,
				_.all_mt_dst_user,
				_.mt_succ_num,
				_.mt_succ_dst_num,
				_.mt_succ_user,
				_.mt_succ_dst_user,
				_.income,
				_.date_time};
		}
		/// <summary>
		/// 获取值信息
		/// </summary>
		public override object[] GetValues()
		{
			return new object[] {
				this._id,
				this._sp_id,
				this._cp_id,
				this._product_id,
				this._province_id,
				this._all_mo_num,
				this._all_mo_user,
				this._all_mo_dst_num,
				this._all_mo_dst_user,
				this._mo_succ_num,
				this._mo_succ_dst_num,
				this._mo_succ_user,
				this._mo_succ_dst_user,
				this._all_mt_num,
				this._all_mt_user,
				this._all_mt_dst_num,
				this._all_mt_dst_user,
				this._mt_succ_num,
				this._mt_succ_dst_num,
				this._mt_succ_user,
				this._mt_succ_dst_user,
				this._income,
				this._date_time};
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
			public readonly static Field All = new Field("*","month_report");
			/// <summary>
			/// 
			/// </summary>
			public readonly static Field id = new Field("id","month_report","id");
			/// <summary>
			/// 归属公司
			/// </summary>
			public readonly static Field sp_id = new Field("sp_id","month_report","归属公司");
			/// <summary>
			/// 合作方编号
			/// </summary>
			public readonly static Field cp_id = new Field("cp_id","month_report","合作方编号");
			/// <summary>
			/// 业务代码
			/// </summary>
			public readonly static Field product_id = new Field("product_id","month_report","业务代码");
			/// <summary>
			/// 省份代码
			/// </summary>
			public readonly static Field province_id = new Field("province_id","month_report","省份代码");
			/// <summary>
			/// 上行总数
			/// </summary>
			public readonly static Field all_mo_num = new Field("all_mo_num","month_report","上行总数");
			/// <summary>
			/// 上行总用户数
			/// </summary>
			public readonly static Field all_mo_user = new Field("all_mo_user","month_report","上行总用户数");
			/// <summary>
			/// 上行去重总数
			/// </summary>
			public readonly static Field all_mo_dst_num = new Field("all_mo_dst_num","month_report","上行去重总数");
			/// <summary>
			/// 上行去重总用户数
			/// </summary>
			public readonly static Field all_mo_dst_user = new Field("all_mo_dst_user","month_report","上行去重总用户数");
			/// <summary>
			/// 成功上行总数
			/// </summary>
			public readonly static Field mo_succ_num = new Field("mo_succ_num","month_report","成功上行总数");
			/// <summary>
			/// 成功上行去重数
			/// </summary>
			public readonly static Field mo_succ_dst_num = new Field("mo_succ_dst_num","month_report","成功上行去重数");
			/// <summary>
			/// 成功上行用户数
			/// </summary>
			public readonly static Field mo_succ_user = new Field("mo_succ_user","month_report","成功上行用户数");
			/// <summary>
			/// 成功上行去重用户数
			/// </summary>
			public readonly static Field mo_succ_dst_user = new Field("mo_succ_dst_user","month_report","成功上行去重用户数");
			/// <summary>
			/// 下行总数
			/// </summary>
			public readonly static Field all_mt_num = new Field("all_mt_num","month_report","下行总数");
			/// <summary>
			/// 下行总用户数
			/// </summary>
			public readonly static Field all_mt_user = new Field("all_mt_user","month_report","下行总用户数");
			/// <summary>
			/// 下行去重总数
			/// </summary>
			public readonly static Field all_mt_dst_num = new Field("all_mt_dst_num","month_report","下行去重总数");
			/// <summary>
			/// 下行去重用户数
			/// </summary>
			public readonly static Field all_mt_dst_user = new Field("all_mt_dst_user","month_report","下行去重用户数");
			/// <summary>
			/// 成功下行总数
			/// </summary>
			public readonly static Field mt_succ_num = new Field("mt_succ_num","month_report","成功下行总数");
			/// <summary>
			/// 成功下行去重数
			/// </summary>
			public readonly static Field mt_succ_dst_num = new Field("mt_succ_dst_num","month_report","成功下行去重数");
			/// <summary>
			/// 成功下行用户数
			/// </summary>
			public readonly static Field mt_succ_user = new Field("mt_succ_user","month_report","成功下行用户数");
			/// <summary>
			/// 成功下行去重用户数
			/// </summary>
			public readonly static Field mt_succ_dst_user = new Field("mt_succ_dst_user","month_report","成功下行去重用户数");
			/// <summary>
			/// 总收入（分）
			/// </summary>
			public readonly static Field income = new Field("income","month_report","总收入（分）");
			/// <summary>
			/// 日期
			/// </summary>
			public readonly static Field date_time = new Field("date_time","month_report","日期");
		}
		#endregion


	}
}
