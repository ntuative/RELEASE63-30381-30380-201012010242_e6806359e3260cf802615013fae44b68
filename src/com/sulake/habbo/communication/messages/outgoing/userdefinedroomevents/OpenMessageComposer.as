package com.sulake.habbo.communication.messages.outgoing.userdefinedroomevents
{
   import com.sulake.core.communication.messages.IMessageComposer;
   import com.sulake.core.runtime.IDisposable;
   
   public class OpenMessageComposer implements IMessageComposer, IDisposable
   {
       
      
      private var var_31:Array;
      
      public function OpenMessageComposer(param1:int)
      {
         this.var_31 = new Array();
         super();
         this.var_31.push(param1);
      }
      
      public function getMessageArray() : Array
      {
         return this.var_31;
      }
      
      public function dispose() : void
      {
         this.var_31 = null;
      }
      
      public function get disposed() : Boolean
      {
         return false;
      }
   }
}
