package com.sulake.habbo.toolbar
{
   public class MenuSettingsItem
   {
       
      
      private var var_2179:String;
      
      private var var_2233:Array;
      
      private var var_2232:Boolean;
      
      public function MenuSettingsItem(param1:String, param2:Array = null, param3:Boolean = false)
      {
         super();
         this.var_2179 = param1;
         this.var_2233 = param2;
         this.var_2232 = param3;
      }
      
      public function get menuId() : String
      {
         return this.var_2179;
      }
      
      public function get yieldList() : Array
      {
         return this.var_2233;
      }
      
      public function get lockToIcon() : Boolean
      {
         return this.var_2232;
      }
   }
}
