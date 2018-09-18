///////////////////////////////////////////////////////////
//  ModuleEvent.as
//  Macromedia ActionScript Implementation of the Class ModuleEvent
//  Created on:      2016-8-15 下午5:25:53
//  Original author: Aman
///////////////////////////////////////////////////////////

package com.aman.frames.progress.event
{
	import flash.events.Event;
	
	/**
	 * 模块事件
	 * @author Aman
	 * @version 1.0
	 * 
	 * @created  2016-8-15 下午5:25:53
	 */
	public class ModuleEvent extends Event
	{
		public var data:Object;
		public var action:String;
		
		public function ModuleEvent($type:String , $data:Object=null , $action:String=""){
			super($type)
			data = $data;
			action = $action;
		}
	}
}