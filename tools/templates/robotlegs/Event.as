/*

Copyright (c) @year@ @company.name@, All Rights Reserved 

@author   @author.name@
@contact  @author.email@
@project  @project.name@

@internal 

*/
package @namespace@.events
{
	import flash.events.Event;
	
	/**
	 *
	 * Defines the "@gesture@" use-case which represent a specific
	 * user based event or system event.
	 *
	 */
	public final class @gesture@Event extends Event
	{
		/**
		 *
		 * Defines the constant for the unique the <code>@gesture@Event</code>
		 *
		 * <p>
		 * The fully qualified classpath "@namespace@.events.@gesture@Event"
		 * is utilized to guarantee a unique Event type.
		 * </p>
		 *
		 */
		public static const @upperCaseGesture@_EVENT:String = "@namespace@.events.@gesture@Event";
		
		/**
		 *
		 * Creates a new instance of <code>@gesture@Event</code>.
		 * 
		 * @see @sequenceToUpperCase@_EVENT;
		 *
		 */
		public function @gesture@Event( type:String ) 
		{
			super( type, true, true );
		}
		
		/**
		 *
		 * Returns a new Event object that is a copy of the original 
		 * <code>@gesture@Event</code> instance.
		 *
		 */
		public override function clone() : Event
		{
			var event:@gesture@Event = new @gesture@Event( this.type );
			return event;
		}		
	}
}
