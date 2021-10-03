package com.sulake.habbo.communication.messages.parser.moderation
{
   import flash.utils.getTimer;
   
   public class IssueMessageData
   {
      
      public static const const_146:int = 1;
      
      public static const const_330:int = 2;
      
      public static const const_1289:int = 3;
       
      
      private var var_2257:int;
      
      private var _state:int;
      
      private var var_1192:int;
      
      private var var_2260:int;
      
      private var var_1595:int;
      
      private var var_2256:int;
      
      private var var_2261:int = 0;
      
      private var var_2262:int;
      
      private var var_2258:String;
      
      private var var_1370:int;
      
      private var var_1787:String;
      
      private var var_2263:int;
      
      private var var_2255:String;
      
      private var _message:String;
      
      private var var_2254:int;
      
      private var var_801:String;
      
      private var var_1717:int;
      
      private var var_2264:String;
      
      private var var_317:int;
      
      private var var_2259:String;
      
      private var var_2184:String;
      
      private var var_2111:int;
      
      private var var_2108:int;
      
      public function IssueMessageData()
      {
         super();
      }
      
      public function get issueId() : int
      {
         return this.var_2257;
      }
      
      public function get state() : int
      {
         return this._state;
      }
      
      public function get categoryId() : int
      {
         return this.var_1192;
      }
      
      public function get reportedCategoryId() : int
      {
         return this.var_2260;
      }
      
      public function get timeStamp() : int
      {
         return this.var_1595;
      }
      
      public function get priority() : int
      {
         return this.var_2256 + this.var_2261;
      }
      
      public function get reporterUserId() : int
      {
         return this.var_2262;
      }
      
      public function get reporterUserName() : String
      {
         return this.var_2258;
      }
      
      public function get reportedUserId() : int
      {
         return this.var_1370;
      }
      
      public function get reportedUserName() : String
      {
         return this.var_1787;
      }
      
      public function get pickerUserId() : int
      {
         return this.var_2263;
      }
      
      public function get pickerUserName() : String
      {
         return this.var_2255;
      }
      
      public function get message() : String
      {
         return this._message;
      }
      
      public function get chatRecordId() : int
      {
         return this.var_2254;
      }
      
      public function get roomName() : String
      {
         return this.var_801;
      }
      
      public function get roomType() : int
      {
         return this.var_1717;
      }
      
      public function get flatType() : String
      {
         return this.var_2264;
      }
      
      public function get flatId() : int
      {
         return this.var_317;
      }
      
      public function get flatOwnerName() : String
      {
         return this.var_2259;
      }
      
      public function get roomResources() : String
      {
         return this.var_2184;
      }
      
      public function get unitPort() : int
      {
         return this.var_2111;
      }
      
      public function get worldId() : int
      {
         return this.var_2108;
      }
      
      public function set issueId(param1:int) : void
      {
         this.var_2257 = param1;
      }
      
      public function set state(param1:int) : void
      {
         this._state = param1;
      }
      
      public function set categoryId(param1:int) : void
      {
         this.var_1192 = param1;
      }
      
      public function set reportedCategoryId(param1:int) : void
      {
         this.var_2260 = param1;
      }
      
      public function set timeStamp(param1:int) : void
      {
         this.var_1595 = param1;
      }
      
      public function set priority(param1:int) : void
      {
         this.var_2256 = param1;
      }
      
      public function set temporalPriority(param1:int) : void
      {
         this.var_2261 = param1;
      }
      
      public function set reporterUserId(param1:int) : void
      {
         this.var_2262 = param1;
      }
      
      public function set reporterUserName(param1:String) : void
      {
         this.var_2258 = param1;
      }
      
      public function set reportedUserId(param1:int) : void
      {
         this.var_1370 = param1;
      }
      
      public function set reportedUserName(param1:String) : void
      {
         this.var_1787 = param1;
      }
      
      public function set pickerUserId(param1:int) : void
      {
         this.var_2263 = param1;
      }
      
      public function set pickerUserName(param1:String) : void
      {
         this.var_2255 = param1;
      }
      
      public function set message(param1:String) : void
      {
         this._message = param1;
      }
      
      public function set chatRecordId(param1:int) : void
      {
         this.var_2254 = param1;
      }
      
      public function set roomName(param1:String) : void
      {
         this.var_801 = param1;
      }
      
      public function set roomType(param1:int) : void
      {
         this.var_1717 = param1;
      }
      
      public function set flatType(param1:String) : void
      {
         this.var_2264 = param1;
      }
      
      public function set flatId(param1:int) : void
      {
         this.var_317 = param1;
      }
      
      public function set flatOwnerName(param1:String) : void
      {
         this.var_2259 = param1;
      }
      
      public function set roomResources(param1:String) : void
      {
         this.var_2184 = param1;
      }
      
      public function set unitPort(param1:int) : void
      {
         this.var_2111 = param1;
      }
      
      public function set worldId(param1:int) : void
      {
         this.var_2108 = param1;
      }
      
      public function getOpenTime() : String
      {
         var _loc1_:int = (getTimer() - this.var_1595) / 1000;
         var _loc2_:int = _loc1_ % 60;
         var _loc3_:int = _loc1_ / 60;
         var _loc4_:int = _loc3_ % 60;
         var _loc5_:int = _loc3_ / 60;
         var _loc6_:String = _loc2_ < 10 ? "0" + _loc2_ : "" + _loc2_;
         var _loc7_:String = _loc4_ < 10 ? "0" + _loc4_ : "" + _loc4_;
         var _loc8_:String = _loc5_ < 10 ? "0" + _loc5_ : "" + _loc5_;
         return _loc8_ + ":" + _loc7_ + ":" + _loc6_;
      }
   }
}
