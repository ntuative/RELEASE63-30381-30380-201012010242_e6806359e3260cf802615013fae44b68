package com.sulake.habbo.communication.messages.parser.error
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ErrorReportMessageParser implements IMessageParser
   {
       
      
      private var var_1463:int;
      
      private var var_1783:int;
      
      private var var_1782:String;
      
      public function ErrorReportMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1783 = param1.readInteger();
         this.var_1463 = param1.readInteger();
         this.var_1782 = param1.readString();
         return true;
      }
      
      public function flush() : Boolean
      {
         this.var_1463 = 0;
         this.var_1783 = 0;
         this.var_1782 = null;
         return true;
      }
      
      public function get errorCode() : int
      {
         return this.var_1463;
      }
      
      public function get messageId() : int
      {
         return this.var_1783;
      }
      
      public function get timestamp() : String
      {
         return this.var_1782;
      }
   }
}
