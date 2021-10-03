package com.sulake.habbo.widget.events
{
   public class RoomWidgetRoomQueueUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_317:String = "RWRQUE_VISITOR_QUEUE_STATUS";
      
      public static const const_448:String = "RWRQUE_SPECTATOR_QUEUE_STATUS";
       
      
      private var var_940:int;
      
      private var var_2103:Boolean;
      
      private var var_359:Boolean;
      
      private var var_1431:Boolean;
      
      public function RoomWidgetRoomQueueUpdateEvent(param1:String, param2:int, param3:Boolean, param4:Boolean, param5:Boolean, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param6,param7);
         this.var_940 = param2;
         this.var_2103 = param3;
         this.var_359 = param4;
         this.var_1431 = param5;
      }
      
      public function get position() : int
      {
         return this.var_940;
      }
      
      public function get hasHabboClub() : Boolean
      {
         return this.var_2103;
      }
      
      public function get isActive() : Boolean
      {
         return this.var_359;
      }
      
      public function get isClubQueue() : Boolean
      {
         return this.var_1431;
      }
   }
}
