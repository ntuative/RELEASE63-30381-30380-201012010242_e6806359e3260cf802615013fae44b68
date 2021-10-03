package com.sulake.habbo.inventory.purse
{
   public class Purse
   {
       
      
      private var var_1412:int = 0;
      
      private var var_1413:int = 0;
      
      private var var_2048:int = 0;
      
      private var var_2047:Boolean = false;
      
      private var var_1896:Boolean = false;
      
      public function Purse()
      {
         super();
      }
      
      public function set clubDays(param1:int) : void
      {
         this.var_1412 = Math.max(0,param1);
      }
      
      public function set clubPeriods(param1:int) : void
      {
         this.var_1413 = Math.max(0,param1);
      }
      
      public function set clubPastPeriods(param1:int) : void
      {
         this.var_2048 = Math.max(0,param1);
      }
      
      public function set clubHasEverBeenMember(param1:Boolean) : void
      {
         this.var_2047 = param1;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         this.var_1896 = param1;
      }
      
      public function get clubDays() : int
      {
         return this.var_1412;
      }
      
      public function get clubPeriods() : int
      {
         return this.var_1413;
      }
      
      public function get clubPastPeriods() : int
      {
         return this.var_2048;
      }
      
      public function get clubHasEverBeenMember() : Boolean
      {
         return this.var_2047;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_1896;
      }
   }
}
