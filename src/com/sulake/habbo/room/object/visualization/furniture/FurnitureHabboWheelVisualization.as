package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureHabboWheelVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_875:int = 10;
      
      private static const const_554:int = 20;
      
      private static const const_1221:int = 31;
      
      private static const ANIMATION_ID_ROLL:int = 32;
       
      
      private var var_283:Array;
      
      private var var_680:Boolean = false;
      
      public function FurnitureHabboWheelVisualization()
      {
         this.var_283 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == -1)
         {
            if(!this.var_680)
            {
               this.var_680 = true;
               this.var_283 = new Array();
               this.var_283.push(const_1221);
               this.var_283.push(ANIMATION_ID_ROLL);
               return;
            }
         }
         if(param1 > 0 && param1 <= const_875)
         {
            if(this.var_680)
            {
               this.var_680 = false;
               this.var_283 = new Array();
               this.var_283.push(const_875 + param1);
               this.var_283.push(const_554 + param1);
               this.var_283.push(param1);
               return;
            }
            super.setAnimation(param1);
         }
      }
      
      override protected function updateAnimation(param1:Number) : Array
      {
         if(super.getLastFramePlayed(1) && super.getLastFramePlayed(2) && super.getLastFramePlayed(3))
         {
            if(this.var_283.length > 0)
            {
               super.setAnimation(this.var_283.shift());
            }
         }
         return super.updateAnimation(param1);
      }
   }
}
