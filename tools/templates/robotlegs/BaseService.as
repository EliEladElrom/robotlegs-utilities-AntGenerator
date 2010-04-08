/*

Copyright (c) @year@ @company.name@, All Rights Reserved 

@author   @author.name@
@contact  @author.email@
@project  @project.name@

@internal 

*/
package @namespace@.services
{
	import flash.utils.describeType;
	
	import mx.controls.Alert;
	import mx.logging.ILogger;
	import mx.logging.Log;
	import mx.rpc.events.FaultEvent;
	
	import org.robotlegs.mvcs.Actor;
	
	public class BaseService extends Actor
	{
		public function BaseService()
		{
			super();
		}
		
		/**
		 * Create variable to point to this class. 
		 * 
		 * @private
		 *
		 */     	
		protected var logger:ILogger = Log.getLogger(describeType(this).@name.split("::").join("."));;
		
		/**
		 * Handle fault
		 * 
		 * @param event
		 * 
		 */		
		protected function serviceFaultHandler( event:FaultEvent ):void
		{
			// remove event listener			
			event.currentTarget.removeEventListener(event.type, arguments.callee);

			// handle fault
			logger.error("serviceFaultHandler"); 
			
			// todo: implement a more exact logic
			Alert.show( event.fault.message, "System Error" );
		}
	}
}