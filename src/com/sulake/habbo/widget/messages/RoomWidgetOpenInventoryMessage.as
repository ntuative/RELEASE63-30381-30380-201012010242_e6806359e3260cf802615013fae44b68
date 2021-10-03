package com.sulake.habbo.widget.messages
{
   public class RoomWidgetOpenInventoryMessage extends RoomWidgetMessage
   {
      
      public static const const_762:String = "RWGOI_MESSAGE_OPEN_INVENTORY";
      
      public static const const_988:String = "inventory_effects";
      
      public static const const_1035:String = "inventory_badges";
      
      public static const const_1472:String = "inventory_clothes";
      
      public static const const_1320:String = "inventory_furniture";
       
      
      private var var_2101:String;
      
      public function RoomWidgetOpenInventoryMessage(param1:String)
      {
         super(const_762);
         this.var_2101 = param1;
      }
      
      public function get inventoryType() : String
      {
         return this.var_2101;
      }
   }
}
