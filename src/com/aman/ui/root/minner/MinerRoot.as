///////////////////////////////////////////////////////////
//  MinerRoot.as
//  Macromedia ActionScript Implementation of the Class MinerRoot
//  Created on:      2016-8-30 上午11:19:37
//  Original author: Aman
///////////////////////////////////////////////////////////

package com.aman.ui.root.minner
{
	import com.aman.ui.root.MyRoot;
	import com.sociodox.theminer.TheMiner;
	
	import flash.events.KeyboardEvent;
	import flash.ui.Keyboard;
	
	/**
	 * 性能测试舞台Root
	 * @author Aman
	 * @version 1.0
	 * 
	 * @created  2016-8-30 上午11:19:37
	 */
	public class MinerRoot extends MyRoot
	{
		private var _miner:TheMiner;
		
		public function MinerRoot(){
			super();
		}
		
		override protected function initEvent():void{
			super.initEvent();
			stage.addEventListener(KeyboardEvent.KEY_DOWN , onKey);
		}
		
		private function onKey($e:KeyboardEvent):void{
			if($e.keyCode!=Keyboard.M){
				return
			}
			if(!_miner){
				_miner = new TheMiner(true);
				stage.addChild(_miner);
				_miner.visible = false
			}
			_miner.visible = !_miner.visible;
		}
	}
}