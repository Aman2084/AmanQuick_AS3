///////////////////////////////////////////////////////////
//  Utils_Geom.as
//  Macromedia ActionScript Implementation of the Class Utils_Geom
//  Created on:      2018-6-6 下午8:51:26
//  Original author: Aman
///////////////////////////////////////////////////////////

package com.aman.utils
{
	import flash.geom.Point;
	import flash.geom.Rectangle;
	
	/**
	 * 几何工具类
	 * @author Aman
	 * @version 1.0
	 * 
	 * @created  2018-6-6 下午8:51:26
	 */
	public class Utils_Geom{
		
		/**
		 * 计算对齐，如果大则局左上角，如果比容器小泽居中对齐
		 * @param $inner		内部对象尺寸
		 * @param $outter	容器尺寸/边界
		 * @return 返回居中的位置
		 * 
		 */
		public  static function centerOrLR($inner:Rectangle , $outter:Rectangle):Point{
			var p:Point = new Point();
			p.x = $inner.width >= $outter.width ? 0 : ($outter.width-$inner.width)/2;
			p.y = $inner.height >= $outter.height ? 0 : ($outter.height-$inner.height)/2;
			return p;
		}
		
		/**
		 * 等比缩放以适应外部区域
		 */
		public  static function equalScal2Outter($inner:Rectangle , $outter:Rectangle):Rectangle{
			var r:Rectangle = new Rectangle();
			var sw:Number = $outter.width / $inner.width;
			var sh:Number = $outter.height / $inner.height;
			var s:Number = Math.min(sw , sh);
			r.width = $inner.width * s;
			r.height = $inner.height * s;
			r.x = ($outter.width - r.width) / 2;
			r.y = ($outter.height - r.height) / 2;
			return r;
		}
		
		/**角度转弧度 */
		public static function angle2Radian(num:Number):Number{return (num/180)*Math.PI;}
		
		/** 弧度转角度*/
		public static function radian2angle(num:Number):Number{	return (num/Math.PI)*180;}
	}
}