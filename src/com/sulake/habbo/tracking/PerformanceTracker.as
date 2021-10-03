package com.sulake.habbo.tracking
{
   import com.sulake.core.communication.connection.IConnection;
   import com.sulake.core.utils.debug.GarbageMonitor;
   import com.sulake.habbo.communication.messages.outgoing.tracking.PerformanceLogMessageComposer;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import flash.external.ExternalInterface;
   import flash.system.Capabilities;
   import flash.system.System;
   import flash.utils.getTimer;
   
   public class PerformanceTracker
   {
       
      
      private var _connection:IConnection = null;
      
      private var var_169:IHabboConfigurationManager = null;
      
      private var var_512:int = 0;
      
      private var var_487:Number = 0;
      
      private var var_2631:Array;
      
      private var var_1361:String = "";
      
      private var var_1771:String = "";
      
      private var var_2206:String = "";
      
      private var var_2202:String = "";
      
      private var var_1569:Boolean = false;
      
      private var var_1770:GarbageMonitor = null;
      
      private var var_1358:int = 0;
      
      private var var_1769:int = 1000;
      
      private var var_1359:int = 0;
      
      private var var_1768:int = 60;
      
      private var var_1697:int = 0;
      
      private var var_1767:int = 10;
      
      private var var_1360:int = 0;
      
      private var var_2495:Number = 0.15;
      
      private var var_2493:Boolean = true;
      
      private var var_2494:Number = 0;
      
      public function PerformanceTracker()
      {
         this.var_2631 = [];
         super();
         this.var_1771 = Capabilities.version;
         this.var_2206 = Capabilities.os;
         this.var_1569 = Capabilities.isDebugger;
         this.var_1361 = !true ? ExternalInterface.call("window.navigator.userAgent.toString") : "unknown";
         if(this.var_1361 == null)
         {
            this.var_1361 = "unknown";
         }
         this.var_1770 = new GarbageMonitor();
         this.updateGarbageMonitor();
         this.var_1697 = getTimer();
      }
      
      public function get flashVersion() : String
      {
         return this.var_1771;
      }
      
      public function get averageUpdateInterval() : int
      {
         return this.var_487;
      }
      
      public function set slowUpdateLimit(param1:int) : void
      {
         this.var_1769 = param1;
      }
      
      public function set reportInterval(param1:int) : void
      {
         this.var_1768 = param1;
      }
      
      public function set reportLimit(param1:int) : void
      {
         this.var_1767 = param1;
      }
      
      public function set connection(param1:IConnection) : void
      {
         this._connection = param1;
      }
      
      public function set configuration(param1:IHabboConfigurationManager) : void
      {
         this.var_169 = param1;
         this.var_1768 = int(this.var_169.getKey("performancetest.interval","60"));
         this.var_1769 = int(this.var_169.getKey("performancetest.slowupdatelimit","1000"));
         this.var_1767 = int(this.var_169.getKey("performancetest.reportlimit","10"));
         this.var_2495 = Number(this.var_169.getKey("performancetest.distribution.deviancelimit.percent","10"));
         this.var_2493 = Boolean(int(this.var_169.getKey("performancetest.distribution.enabled","1")));
      }
      
      public function dispose() : void
      {
      }
      
      private function updateGarbageMonitor() : Object
      {
         var _loc2_:* = null;
         var _loc1_:Array = this.var_1770.list;
         if(_loc1_ == null || _loc1_.length == 0)
         {
            _loc2_ = new GarbageTester("tester");
            this.var_1770.insert(_loc2_,"tester");
            return _loc2_;
         }
         return null;
      }
      
      public function update(param1:uint) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Boolean = false;
         var _loc6_:Number = NaN;
         var _loc2_:Object = this.updateGarbageMonitor();
         if(_loc2_ != null)
         {
            ++this.var_1358;
            Logger.log("Garbage collection");
         }
         var _loc3_:Boolean = false;
         if(param1 > this.var_1769)
         {
            ++this.var_1359;
            _loc3_ = true;
         }
         else
         {
            ++this.var_512;
            if(this.var_512 <= 1)
            {
               this.var_487 = param1;
            }
            else
            {
               _loc4_ = Number(this.var_512);
               this.var_487 = this.var_487 * (_loc4_ - 1) / _loc4_ + Number(param1) / _loc4_;
            }
         }
         if(getTimer() - this.var_1697 > this.var_1768 * 1000 && this.var_1360 < this.var_1767)
         {
            Logger.log("*** Performance tracker: average frame rate " + 1000 / this.var_487);
            _loc5_ = true;
            if(this.var_2493 && this.var_1360 > 0)
            {
               _loc6_ = this.differenceInPercents(this.var_2494,this.var_487);
               if(_loc6_ < this.var_2495)
               {
                  _loc5_ = false;
               }
            }
            this.var_1697 = getTimer();
            if(_loc5_ || _loc3_)
            {
               this.var_2494 = this.var_487;
               if(this.sendReport())
               {
                  ++this.var_1360;
               }
            }
         }
      }
      
      private function sendReport() : Boolean
      {
         var _loc1_:* = null;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this._connection != null)
         {
            _loc1_ = null;
            _loc2_ = getTimer() / 1000;
            _loc3_ = -1;
            _loc4_ = 0;
            _loc1_ = new PerformanceLogMessageComposer(_loc2_,this.var_1361,this.var_1771,this.var_2206,this.var_2202,this.var_1569,_loc4_,_loc3_,this.var_1358,this.var_487,this.var_1359);
            this._connection.send(_loc1_);
            this.var_1358 = 0;
            this.var_487 = 0;
            this.var_512 = 0;
            this.var_1359 = 0;
            return true;
         }
         return false;
      }
      
      private function differenceInPercents(param1:Number, param2:Number) : Number
      {
         if(param1 == param2)
         {
            return 0;
         }
         var _loc3_:Number = param1;
         var _loc4_:Number = param2;
         if(param2 > param1)
         {
            _loc3_ = param2;
            _loc4_ = param1;
         }
         return 100 * (1 - _loc4_ / _loc3_);
      }
   }
}
