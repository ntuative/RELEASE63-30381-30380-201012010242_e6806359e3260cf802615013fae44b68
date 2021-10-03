package com.sulake.habbo.room.object.visualization.furniture.data
{
   public class AnimationFrame
   {
      
      public static const const_461:int = -1;
      
      public static const const_957:int = -1;
       
      
      private var _id:int = 0;
      
      private var _x:int = 0;
      
      private var var_165:int = 0;
      
      private var var_2423:int = 1;
      
      private var var_881:int = 1;
      
      private var var_1772:int = 1;
      
      private var var_2500:int = -1;
      
      private var var_2501:int = 0;
      
      private var var_2502:Boolean = false;
      
      public function AnimationFrame(param1:int, param2:int, param3:int, param4:int, param5:int, param6:Boolean, param7:int = -1, param8:int = 0)
      {
         super();
         this._id = param1;
         this._x = param2;
         this.var_165 = param3;
         this.var_2502 = param6;
         if(param4 < 1)
         {
            param4 = 1;
         }
         this.var_2423 = param4;
         if(param5 < 0)
         {
            param5 = const_461;
         }
         this.var_881 = param5;
         this.var_1772 = param5;
         if(param7 >= 0)
         {
            this.var_2500 = param7;
            this.var_2501 = param8;
         }
      }
      
      public function get id() : int
      {
         if(this._id >= 0)
         {
            return this._id;
         }
         return -this._id * Math.random();
      }
      
      public function get x() : int
      {
         return this._x;
      }
      
      public function get y() : int
      {
         return this.var_165;
      }
      
      public function get repeats() : int
      {
         return this.var_2423;
      }
      
      public function get frameRepeats() : int
      {
         return this.var_881;
      }
      
      public function get isLastFrame() : Boolean
      {
         return this.var_2502;
      }
      
      public function get remainingFrameRepeats() : int
      {
         if(this.var_881 < 0)
         {
            return const_461;
         }
         return this.var_1772;
      }
      
      public function set remainingFrameRepeats(param1:int) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(this.var_881 > 0 && param1 > this.var_881)
         {
            param1 = this.var_881;
         }
         this.var_1772 = param1;
      }
      
      public function get activeSequence() : int
      {
         return this.var_2500;
      }
      
      public function get activeSequenceOffset() : int
      {
         return this.var_2501;
      }
   }
}
