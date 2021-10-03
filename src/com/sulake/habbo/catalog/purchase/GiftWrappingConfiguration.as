package com.sulake.habbo.catalog.purchase
{
   import com.sulake.habbo.communication.messages.incoming.catalog.GiftWrappingConfigurationEvent;
   import com.sulake.habbo.communication.messages.parser.catalog.GiftWrappingConfigurationParser;
   
   public class GiftWrappingConfiguration
   {
       
      
      private var var_1364:Boolean = false;
      
      private var var_1445:int;
      
      private var var_1594:Array;
      
      private var var_700:Array;
      
      private var var_701:Array;
      
      public function GiftWrappingConfiguration(param1:GiftWrappingConfigurationEvent)
      {
         super();
         if(param1 == null)
         {
            return;
         }
         var _loc2_:GiftWrappingConfigurationParser = param1.getParser();
         if(_loc2_ == null)
         {
            return;
         }
         this.var_1364 = _loc2_.isWrappingEnabled;
         this.var_1445 = _loc2_.wrappingPrice;
         this.var_1594 = _loc2_.stuffTypes;
         this.var_700 = _loc2_.boxTypes;
         this.var_701 = _loc2_.ribbonTypes;
      }
      
      public function get isEnabled() : Boolean
      {
         return this.var_1364;
      }
      
      public function get price() : int
      {
         return this.var_1445;
      }
      
      public function get stuffTypes() : Array
      {
         return this.var_1594;
      }
      
      public function get boxTypes() : Array
      {
         return this.var_700;
      }
      
      public function get ribbonTypes() : Array
      {
         return this.var_701;
      }
   }
}
