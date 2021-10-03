package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceItemStatsParser implements IMessageParser
   {
       
      
      private var var_2325:int;
      
      private var var_2328:int;
      
      private var var_2329:int;
      
      private var _dayOffsets:Array;
      
      private var var_1647:Array;
      
      private var var_1646:Array;
      
      private var var_2327:int;
      
      private var var_2326:int;
      
      public function MarketplaceItemStatsParser()
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
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_2325 = param1.readInteger();
         this.var_2328 = param1.readInteger();
         this.var_2329 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         this._dayOffsets = [];
         this.var_1647 = [];
         this.var_1646 = [];
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this._dayOffsets.push(param1.readInteger());
            this.var_1647.push(param1.readInteger());
            this.var_1646.push(param1.readInteger());
            _loc3_++;
         }
         this.var_2326 = param1.readInteger();
         this.var_2327 = param1.readInteger();
         return true;
      }
   }
}
