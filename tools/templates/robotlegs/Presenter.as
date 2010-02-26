/*

Copyright (c) @year@ @company.name@, All Rights Reserved 

@author   @author.name@
@contact  @author.email@
@project  @project.name@

@internal 

*/
package @namespace@.@view.dir@.presenters
{
	import com.sigma.monbijou.view.LoginView;
	
	import @namespace@.@view.dir@.@gesture@View;
	
	import flash.utils.describeType;
	import mx.logging.ILogger;
	import mx.logging.Log;
	
	import mx.events.FlexEvent;
	import org.robotlegs.mvcs.Actor;
	
	
	/**
	 * Presentation Model implementation that access entire component events lifecycle.
	 * Using a presentation model will allows me to easy unit test my application better, 
	 * since I can create test cases just for the logic and if needed test cases for the view. 
	 * Additionally, I can replace my view easily and create different views for the same logic, 
	 * which will help big time with Flex 4 new architecture and Flash Catalyst.
	 * 
	 * You will need to add the following line to a mediator that will add the view:
	 * view.addElement( @lowerCaseGesture@Presenter.@lowerCaseGesture@View );
	 */	
	public class @gesture@Presenter extends Actor
	{
		/**
		 * Corresponding view
		 */		
		private var _@lowerCaseGesture@View:@gesture@View;
		
		public function get @lowerCaseGesture@View():@gesture@View
		{
			return _@lowerCaseGesture@View;
		}
		
		public function set @lowerCaseGesture@View(value:@gesture@View):void
		{
			_@lowerCaseGesture@View = value;
		}
		
		//--------------------------------------------------------------------------
		//
		//  Default Constructor
		//
		//--------------------------------------------------------------------------
		
		// called right after pre-init
		public function @gesture@Presenter()
		{
			_@lowerCaseGesture@View = new @gesture@View();
			_@lowerCaseGesture@View.addEventListener( FlexEvent.PREINITIALIZE, onPreinitialize );
			_@lowerCaseGesture@View.addEventListener( FlexEvent.INITIALIZE, onInitialize );
			_@lowerCaseGesture@View.addEventListener( FlexEvent.CREATION_COMPLETE, onComplete );				
		}
		
		
		//--------------------------------------------------------------------------
		//
		//  Handlers
		//
		//--------------------------------------------------------------------------		
		
		private function onPreinitialize(event:FlexEvent):void
		{
			// implememt
			trace("onPreinitialize");
		}
		
		private function onInitialize(event:FlexEvent):void
		{
			// implememt
			trace("onInitialize");
		}
		
		private function onComplete(event:FlexEvent):void
		{
			// implememt
			trace("onComplete");
		}
	
	}
}