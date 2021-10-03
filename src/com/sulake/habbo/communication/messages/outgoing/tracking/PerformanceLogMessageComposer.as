package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class PerformanceLogMessageComposer implements IMessageComposer
   {
       
      
      private var var_1932:int = 0;
      
      private var var_1361:String = "";
      
      private var var_1771:String = "";
      
      private var var_2206:String = "";
      
      private var var_2202:String = "";
      
      private var var_1569:int = 0;
      
      private var var_2205:int = 0;
      
      private var var_2204:int = 0;
      
      private var var_1358:int = 0;
      
      private var var_2203:int = 0;
      
      private var var_1359:int = 0;
      
      public function PerformanceLogMessageComposer(param1:int, param2:String, param3:String, param4:String, param5:String, param6:Boolean, param7:int, param8:int, param9:int, param10:int, param11:int)
      {
         super();
         this.var_1932 = param1;
         this.var_1361 = param2;
         this.var_1771 = param3;
         this.var_2206 = param4;
         this.var_2202 = param5;
         if(param6)
         {
            this.var_1569 = 1;
         }
         else
         {
            this.var_1569 = 0;
         }
         this.var_2205 = param7;
         this.var_2204 = param8;
         this.var_1358 = param9;
         this.var_2203 = param10;
         this.var_1359 = param11;
      }
      
      public function dispose() : void
      {
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_1932,this.var_1361,this.var_1771,this.var_2206,this.var_2202,this.var_1569,this.var_2205,this.var_2204,this.var_1358,this.var_2203,this.var_1359];
      }
   }
}
