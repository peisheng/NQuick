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
	/// 实体类temp_test 。(属性说明自动提取数据库字段的描述信息)
	/// </summary>
	[Table("temp_test")]
	[Serializable]
	public partial class temp_test : Entity 
	{
		#region Model
		private int _id;
		private string _a;
		private string _b;
		private string _c;
		private string _d;
		private string _e;
		private string _f;
		private string _g;
		private string _l;
		private string _k;
		private string _j;
		private string _i;
		private string _m;
		private string _h;
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
		public string a
		{
			get{ return _a; }
			set
			{
				this.OnPropertyValueChange(_.a,_a,value);
				this._a=value;
			}
		}
		/// <summary>
		/// 
		/// </summary>
		public string b
		{
			get{ return _b; }
			set
			{
				this.OnPropertyValueChange(_.b,_b,value);
				this._b=value;
			}
		}
		/// <summary>
		/// 
		/// </summary>
		public string c
		{
			get{ return _c; }
			set
			{
				this.OnPropertyValueChange(_.c,_c,value);
				this._c=value;
			}
		}
		/// <summary>
		/// 
		/// </summary>
		public string d
		{
			get{ return _d; }
			set
			{
				this.OnPropertyValueChange(_.d,_d,value);
				this._d=value;
			}
		}
		/// <summary>
		/// 
		/// </summary>
		public string e
		{
			get{ return _e; }
			set
			{
				this.OnPropertyValueChange(_.e,_e,value);
				this._e=value;
			}
		}
		/// <summary>
		/// 
		/// </summary>
		public string f
		{
			get{ return _f; }
			set
			{
				this.OnPropertyValueChange(_.f,_f,value);
				this._f=value;
			}
		}
		/// <summary>
		/// 
		/// </summary>
		public string g
		{
			get{ return _g; }
			set
			{
				this.OnPropertyValueChange(_.g,_g,value);
				this._g=value;
			}
		}
		/// <summary>
		/// 
		/// </summary>
		public string l
		{
			get{ return _l; }
			set
			{
				this.OnPropertyValueChange(_.l,_l,value);
				this._l=value;
			}
		}
		/// <summary>
		/// 
		/// </summary>
		public string k
		{
			get{ return _k; }
			set
			{
				this.OnPropertyValueChange(_.k,_k,value);
				this._k=value;
			}
		}
		/// <summary>
		/// 
		/// </summary>
		public string j
		{
			get{ return _j; }
			set
			{
				this.OnPropertyValueChange(_.j,_j,value);
				this._j=value;
			}
		}
		/// <summary>
		/// 
		/// </summary>
		public string i
		{
			get{ return _i; }
			set
			{
				this.OnPropertyValueChange(_.i,_i,value);
				this._i=value;
			}
		}
		/// <summary>
		/// 
		/// </summary>
		public string m
		{
			get{ return _m; }
			set
			{
				this.OnPropertyValueChange(_.m,_m,value);
				this._m=value;
			}
		}
		/// <summary>
		/// 
		/// </summary>
		public string h
		{
			get{ return _h; }
			set
			{
				this.OnPropertyValueChange(_.h,_h,value);
				this._h=value;
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
				_.a,
				_.b,
				_.c,
				_.d,
				_.e,
				_.f,
				_.g,
				_.l,
				_.k,
				_.j,
				_.i,
				_.m,
				_.h};
		}
		/// <summary>
		/// 获取值信息
		/// </summary>
		public override object[] GetValues()
		{
			return new object[] {
				this._id,
				this._a,
				this._b,
				this._c,
				this._d,
				this._e,
				this._f,
				this._g,
				this._l,
				this._k,
				this._j,
				this._i,
				this._m,
				this._h};
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
			public readonly static Field All = new Field("*","temp_test");
			/// <summary>
			/// 
			/// </summary>
			public readonly static Field id = new Field("id","temp_test","id");
			/// <summary>
			/// 
			/// </summary>
			public readonly static Field a = new Field("a","temp_test","a");
			/// <summary>
			/// 
			/// </summary>
			public readonly static Field b = new Field("b","temp_test","b");
			/// <summary>
			/// 
			/// </summary>
			public readonly static Field c = new Field("c","temp_test","c");
			/// <summary>
			/// 
			/// </summary>
			public readonly static Field d = new Field("d","temp_test","d");
			/// <summary>
			/// 
			/// </summary>
			public readonly static Field e = new Field("e","temp_test","e");
			/// <summary>
			/// 
			/// </summary>
			public readonly static Field f = new Field("f","temp_test","f");
			/// <summary>
			/// 
			/// </summary>
			public readonly static Field g = new Field("g","temp_test","g");
			/// <summary>
			/// 
			/// </summary>
			public readonly static Field l = new Field("l","temp_test","l");
			/// <summary>
			/// 
			/// </summary>
			public readonly static Field k = new Field("k","temp_test","k");
			/// <summary>
			/// 
			/// </summary>
			public readonly static Field j = new Field("j","temp_test","j");
			/// <summary>
			/// 
			/// </summary>
			public readonly static Field i = new Field("i","temp_test","i");
			/// <summary>
			/// 
			/// </summary>
			public readonly static Field m = new Field("m","temp_test","m");
			/// <summary>
			/// 
			/// </summary>
			public readonly static Field h = new Field("h","temp_test","h");
		}
		#endregion


	}
}
