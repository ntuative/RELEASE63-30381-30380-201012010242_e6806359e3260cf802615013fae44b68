package com.sulake.core.runtime
{
   class ComponentInterfaceQueue implements IDisposable
   {
       
      
      private var var_1708:IID;
      
      private var var_708:Boolean;
      
      private var var_1088:Array;
      
      function ComponentInterfaceQueue(param1:IID)
      {
         super();
         this.var_1708 = param1;
         this.var_1088 = new Array();
         this.var_708 = false;
      }
      
      public function get identifier() : IID
      {
         return this.var_1708;
      }
      
      public function get disposed() : Boolean
      {
         return this.var_708;
      }
      
      public function get receivers() : Array
      {
         return this.var_1088;
      }
      
      public function dispose() : void
      {
         if(!this.var_708)
         {
            this.var_708 = true;
            this.var_1708 = null;
            while(this.var_1088.length > 0)
            {
               this.var_1088.pop();
            }
            this.var_1088 = null;
         }
      }
   }
}
