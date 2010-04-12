/*

Copyright (c) @year@ @company.name@, All Rights Reserved 

@author   @author.name@
@contact  @author.email@
@project  @project.name@

@internal 

*/
package @namespace@
{
	import @namespace@.events.*;
	import @namespace@.controller.*;
	import @namespace@.model.*;
	import @namespace@.services.*;
	import @namespace@.view.*;
	import org.robotlegs.mvcs.Context;
	import org.robotlegs.base.ContextEvent;
	
	/**
	 * Application Context Implementation
	 *
	 * <p>Class to create a Framework or Application context</p>
	 * 
	 * <p>At the heart of any Robotlegs implementation lies the Context. 
	 * The Context, or Contexts as the case may be, provides the mechanism by which any given implementation’s 
	 * tiers will communicate. An application is by no means limited to a single Context, but for many use cases 
	 * one Context is sufficient. With the ability to build modular applications on the Flash platform, you will 
	 * see circumstances where multiple Contexts are necessary. </p>
	 * 
	 * The Context has three functions 
	 * <ul>
	 * 	<li>provide initialization</li>
	 * 	<li>provide de-initialization</li>
	 * 	<li>provide the central event bus for communication</li>
	 * </ul>
	 *
	 */	
	public class @project.name@Context extends Context
	{
		
		//---------------------------------------------------------------------
		//  Constructor
		//---------------------------------------------------------------------
		
		public function @project.name@Context()
		{
			super();
		}
		
		/**
		 *  The Startup Hook
		 * 
		 */		
		override public function startup():void
		{
			// todo: add commands
			
			// todo: Add Model
			
			// todo: Add Services
			
			// todo: Add View
			
			// todo: add singleton
			
			// Startup complete
			super.startup();
		}		
	}
}