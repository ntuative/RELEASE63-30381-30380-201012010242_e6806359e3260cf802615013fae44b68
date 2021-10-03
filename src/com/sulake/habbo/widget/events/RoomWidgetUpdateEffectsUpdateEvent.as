package com.sulake.habbo.widget.events
{
   public class RoomWidgetUpdateEffectsUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_668:String = "RWUEUE_UPDATE_EFFECTS";
       
      
      private var var_222:Array;
      
      public function RoomWidgetUpdateEffectsUpdateEvent(param1:Array = null, param2:Boolean = false, param3:Boolean = false)
      {
         super(const_668,param2,param3);
         this.var_222 = param1;
      }
      
      public function get effects() : Array
      {
         return this.var_222;
      }
   }
}
