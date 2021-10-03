package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FlatCategory
   {
       
      
      private var var_1536:int;
      
      private var var_2557:String;
      
      private var var_348:Boolean;
      
      public function FlatCategory(param1:IMessageDataWrapper)
      {
         super();
         this.var_1536 = param1.readInteger();
         this.var_2557 = param1.readString();
         this.var_348 = param1.readBoolean();
      }
      
      public function get nodeId() : int
      {
         return this.var_1536;
      }
      
      public function get nodeName() : String
      {
         return this.var_2557;
      }
      
      public function get visible() : Boolean
      {
         return this.var_348;
      }
   }
}
