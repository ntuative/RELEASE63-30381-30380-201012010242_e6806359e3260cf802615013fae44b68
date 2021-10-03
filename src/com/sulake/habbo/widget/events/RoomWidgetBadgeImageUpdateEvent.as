package com.sulake.habbo.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetBadgeImageUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_658:String = "RWBIUE_BADGE_IMAGE";
       
      
      private var var_2106:String;
      
      private var var_2231:BitmapData;
      
      public function RoomWidgetBadgeImageUpdateEvent(param1:String, param2:BitmapData, param3:Boolean = false, param4:Boolean = false)
      {
         super(const_658,param3,param4);
         this.var_2106 = param1;
         this.var_2231 = param2;
      }
      
      public function get badgeID() : String
      {
         return this.var_2106;
      }
      
      public function get badgeImage() : BitmapData
      {
         return this.var_2231;
      }
   }
}
