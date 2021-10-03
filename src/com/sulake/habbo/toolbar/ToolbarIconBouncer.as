package com.sulake.habbo.toolbar
{
   public class ToolbarIconBouncer
   {
       
      
      private var var_2564:Number;
      
      private var var_2565:Number;
      
      private var var_916:Number;
      
      private var var_915:Number = 0;
      
      public function ToolbarIconBouncer(param1:Number, param2:Number)
      {
         super();
         this.var_2564 = param1;
         this.var_2565 = param2;
      }
      
      public function reset(param1:int) : void
      {
         this.var_916 = param1;
         this.var_915 = 0;
      }
      
      public function update() : void
      {
         this.var_916 += this.var_2565;
         this.var_915 += this.var_916;
         if(this.var_915 > 0)
         {
            this.var_915 = 0;
            this.var_916 = this.var_2564 * -1 * this.var_916;
         }
      }
      
      public function get location() : Number
      {
         return this.var_915;
      }
   }
}
