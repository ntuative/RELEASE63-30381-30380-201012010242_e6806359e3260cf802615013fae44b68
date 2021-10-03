package com.sulake.habbo.widget.messages
{
   public class RoomWidgetOpenCatalogMessage extends RoomWidgetMessage
   {
      
      public static const const_640:String = "RWGOI_MESSAGE_OPEN_CATALOG";
      
      public static const const_1033:String = "RWOCM_CLUB_MAIN";
       
      
      private var var_2215:String = "";
      
      public function RoomWidgetOpenCatalogMessage(param1:String)
      {
         super(const_640);
         this.var_2215 = param1;
      }
      
      public function get pageKey() : String
      {
         return this.var_2215;
      }
   }
}
