///////////////////////////////////////////////////////////
//  StageLocker.as
//  Macromedia ActionScript Implementation of the Class StageLocker
//  Created on:      2018-9-28 下午2:41:29
//  Original author: Aman
///////////////////////////////////////////////////////////

package com.aman.ui.root
{
	import com.aman.ui.utils.Color;
	import com.aman.ui.utils.UIUtils;
	import com.aman.utils.Utils_Geom;
	
	import flash.display.Graphics;
	import flash.display.Sprite;
	import flash.display.Stage;
	import flash.events.Event;
	import flash.events.FullScreenEvent;
	import flash.geom.Point;
	import flash.geom.Rectangle;
	import flash.text.TextField;
	
	
	/**
	 * 屏幕锁
	 * @author Aman
	 * @version 1.0
	 * 
	 * @created  2018-9-28 下午2:41:29
	 */
	public class StageLocker extends Sprite
	{
		private static var _instance:StageLocker = null;
		private static var _stage:Stage;
		
		private var _txt:TextField;
		
		public function StageLocker(){
			super();
			_txt = UIUtils.creatTextField(this , "Bazying......" , 0 , 0 , 30 , Color.BLUE , "" , true);
			this.addEventListener(Event.ADDED_TO_STAGE , onThis);
			this.removeEventListener(Event.ADDED_TO_STAGE , onThis);
		}
		
//event handler
		private function onThis($e:Event):void{
			var s:Stage = this.stage;
			switch($e.type){
				case Event.ADDED_TO_STAGE:
					s.addEventListener(Event.RESIZE , onStage);
					s.addEventListener(FullScreenEvent.FULL_SCREEN , onStage);
					onStage();
					break
				case Event.REMOVED_FROM_STAGE:
					s.removeEventListener(Event.RESIZE , onStage);
					s.removeEventListener(FullScreenEvent.FULL_SCREEN , onStage);
					break;
			}
		}		
		
		private function onStage($e:Event=null):void{
			if(!_stage){
				return
			}
			var rs:Rectangle = new Rectangle(0 , 0 , _stage.stageWidth , _stage.stageHeight)
			var rt:Rectangle = new Rectangle(0 , 0 , _txt.width , _txt.height);
			var p:Point = Utils_Geom.centerOrLR(rt  , rs);
			_txt.x = p.x;
			_txt.y = p.y;
			var g:Graphics = this.graphics;
			g.beginFill(0xffffff , 0.45);
			g.drawRect(0 , 0 , rs.width , rs.height);
		}		
		
//instance
		
		public static function lock():void{
			if(!_stage){
				return;
			}
			_stage.addChild(instance);
			instance.onStage()
		}
		
		public static function unlock():void{
			if(!_stage || !_instance){
				return
			}
			_stage.removeChild(_instance);
		}
		
		public static function init($s:Stage):void{
			_stage = $s;
		}
		
		private static function get instance():StageLocker{
			if(!_instance){
				_instance = new StageLocker();
			}
			return _instance
		}
	}
}