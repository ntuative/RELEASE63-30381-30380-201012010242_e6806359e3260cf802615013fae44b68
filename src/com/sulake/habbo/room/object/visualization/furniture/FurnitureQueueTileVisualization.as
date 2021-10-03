package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureQueueTileVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const ANIMATION_ID_ROLL:int = 3;
      
      private static const const_1128:int = 2;
      
      private static const const_1129:int = 1;
      
      private static const ANIMATION_DURATION:int = 15;
       
      
      private var var_283:Array;
      
      private var var_943:int;
      
      public function FurnitureQueueTileVisualization()
      {
         this.var_283 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == const_1128)
         {
            this.var_283 = new Array();
            this.var_283.push(const_1129);
            this.var_943 = ANIMATION_DURATION;
         }
         super.setAnimation(param1);
      }
      
      override protected function updateAnimation(param1:Number) : Array
      {
         if(this.var_943 > 0)
         {
            --this.var_943;
         }
         if(this.var_943 == 0)
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
