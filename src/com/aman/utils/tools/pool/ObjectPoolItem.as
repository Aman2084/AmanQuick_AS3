///////////////////////////////////////////////////////////
//  ObjectPoolItem.as
//  Macromedia ActionScript Implementation of the Class ObjectPoolItem
//  Created on:      2018-9-28 下午7:38:26
//  Original author: Aman
///////////////////////////////////////////////////////////

package com.aman.utils.tools.pool
{

	/**
	 * 对象池
	 * @author Aman
	 * @version 1.0
	 * 
	 * @created  2018-9-28 下午7:38:26
	 */
	public final class ObjectPoolItem
	{
		private var classList:Array;
		private var className:Class;
		
		public function ObjectPoolItem(className:Class, isFGUI:Boolean = false)
		{
			this.className = className;
			classList = new Array();
		}
		
		public function getObj():*
		{
			if (classList.length > 0) {
				return classList.pop();
			}
			
			
			return new className();
		}
		
		public function putObj(obj:Object):void {
			if (obj != null) {
				if (obj is IPoolObject) {
					(obj as IPoolObject).resetToPool();
				}
				
				classList.push(obj);
			}
		}
		
		public function clear():void {
			classList.length = 0;
		}
	}
}