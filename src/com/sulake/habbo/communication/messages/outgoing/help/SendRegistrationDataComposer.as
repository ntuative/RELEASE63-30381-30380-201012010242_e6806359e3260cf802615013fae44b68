package com.sulake.habbo.communication.messages.outgoing.help
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class SendRegistrationDataComposer implements IMessageComposer
   {
       
      
      private var var_867:Array;
      
      public function SendRegistrationDataComposer(param1:String, param2:String, param3:Boolean)
      {
         this.var_867 = [];
         super();
         this.var_867.push(param1);
         this.var_867.push(param2);
         this.var_867.push(param3);
      }
      
      public function getMessageArray() : Array
      {
         return this.var_867;
      }
      
      public function dispose() : void
      {
         this.var_867 = null;
      }
   }
}
