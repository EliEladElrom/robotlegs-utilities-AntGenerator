/*

Copyright (c) @year@ @company.name@, All Rights Reserved 

@author   @author.name@
@contact  @author.email@
@project  @project.name@

@internal 

*/
package @namespace@.services
{
	import @namespace@.signals.@gesture@Signal;
	import @namespace@.signals.@gesture@ResultSignal;
	
	import flash.utils.describeType;
	import mx.logging.Log;
	
	import mx.logging.ILogger;
	
	import mx.rpc.AsyncToken;
	import mx.rpc.Responder;
	import mx.rpc.http.HTTPService;
	
	import org.osflash.signals.Signal;
	import org.robotlegs.mvcs.Actor;	
	
	public class @gesture@Service extends BaseService implements I@gesture@Service
	{
		[Inject]
		public var resultSignal:@gesture@ResultSignal;	
		
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
			
			// Simple remote object example
			var responder:CallResponder = new CallResponder();
			var service:ServiceName = new ServiceName();
			responder.token = service.serviceMethodName();
			
			// AMF (such as Fluorine) Remote Object example
			var remoteObject:RemoteObject = new RemoteObject( 'fluorine' );
			var channelSet:ChannelSet = new ChannelSet();			
			responder.addEventListener(ResultEvent.RESULT, serviceResultHandler);
			service.addEventListener(FaultEvent.FAULT, serviceFaultHandler);
			remoteObject.destination = "fluorine";
			remoteObject.source = 'someserviceService.SomeService';
			remoteObject.showBusyCursor = true;
			remoteObject.method.addEventListener( 'result', serviceResultHandler );
			remoteObject.method.addEventListener( 'fault', serviceFaultHandler );
			remoteObject.method( passParams );
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
			
			resultSignal.dispatch( new @gesture@ResultSignal() );
			
			// to listen to the result signal add code to presenter/mediator:
			/*
			// inject result signal
			[Inject]
			public var @gesture@:@gesture@ResultSignal;
			
			// place code 'onComplete' for presenter or 'onRegister' for mediator:
			@gesture@.add( handler );
			*/
		}
	}
}