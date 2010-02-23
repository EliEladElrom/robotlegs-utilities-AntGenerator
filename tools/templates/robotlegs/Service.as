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
	import mx.logging.Log;
	
	import mx.logging.ILogger;
	
	import mx.rpc.AsyncToken;
	import mx.rpc.Responder;
	import mx.rpc.http.HTTPService;
	
	import org.robotlegs.mvcs.Actor;	
	
	public class @gesture@Service extends BaseService implements I@gesture@Service
	{
		/**
		 * Constructor
		 * 
		 * @return 
		 * 
		 */		
		public function @gesture@Service()
		{
			super();
		}

		public function send():void
		{
			// this is example of HTTPService however, you can change to any RPC
			// I also recommend that you rename the method name
			// to a more meaningful name
			
			var service:HTTPService = new HTTPService();
			var responder:Responder = new Responder( serviceResultHandler, serviceFaultHandler );
			var token:AsyncToken;
			
			service.resultFormat = "e4x";
			service.url = "";
			token = service.send();
			token.addResponder( responder );
		}
		
		/**
		 * Handle result
		 * 
		 * @param event
		 * 
		 */		
		protected function serviceResultHandler(event:Object):void
		{
			// handle result
			logger.info("serviceResultHandler");  
		}
	}
}