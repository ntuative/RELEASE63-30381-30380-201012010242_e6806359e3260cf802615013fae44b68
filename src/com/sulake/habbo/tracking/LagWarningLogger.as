package com.sulake.habbo.tracking
{
   import com.sulake.core.communication.connection.IConnection;
   import com.sulake.habbo.communication.messages.outgoing.tracking.LagWarningReportMessageComposer;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import flash.utils.getTimer;
   
   public class LagWarningLogger
   {
       
      
      private var _connection:IConnection;
      
      private var var_1411:Boolean = false;
      
      private var var_1684:int;
      
      private var _lastWarning:int;
      
      private var var_1079:int;
      
      public function LagWarningLogger()
      {
         super();
      }
      
      public function set connection(param1:IConnection) : void
      {
         this._connection = param1;
      }
      
      public function configure(param1:IHabboConfigurationManager) : void
      {
         this.var_1411 = Boolean(int(param1.getKey("lagWarningLog.enabled","1")));
         this.var_1684 = int(param1.getKey("lagWarningLog.interval.seconds","10")) * 1000;
      }
      
      public function chatLagDetected() : void
      {
         if(!this.var_1411 || this.var_1684 <= 0)
         {
            return;
         }
         ++this.var_1079;
         this.reportWarningsAsNeeded();
      }
      
      public function update() : void
      {
         this.reportWarningsAsNeeded();
      }
      
      private function reportWarningsAsNeeded() : void
      {
         var _loc2_:* = null;
         if(this.var_1079 == 0 || this._connection == null)
         {
            return;
         }
         var _loc1_:int = getTimer();
         if(this._lastWarning == 0 || _loc1_ - this._lastWarning > this.var_1684)
         {
            _loc2_ = new LagWarningReportMessageComposer(this.var_1079);
            this._connection.send(_loc2_);
            this._lastWarning = _loc1_;
            this.var_1079 = 0;
         }
      }
   }
}
