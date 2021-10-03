package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class LatencyPingReportMessageComposer implements IMessageComposer
   {
       
      
      private var var_2577:int;
      
      private var var_2578:int;
      
      private var var_2579:int;
      
      public function LatencyPingReportMessageComposer(param1:int, param2:int, param3:int)
      {
         super();
         this.var_2577 = param1;
         this.var_2578 = param2;
         this.var_2579 = param3;
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2577,this.var_2578,this.var_2579];
      }
      
      public function dispose() : void
      {
      }
   }
}
