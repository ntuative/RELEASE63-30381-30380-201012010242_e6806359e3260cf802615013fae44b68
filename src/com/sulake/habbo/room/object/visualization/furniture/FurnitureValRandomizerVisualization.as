package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureValRandomizerVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_875:int = 20;
      
      private static const const_554:int = 10;
      
      private static const const_1221:int = 31;
      
      private static const ANIMATION_ID_ROLL:int = 32;
      
      private static const ANIMATION_ID_OFF:int = 30;
       
      
      private var var_283:Array;
      
      private var var_680:Boolean = false;
      
      public function FurnitureValRandomizerVisualization()
      {
         this.var_283 = new Array();
         super();
         super.setAnimation(ANIMATION_ID_OFF);
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == 0)
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
         if(param1 > 0 && param1 <= const_554)
         {
            if(this.var_680)
            {
               this.var_680 = false;
               this.var_283 = new Array();
               if(_direction == 2)
               {
                  this.var_283.push(const_875 + 5 - param1);
                  this.var_283.push(const_554 + 5 - param1);
               }
               else
               {
                  this.var_283.push(const_875 + param1);
                  this.var_283.push(const_554 + param1);
               }
               this.var_283.push(ANIMATION_ID_OFF);
               return;
            }
            super.setAnimation(ANIMATION_ID_OFF);
         }
      }
      
      override protected function updateAnimation(param1:Number) : Array
      {
         if(super.getLastFramePlayed(11))
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
