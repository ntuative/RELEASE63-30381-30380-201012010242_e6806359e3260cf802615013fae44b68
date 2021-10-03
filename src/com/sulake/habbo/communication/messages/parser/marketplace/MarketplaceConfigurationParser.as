package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceConfigurationParser implements IMessageParser
   {
       
      
      private var var_1364:Boolean;
      
      private var var_2220:int;
      
      private var var_1573:int;
      
      private var var_1574:int;
      
      private var var_2221:int;
      
      private var var_2217:int;
      
      private var var_2218:int;
      
      private var var_2222:int;
      
      public function MarketplaceConfigurationParser()
      {
         super();
      }
      
      public function get isEnabled() : Boolean
      {
         return this.var_1364;
      }
      
      public function get commission() : int
      {
         return this.var_2220;
      }
      
      public function get tokenBatchPrice() : int
      {
         return this.var_1573;
      }
      
      public function get tokenBatchSize() : int
      {
         return this.var_1574;
      }
      
      public function get offerMinPrice() : int
      {
         return this.var_2217;
      }
      
      public function get offerMaxPrice() : int
      {
         return this.var_2221;
      }
      
      public function get expirationHours() : int
      {
         return this.var_2218;
      }
      
      public function get averagePricePeriod() : int
      {
         return this.var_2222;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1364 = param1.readBoolean();
         this.var_2220 = param1.readInteger();
         this.var_1573 = param1.readInteger();
         this.var_1574 = param1.readInteger();
         this.var_2217 = param1.readInteger();
         this.var_2221 = param1.readInteger();
         this.var_2218 = param1.readInteger();
         this.var_2222 = param1.readInteger();
         return true;
      }
   }
}
