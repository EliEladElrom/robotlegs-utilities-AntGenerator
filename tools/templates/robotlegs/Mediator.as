/*

Copyright (c) @year@ @company.name@, All Rights Reserved 

@author   @author.name@
@contact  @author.email@
@project  @project.name@

@internal 

*/
package @namespace@.@view.dir@.mediators
{
	import @namespace@.@view.dir@.@gesture@View;
	import org.robotlegs.core.IMediator;
	import org.robotlegs.mvcs.Mediator;
	
	/**
	 * <p>The mediator is used to handle framework interaction with View Components. 
	 * A Mediator will listen for framework events, add event listeners to the View Components, 
	 * and send framework events in response to events received from the View Components they are 
	 * responsible for. This allows the developer to put application specific logic on the Mediator, 
	 * and avoid coupling View components to specific applications.</p>
	 *  
	 */		
	public class @gesture@Mediator extends Mediator
	{
		[Inject]
		public var @lowerCaseGesture@View:@gesture@View;		
		
		/**
		 * Override the invoked of the <code>IMediator</code> and allow you to place your own initialization. 
		 */		
		override public function onRegister():void
		{
		}
	}
}