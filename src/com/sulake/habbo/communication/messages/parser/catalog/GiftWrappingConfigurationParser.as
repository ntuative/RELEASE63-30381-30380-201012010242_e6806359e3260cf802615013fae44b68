package com.sulake.habbo.communication.messages.parser.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class GiftWrappingConfigurationParser implements IMessageParser
   {
       
      
      private var var_2252:Boolean;
      
      private var var_2251:int;
      
      private var var_1594:Array;
      
      private var var_700:Array;
      
      private var var_701:Array;
      
      public function GiftWrappingConfigurationParser()
      {
         super();
      }
      
      public function get isWrappingEnabled() : Boolean
      {
         return this.var_2252;
      }
      
      public function get wrappingPrice() : int
      {
         return this.var_2251;
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
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var _loc2_:int = 0;
         this.var_1594 = [];
         this.var_700 = [];
         this.var_701 = [];
         this.var_2252 = param1.readBoolean();
         this.var_2251 = param1.readInteger();
         var _loc3_:int = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this.var_1594.push(param1.readInteger());
            _loc2_++;
         }
         _loc3_ = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this.var_700.push(param1.readInteger());
            _loc2_++;
         }
         _loc3_ = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this.var_701.push(param1.readInteger());
            _loc2_++;
         }
         return true;
      }
   }
}
