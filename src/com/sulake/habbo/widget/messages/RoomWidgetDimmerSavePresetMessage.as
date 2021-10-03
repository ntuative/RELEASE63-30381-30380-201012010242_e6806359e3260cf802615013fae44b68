package com.sulake.habbo.widget.messages
{
   public class RoomWidgetDimmerSavePresetMessage extends RoomWidgetMessage
   {
      
      public static const const_682:String = "RWSDPM_SAVE_PRESET";
       
      
      private var var_1878:int;
      
      private var var_1880:int;
      
      private var _color:uint;
      
      private var var_1138:int;
      
      private var var_1937:Boolean;
      
      public function RoomWidgetDimmerSavePresetMessage(param1:int, param2:int, param3:uint, param4:int, param5:Boolean)
      {
         super(const_682);
         this.var_1878 = param1;
         this.var_1880 = param2;
         this._color = param3;
         this.var_1138 = param4;
         this.var_1937 = param5;
      }
      
      public function get presetNumber() : int
      {
         return this.var_1878;
      }
      
      public function get effectTypeId() : int
      {
         return this.var_1880;
      }
      
      public function get color() : uint
      {
         return this._color;
      }
      
      public function get brightness() : int
      {
         return this.var_1138;
      }
      
      public function get apply() : Boolean
      {
         return this.var_1937;
      }
   }
}
