///////////////////////////////////////////////////////////
//  MyRoot.as
//  Macromedia ActionScript Implementation of the Class MyRoot
//  Created on:      2015-11-25 下午4:10:45
//  Original author: Aman
///////////////////////////////////////////////////////////

package com.aman.ui.root
{
	import com.aman.ui.UIManager;
	
	import flash.events.Event;
	
	
	/**
	 * 顶部类
	 * @author Aman
	 * @version 1.0
	 * 
	 * @created  2015-11-25 下午4:10:45
	 */
	public class MyRoot extends SimpleRoot
	{
		protected var _url_skin:String = "assets/defaultSkin.swf"
		
		public function MyRoot(){
			UIManager.startUp(_url_skin , onSkinInit)
		}
		
		private function onSkinInit():void{
			if(stage){
				onAdd();
			}else{
				this.addEventListener(Event.ADDED_TO_STAGE , onAdd);
			}
		}
	}
}