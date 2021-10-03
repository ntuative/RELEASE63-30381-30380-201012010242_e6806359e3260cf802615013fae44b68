package com.sulake.habbo.tracking
{
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import flash.utils.getTimer;
   
   public class FramerateTracker
   {
       
      
      private var var_1697:int;
      
      private var var_2402:int;
      
      private var var_1085:int;
      
      private var var_487:Number;
      
      private var var_2403:Boolean;
      
      private var var_2401:int;
      
      private var var_1696:int;
      
      public function FramerateTracker()
      {
         super();
      }
      
      public function configure(param1:IHabboConfigurationManager) : void
      {
         this.var_2402 = int(param1.getKey("tracking.framerate.reportInterval.seconds","300")) * 1000;
         this.var_2401 = int(param1.getKey("tracking.framerate.maximumEvents","5"));
         this.var_2403 = true;
      }
      
      public function trackUpdate(param1:uint, param2:IHabboTracking) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         ++this.var_1085;
         var _loc3_:int = getTimer();
         if(this.var_1085 == 1)
         {
            this.var_487 = param1;
            this.var_1697 = _loc3_;
         }
         else
         {
            _loc4_ = Number(this.var_1085);
            this.var_487 = this.var_487 * (_loc4_ - 1) / _loc4_ + Number(param1) / _loc4_;
         }
         if(this.var_2403 && _loc3_ - this.var_1697 >= this.var_2402 && this.var_1696 < this.var_2401)
         {
            _loc5_ = 1000 / this.var_487;
            param2.track("performance","averageFramerate",Math.round(_loc5_));
            ++this.var_1696;
            this.var_1697 = _loc3_;
            this.var_1085 = 0;
         }
      }
      
      public function dispose() : void
      {
      }
   }
}
