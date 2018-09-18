package com.aman.frames.mvc.interfaces
{
	public interface ICommand
	{
		function execute( notification:INotification ,facade:IFacade) : void;
	}
}