package com.aman.frames.mvc.patterms.observer
{
	import com.aman.frames.mvc.interfaces.INotification;
	
	import flash.events.Event;
	
	public class Notification extends Event implements INotification
	{
		private var _body:Object;
		private var _type:String;
		
		public function Notification( name:String, body:Object=null, type:String=null )
		{
			super(name, false, false);
			this._body = body;
			this._type = type;
		}
		
		public function getName():String
		{
			return this.type;
		}
		
		public function setBody(body:Object):void
		{
			this._body = body
		}
		
		public function getBody():Object
		{
			return this._body;
		}
		
		public function setType(type:String):void
		{
			this._type = type;
		}
		
		public function getType():String
		{
			return this._type;
		}
	}
}