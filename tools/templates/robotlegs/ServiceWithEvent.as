/*

Copyright (c) @year@ @company.name@, All Rights Reserved 

@author   @author.name@
@contact  @author.email@
@project  @project.name@

@internal 

*/
package @namespace@.services
{
	import @namespace@.events.@gesture@Event;
	
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
			/*
			
			// HTTPService example
			var service:HTTPService = new HTTPService();
			var responder:Responder = new Responder(serviceResultHandler, serviceFaultHandler);
			var token:AsyncToken;
			service.resultFormat = "e4x";
			service.url = "";
			token = service.send();
			token.addResponder(responder);
			
			// remote object example
			var responder:CallResponder = new CallResponder();
			var service:ServiceName = new ServiceName();
			
			responder.addEventListener(ResultEvent.RESULT, serviceResultHandler);
			service.addEventListener(FaultEvent.FAULT, serviceFaultHandler);
			
			responder.token = service.serviceMethodName();
			
			*/
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
			
			this.dispatch( new @gesture@Event( @gesture@Event.@upperCaseGesture@_RESULT_EVENT ) );
			
			// add this line to the mediator onRegister method, if needed:
			// eventMap.mapListener( eventDispatcher, @gesture@Event.@upperCaseGesture@_RESULTS_EVENT, handler );			
		}
	}
}