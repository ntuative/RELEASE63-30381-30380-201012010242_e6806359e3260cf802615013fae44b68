package com.sulake.habbo.widget.messages
{
   public class RoomWidgetSelectOutfitMessage extends RoomWidgetMessage
   {
      
      public static const const_959:String = "select_outfit";
       
      
      private var var_2400:int;
      
      public function RoomWidgetSelectOutfitMessage(param1:int)
      {
         super(const_959);
         this.var_2400 = param1;
      }
      
      public function get outfitId() : int
      {
         return this.var_2400;
      }
   }
}
