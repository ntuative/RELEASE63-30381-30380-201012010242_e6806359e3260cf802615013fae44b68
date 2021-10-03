package com.sulake.habbo.widget.messages
{
   public class RoomWidgetRoomTagSearchMessage extends RoomWidgetMessage
   {
      
      public static const const_641:String = "RWRTSM_ROOM_TAG_SEARCH";
       
      
      private var var_1996:String = "";
      
      public function RoomWidgetRoomTagSearchMessage(param1:String)
      {
         super(const_641);
         this.var_1996 = param1;
      }
      
      public function get tag() : String
      {
         return this.var_1996;
      }
   }
}
