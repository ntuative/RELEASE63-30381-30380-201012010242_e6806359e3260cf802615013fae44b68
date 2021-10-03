package com.sulake.habbo.communication.messages.parser.poll
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class VoteResultMessageParser implements IMessageParser
   {
       
      
      private var var_984:String;
      
      private var var_1310:Array;
      
      private var var_1022:Array;
      
      private var var_1666:int;
      
      public function VoteResultMessageParser()
      {
         super();
      }
      
      public function get question() : String
      {
         return this.var_984;
      }
      
      public function get choices() : Array
      {
         return this.var_1310.slice();
      }
      
      public function get votes() : Array
      {
         return this.var_1022.slice();
      }
      
      public function get totalVotes() : int
      {
         return this.var_1666;
      }
      
      public function flush() : Boolean
      {
         this.var_984 = "";
         this.var_1310 = [];
         this.var_1022 = [];
         this.var_1666 = 0;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_984 = param1.readString();
         this.var_1310 = [];
         this.var_1022 = [];
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            param1.readInteger();
            this.var_1310.push(param1.readString());
            this.var_1022.push(param1.readInteger());
            _loc3_++;
         }
         this.var_1666 = param1.readInteger();
         return true;
      }
   }
}
