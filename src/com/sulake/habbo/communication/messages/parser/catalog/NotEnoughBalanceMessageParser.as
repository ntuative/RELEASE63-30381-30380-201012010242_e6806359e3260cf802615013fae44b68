package com.sulake.habbo.communication.messages.parser.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class NotEnoughBalanceMessageParser implements IMessageParser
   {
       
      
      private var var_1589:int = 0;
      
      private var var_1590:int = 0;
      
      private var var_1674:int = 0;
      
      public function NotEnoughBalanceMessageParser()
      {
         super();
      }
      
      public function get notEnoughCredits() : int
      {
         return this.var_1589;
      }
      
      public function get notEnoughActivityPoints() : int
      {
         return this.var_1590;
      }
      
      public function get activityPointType() : int
      {
         return this.var_1674;
      }
      
      public function flush() : Boolean
      {
         this.var_1589 = 0;
         this.var_1590 = 0;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1589 = param1.readInteger();
         this.var_1590 = param1.readInteger();
         this.var_1674 = param1.readInteger();
         return true;
      }
   }
}
