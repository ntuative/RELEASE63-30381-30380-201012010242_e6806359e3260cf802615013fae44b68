package com.sulake.core.window.utils
{
   import com.sulake.core.window.IWindow;
   
   public class WindowRectLimits implements IRectLimiter
   {
       
      
      private var var_493:int = -2.147483648E9;
      
      private var var_496:int = 2.147483647E9;
      
      private var var_495:int = -2.147483648E9;
      
      private var var_494:int = 2.147483647E9;
      
      private var _target:IWindow;
      
      public function WindowRectLimits(param1:IWindow)
      {
         super();
         this._target = param1;
      }
      
      public function get minWidth() : int
      {
         return this.var_493;
      }
      
      public function get maxWidth() : int
      {
         return this.var_496;
      }
      
      public function get minHeight() : int
      {
         return this.var_495;
      }
      
      public function get maxHeight() : int
      {
         return this.var_494;
      }
      
      public function set minWidth(param1:int) : void
      {
         this.var_493 = param1;
         if(this.var_493 > int.MIN_VALUE && !this._target.disposed && this._target.width < this.var_493)
         {
            this._target.width = this.var_493;
         }
      }
      
      public function set maxWidth(param1:int) : void
      {
         this.var_496 = param1;
         if(this.var_496 < int.MAX_VALUE && !this._target.disposed && this._target.width > this.var_496)
         {
            this._target.width = this.var_496;
         }
      }
      
      public function set minHeight(param1:int) : void
      {
         this.var_495 = param1;
         if(this.var_495 > int.MIN_VALUE && !this._target.disposed && this._target.height < this.var_495)
         {
            this._target.height = this.var_495;
         }
      }
      
      public function set maxHeight(param1:int) : void
      {
         this.var_494 = param1;
         if(this.var_494 < int.MAX_VALUE && !this._target.disposed && this._target.height > this.var_494)
         {
            this._target.height = this.var_494;
         }
      }
      
      public function get isEmpty() : Boolean
      {
         return this.var_493 == int.MIN_VALUE && this.var_496 == int.MAX_VALUE && this.var_495 == int.MIN_VALUE && this.var_494 == int.MAX_VALUE;
      }
      
      public function setEmpty() : void
      {
         this.var_493 = int.MIN_VALUE;
         this.var_496 = int.MAX_VALUE;
         this.var_495 = int.MIN_VALUE;
         this.var_494 = int.MAX_VALUE;
      }
      
      public function clone(param1:IWindow) : WindowRectLimits
      {
         var _loc2_:WindowRectLimits = new WindowRectLimits(param1);
         _loc2_.var_493 = this.var_493;
         _loc2_.var_496 = this.var_496;
         _loc2_.var_495 = this.var_495;
         _loc2_.var_494 = this.var_494;
         return _loc2_;
      }
   }
}
