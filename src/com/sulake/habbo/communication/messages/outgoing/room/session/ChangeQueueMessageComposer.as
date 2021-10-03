package com.sulake.habbo.communication.messages.outgoing.room.session
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class ChangeQueueMessageComposer implements IMessageComposer
   {
       
      
      private var var_1997:int;
      
      public function ChangeQueueMessageComposer(param1:int)
      {
         super();
         this.var_1997 = param1;
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_1997];
      }
      
      public function dispose() : void
      {
      }
      
      public function get disposed() : Boolean
      {
         return true;
      }
   }
}
