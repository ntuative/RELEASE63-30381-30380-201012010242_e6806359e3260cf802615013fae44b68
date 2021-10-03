package com.sulake.habbo.communication.messages.parser.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class FlatCreatedMessageParser implements IMessageParser
   {
       
      
      private var var_317:int;
      
      private var var_1818:String;
      
      public function FlatCreatedMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_317 = param1.readInteger();
         this.var_1818 = param1.readString();
         Logger.log("FLAT CREATED: " + this.var_317 + ", " + this.var_1818);
         return true;
      }
      
      public function get flatId() : int
      {
         return this.var_317;
      }
      
      public function get flatName() : String
      {
         return this.var_1818;
      }
   }
}