package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class AcceptBuddyFailureData
   {
       
      
      private var var_874:String;
      
      private var var_1463:int;
      
      public function AcceptBuddyFailureData(param1:IMessageDataWrapper)
      {
         super();
         this.var_874 = param1.readString();
         this.var_1463 = param1.readInteger();
      }
      
      public function get senderName() : String
      {
         return this.var_874;
      }
      
      public function get errorCode() : int
      {
         return this.var_1463;
      }
   }
}
