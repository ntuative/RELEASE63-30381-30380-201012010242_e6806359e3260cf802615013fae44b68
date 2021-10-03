package com.sulake.habbo.communication.messages.incoming.inventory.achievements
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class AchievementData
   {
       
      
      private var _type:int;
      
      private var var_1681:int;
      
      private var var_269:String;
      
      private var var_2351:int;
      
      private var var_2352:int;
      
      private var var_1680:int;
      
      private var var_2350:int;
      
      public function AchievementData(param1:IMessageDataWrapper)
      {
         super();
         this._type = param1.readInteger();
         this.var_1681 = param1.readInteger();
         this.var_269 = param1.readString();
         this.var_2351 = param1.readInteger();
         this.var_2352 = param1.readInteger();
         this.var_1680 = param1.readInteger();
         this.var_2350 = param1.readInteger();
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get badgeId() : String
      {
         return this.var_269;
      }
      
      public function get level() : int
      {
         return this.var_1681;
      }
      
      public function get scoreLimit() : int
      {
         return this.var_2351;
      }
      
      public function get levelRewardPoints() : int
      {
         return this.var_2352;
      }
      
      public function get levelRewardPointType() : int
      {
         return this.var_1680;
      }
      
      public function get currentPoints() : int
      {
         return this.var_2350;
      }
   }
}
