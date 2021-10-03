package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ChatlineData
   {
       
      
      private var var_2136:int;
      
      private var var_2137:int;
      
      private var var_2134:int;
      
      private var var_2135:String;
      
      private var var_1581:String;
      
      public function ChatlineData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2136 = param1.readInteger();
         this.var_2137 = param1.readInteger();
         this.var_2134 = param1.readInteger();
         this.var_2135 = param1.readString();
         this.var_1581 = param1.readString();
      }
      
      public function get hour() : int
      {
         return this.var_2136;
      }
      
      public function get minute() : int
      {
         return this.var_2137;
      }
      
      public function get chatterId() : int
      {
         return this.var_2134;
      }
      
      public function get chatterName() : String
      {
         return this.var_2135;
      }
      
      public function get msg() : String
      {
         return this.var_1581;
      }
   }
}
