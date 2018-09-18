package com.aman.frames.mvc.patterms.proxy
{
	import com.aman.frames.mvc.interfaces.IProxy;
	import com.aman.frames.mvc.patterms.MVCMember;
	
	
	public class Proxy extends MVCMember implements IProxy
	{
		public function Proxy()
		{
			super();	
		}
		
		public function setData(data:Object):void
		{
		}
		
		public function getData():Object
		{
			return null;
		}
		
		public function onRegister():void
		{
		}
		
		public function onRemove():void
		{
		}
	}
}