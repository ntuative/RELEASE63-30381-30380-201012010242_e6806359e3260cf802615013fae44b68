package com.sulake.habbo.widget.messages
{
   public class RoomWidgetPetCommandMessage extends RoomWidgetMessage
   {
      
      public static const const_633:String = "RWPCM_REQUEST_PET_COMMANDS";
      
      public static const const_625:String = "RWPCM_PET_COMMAND";
       
      
      private var var_1614:int = 0;
      
      private var var_153:String;
      
      public function RoomWidgetPetCommandMessage(param1:String, param2:int, param3:String = null)
      {
         super(param1);
         this.var_1614 = param2;
         this.var_153 = param3;
      }
      
      public function get petId() : int
      {
         return this.var_1614;
      }
      
      public function get value() : String
      {
         return this.var_153;
      }
   }
}
