package com.aman.frames.mvc.patterms.command 
{
	import com.aman.frames.mvc.interfaces.ICommand;
	import com.aman.frames.mvc.interfaces.IFacade;
	import com.aman.frames.mvc.interfaces.INotification;

	public class MacroCommand implements ICommand
	{
		private var subCommands:Array;
		
		public function MacroCommand()
		{
			subCommands = new Array();
			initializeMacroCommand();			
		}
		
		protected function initializeMacroCommand():void
		{
		}
		
		protected function addSubCommand( commandClassRef:Class ): void
		{
			subCommands.push(commandClassRef);
		}
		
		public final function execute( notification:INotification ,facade:IFacade) : void
		{
			while ( subCommands.length > 0) {
				var commandClassRef : Class = subCommands.shift();
				var commandInstance : ICommand = new commandClassRef();
				commandInstance.execute( notification ,facade);
			}
		}
								
	}
}