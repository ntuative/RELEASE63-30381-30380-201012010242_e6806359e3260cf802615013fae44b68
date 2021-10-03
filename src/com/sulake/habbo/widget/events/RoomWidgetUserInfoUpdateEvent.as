package com.sulake.habbo.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetUserInfoUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_240:String = "RWUIUE_OWN_USER";
      
      public static const BOT:String = "RWUIUE_BOT";
      
      public static const const_251:String = "RWUIUE_PEER";
      
      public static const const_1438:int = 0;
      
      public static const TRADE_REASON_NO_OWN_RIGHT:int = 1;
      
      public static const const_1023:int = 2;
      
      public static const const_896:int = 3;
      
      public static const const_1283:String = "BOT";
       
      
      private var _name:String = "";
      
      private var var_1518:String = "";
      
      private var var_1901:int;
      
      private var var_2094:int = 0;
      
      private var var_2090:int = 0;
      
      private var var_598:String = "";
      
      private var var_38:BitmapData = null;
      
      private var var_218:Array;
      
      private var var_1320:int = 0;
      
      private var var_2240:String = "";
      
      private var var_2242:int = 0;
      
      private var var_2241:int = 0;
      
      private var var_1550:Boolean = false;
      
      private var var_1520:String = "";
      
      private var var_2507:Boolean = false;
      
      private var var_2511:Boolean = true;
      
      private var _respectLeft:int = 0;
      
      private var var_2514:Boolean = false;
      
      private var var_2512:Boolean = false;
      
      private var var_2510:Boolean = false;
      
      private var var_2508:Boolean = false;
      
      private var var_2509:Boolean = false;
      
      private var var_2513:Boolean = false;
      
      private var var_2506:int = 0;
      
      private var var_1551:Boolean = false;
      
      public function RoomWidgetUserInfoUpdateEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         this.var_218 = [];
         super(param1,param2,param3);
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set motto(param1:String) : void
      {
         this.var_1518 = param1;
      }
      
      public function get motto() : String
      {
         return this.var_1518;
      }
      
      public function set achievementScore(param1:int) : void
      {
         this.var_1901 = param1;
      }
      
      public function get achievementScore() : int
      {
         return this.var_1901;
      }
      
      public function set webID(param1:int) : void
      {
         this.var_2094 = param1;
      }
      
      public function get webID() : int
      {
         return this.var_2094;
      }
      
      public function set xp(param1:int) : void
      {
         this.var_2090 = param1;
      }
      
      public function get xp() : int
      {
         return this.var_2090;
      }
      
      public function set figure(param1:String) : void
      {
         this.var_598 = param1;
      }
      
      public function get figure() : String
      {
         return this.var_598;
      }
      
      public function set image(param1:BitmapData) : void
      {
         this.var_38 = param1;
      }
      
      public function get image() : BitmapData
      {
         return this.var_38;
      }
      
      public function set badges(param1:Array) : void
      {
         this.var_218 = param1;
      }
      
      public function get badges() : Array
      {
         return this.var_218;
      }
      
      public function set groupId(param1:int) : void
      {
         this.var_1320 = param1;
      }
      
      public function get groupId() : int
      {
         return this.var_1320;
      }
      
      public function set groupBadgeId(param1:String) : void
      {
         this.var_2240 = param1;
      }
      
      public function get groupBadgeId() : String
      {
         return this.var_2240;
      }
      
      public function set canBeAskedAsFriend(param1:Boolean) : void
      {
         this.var_2507 = param1;
      }
      
      public function get canBeAskedAsFriend() : Boolean
      {
         return this.var_2507;
      }
      
      public function set respectLeft(param1:int) : void
      {
         this._respectLeft = param1;
      }
      
      public function get respectLeft() : int
      {
         return this._respectLeft;
      }
      
      public function set isIgnored(param1:Boolean) : void
      {
         this.var_2514 = param1;
      }
      
      public function get isIgnored() : Boolean
      {
         return this.var_2514;
      }
      
      public function set amIOwner(param1:Boolean) : void
      {
         this.var_2512 = param1;
      }
      
      public function get amIOwner() : Boolean
      {
         return this.var_2512;
      }
      
      public function set amIController(param1:Boolean) : void
      {
         this.var_2510 = param1;
      }
      
      public function get amIController() : Boolean
      {
         return this.var_2510;
      }
      
      public function set amIAnyRoomController(param1:Boolean) : void
      {
         this.var_2508 = param1;
      }
      
      public function get amIAnyRoomController() : Boolean
      {
         return this.var_2508;
      }
      
      public function set hasFlatControl(param1:Boolean) : void
      {
         this.var_2509 = param1;
      }
      
      public function get hasFlatControl() : Boolean
      {
         return this.var_2509;
      }
      
      public function set canTrade(param1:Boolean) : void
      {
         this.var_2513 = param1;
      }
      
      public function get canTrade() : Boolean
      {
         return this.var_2513;
      }
      
      public function set canTradeReason(param1:int) : void
      {
         this.var_2506 = param1;
      }
      
      public function get canTradeReason() : int
      {
         return this.var_2506;
      }
      
      public function set canBeKicked(param1:Boolean) : void
      {
         this.var_2511 = param1;
      }
      
      public function get canBeKicked() : Boolean
      {
         return this.var_2511;
      }
      
      public function set isRoomOwner(param1:Boolean) : void
      {
         this.var_1551 = param1;
      }
      
      public function get isRoomOwner() : Boolean
      {
         return this.var_1551;
      }
      
      public function set carryItem(param1:int) : void
      {
         this.var_2242 = param1;
      }
      
      public function get carryItem() : int
      {
         return this.var_2242;
      }
      
      public function set userRoomId(param1:int) : void
      {
         this.var_2241 = param1;
      }
      
      public function get userRoomId() : int
      {
         return this.var_2241;
      }
      
      public function set isSpectatorMode(param1:Boolean) : void
      {
         this.var_1550 = param1;
      }
      
      public function get isSpectatorMode() : Boolean
      {
         return this.var_1550;
      }
      
      public function set realName(param1:String) : void
      {
         this.var_1520 = param1;
      }
      
      public function get realName() : String
      {
         return this.var_1520;
      }
   }
}
