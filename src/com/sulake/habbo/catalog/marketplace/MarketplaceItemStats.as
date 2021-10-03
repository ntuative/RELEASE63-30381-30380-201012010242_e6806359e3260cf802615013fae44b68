package com.sulake.habbo.catalog.marketplace
{
   public class MarketplaceItemStats
   {
       
      
      private var var_2325:int;
      
      private var var_2328:int;
      
      private var var_2329:int;
      
      private var _dayOffsets:Array;
      
      private var var_1647:Array;
      
      private var var_1646:Array;
      
      private var var_2327:int;
      
      private var var_2326:int;
      
      public function MarketplaceItemStats()
      {
         super();
      }
      
      public function get averagePrice() : int
      {
         return this.var_2325;
      }
      
      public function get offerCount() : int
      {
         return this.var_2328;
      }
      
      public function get historyLength() : int
      {
         return this.var_2329;
      }
      
      public function get dayOffsets() : Array
      {
         return this._dayOffsets;
      }
      
      public function get averagePrices() : Array
      {
         return this.var_1647;
      }
      
      public function get soldAmounts() : Array
      {
         return this.var_1646;
      }
      
      public function get furniTypeId() : int
      {
         return this.var_2327;
      }
      
      public function get furniCategoryId() : int
      {
         return this.var_2326;
      }
      
      public function set averagePrice(param1:int) : void
      {
         this.var_2325 = param1;
      }
      
      public function set offerCount(param1:int) : void
      {
         this.var_2328 = param1;
      }
      
      public function set historyLength(param1:int) : void
      {
         this.var_2329 = param1;
      }
      
      public function set dayOffsets(param1:Array) : void
      {
         this._dayOffsets = param1.slice();
      }
      
      public function set averagePrices(param1:Array) : void
      {
         this.var_1647 = param1.slice();
      }
      
      public function set soldAmounts(param1:Array) : void
      {
         this.var_1646 = param1.slice();
      }
      
      public function set furniTypeId(param1:int) : void
      {
         this.var_2327 = param1;
      }
      
      public function set furniCategoryId(param1:int) : void
      {
         this.var_2326 = param1;
      }
   }
}
