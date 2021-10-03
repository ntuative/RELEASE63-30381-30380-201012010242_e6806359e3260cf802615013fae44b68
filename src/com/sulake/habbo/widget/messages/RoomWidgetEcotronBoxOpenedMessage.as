package com.sulake.habbo.widget.messages
{
   public class RoomWidgetEcotronBoxOpenedMessage extends RoomWidgetMessage
   {
      
      public static const const_1465:String = "RWEBOM_ECOTRONBOX_OPENED";
       
      
      private var var_1174:String;
      
      private var var_1728:int;
      
      public function RoomWidgetEcotronBoxOpenedMessage(param1:String, param2:String, param3:int)
      {
         super(param1);
         this.var_1174 = param2;
         this.var_1728 = param3;
      }
      
      public function get itemType() : String
      {
         return this.var_1174;
      }
      
      public function get classId() : int
      {
         return this.var_1728;
      }
   }
}
