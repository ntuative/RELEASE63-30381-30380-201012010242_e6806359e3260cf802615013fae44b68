package com.sulake.habbo.widget.events
{
   public class RoomWidgetTeaserDataUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_560:String = "RWTDUE_TEASER_DATA";
       
      
      private var _data:String;
      
      public function RoomWidgetTeaserDataUpdateEvent(param1:String, param2:String, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this._data = param2;
      }
      
      public function get data() : String
      {
         return this._data;
      }
   }
}
