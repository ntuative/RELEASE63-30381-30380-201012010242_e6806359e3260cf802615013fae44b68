package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ModeratorUserInfoData
   {
       
      
      private var _userId:int;
      
      private var _userName:String;
      
      private var var_2396:int;
      
      private var var_2395:int;
      
      private var var_707:Boolean;
      
      private var var_2392:int;
      
      private var var_2393:int;
      
      private var var_2397:int;
      
      private var var_2394:int;
      
      public function ModeratorUserInfoData(param1:IMessageDataWrapper)
      {
         super();
         this._userId = param1.readInteger();
         this._userName = param1.readString();
         this.var_2396 = param1.readInteger();
         this.var_2395 = param1.readInteger();
         this.var_707 = param1.readBoolean();
         this.var_2392 = param1.readInteger();
         this.var_2393 = param1.readInteger();
         this.var_2397 = param1.readInteger();
         this.var_2394 = param1.readInteger();
      }
      
      public function get userId() : int
      {
         return this._userId;
      }
      
      public function get userName() : String
      {
         return this._userName;
      }
      
      public function get minutesSinceRegistration() : int
      {
         return this.var_2396;
      }
      
      public function get minutesSinceLastLogin() : int
      {
         return this.var_2395;
      }
      
      public function get online() : Boolean
      {
         return this.var_707;
      }
      
      public function get cfhCount() : int
      {
         return this.var_2392;
      }
      
      public function get abusiveCfhCount() : int
      {
         return this.var_2393;
      }
      
      public function get cautionCount() : int
      {
         return this.var_2397;
      }
      
      public function get banCount() : int
      {
         return this.var_2394;
      }
   }
}
