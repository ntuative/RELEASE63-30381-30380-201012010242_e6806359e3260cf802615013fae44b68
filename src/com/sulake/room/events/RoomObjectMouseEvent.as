package com.sulake.room.events
{
   public class RoomObjectMouseEvent extends RoomObjectEvent
   {
      
      public static const const_238:String = "ROE_MOUSE_CLICK";
      
      public static const const_1706:String = "ROE_MOUSE_ENTER";
      
      public static const const_463:String = "ROE_MOUSE_MOVE";
      
      public static const const_1686:String = "ROE_MOUSE_LEAVE";
      
      public static const const_1738:String = "ROE_MOUSE_DOUBLE_CLICK";
      
      public static const const_527:String = "ROE_MOUSE_DOWN";
       
      
      private var var_1683:String = "";
      
      private var var_2307:Boolean;
      
      private var var_2310:Boolean;
      
      private var var_2308:Boolean;
      
      private var var_2312:Boolean;
      
      public function RoomObjectMouseEvent(param1:String, param2:String, param3:int, param4:String, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false, param8:Boolean = false, param9:Boolean = false, param10:Boolean = false)
      {
         super(param1,param3,param4,param9,param10);
         this.var_1683 = param2;
         this.var_2307 = param5;
         this.var_2310 = param6;
         this.var_2308 = param7;
         this.var_2312 = param8;
      }
      
      public function get eventId() : String
      {
         return this.var_1683;
      }
      
      public function get altKey() : Boolean
      {
         return this.var_2307;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.var_2310;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.var_2308;
      }
      
      public function get buttonDown() : Boolean
      {
         return this.var_2312;
      }
   }
}
