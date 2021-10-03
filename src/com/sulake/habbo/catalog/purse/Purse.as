package com.sulake.habbo.catalog.purse
{
   import flash.utils.Dictionary;
   
   public class Purse implements IPurse
   {
      
      public static const const_478:int = 0;
       
      
      private var var_1898:int = 0;
      
      private var var_1172:Dictionary;
      
      private var var_1412:int = 0;
      
      private var var_1413:int = 0;
      
      private var var_1896:Boolean = false;
      
      private var var_1899:int = 0;
      
      private var var_1897:int = 0;
      
      public function Purse()
      {
         this.var_1172 = new Dictionary();
         super();
      }
      
      public function get credits() : int
      {
         return this.var_1898;
      }
      
      public function set credits(param1:int) : void
      {
         this.var_1898 = param1;
      }
      
      public function get clubDays() : int
      {
         return this.var_1412;
      }
      
      public function set clubDays(param1:int) : void
      {
         this.var_1412 = param1;
      }
      
      public function get clubPeriods() : int
      {
         return this.var_1413;
      }
      
      public function set clubPeriods(param1:int) : void
      {
         this.var_1413 = param1;
      }
      
      public function get hasClubLeft() : Boolean
      {
         return this.var_1412 > 0 || this.var_1413 > 0;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_1896;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         this.var_1896 = param1;
      }
      
      public function get pastClubDays() : int
      {
         return this.var_1899;
      }
      
      public function set pastClubDays(param1:int) : void
      {
         this.var_1899 = param1;
      }
      
      public function get pastVipDays() : int
      {
         return this.var_1897;
      }
      
      public function set pastVipDays(param1:int) : void
      {
         this.var_1897 = param1;
      }
      
      public function get activityPoints() : Dictionary
      {
         return this.var_1172;
      }
      
      public function set activityPoints(param1:Dictionary) : void
      {
         this.var_1172 = param1;
      }
      
      public function getActivityPointsForType(param1:int) : int
      {
         return this.var_1172[param1];
      }
   }
}
