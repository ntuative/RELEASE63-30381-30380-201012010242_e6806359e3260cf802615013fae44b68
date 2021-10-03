package com.sulake.habbo.communication.messages.incoming.roomsettings
{
   public class RoomSettingsData
   {
      
      public static const const_446:int = 0;
      
      public static const const_182:int = 1;
      
      public static const const_113:int = 2;
      
      public static const const_664:Array = ["open","closed","password"];
       
      
      private var _roomId:int;
      
      private var _name:String;
      
      private var var_1524:String;
      
      private var var_2025:int;
      
      private var var_1192:int;
      
      private var var_2024:int;
      
      private var var_2552:int;
      
      private var var_758:Array;
      
      private var var_2023:Array;
      
      private var var_2553:int;
      
      private var var_2029:Boolean;
      
      private var var_2027:Boolean;
      
      private var var_2026:Boolean;
      
      private var var_2028:Boolean;
      
      public function RoomSettingsData()
      {
         super();
      }
      
      public function get allowPets() : Boolean
      {
         return this.var_2029;
      }
      
      public function set allowPets(param1:Boolean) : void
      {
         this.var_2029 = param1;
      }
      
      public function get allowFoodConsume() : Boolean
      {
         return this.var_2027;
      }
      
      public function set allowFoodConsume(param1:Boolean) : void
      {
         this.var_2027 = param1;
      }
      
      public function get allowWalkThrough() : Boolean
      {
         return this.var_2026;
      }
      
      public function set allowWalkThrough(param1:Boolean) : void
      {
         this.var_2026 = param1;
      }
      
      public function get hideWalls() : Boolean
      {
         return this.var_2028;
      }
      
      public function set hideWalls(param1:Boolean) : void
      {
         this.var_2028 = param1;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function set roomId(param1:int) : void
      {
         this._roomId = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get description() : String
      {
         return this.var_1524;
      }
      
      public function set description(param1:String) : void
      {
         this.var_1524 = param1;
      }
      
      public function get doorMode() : int
      {
         return this.var_2025;
      }
      
      public function set doorMode(param1:int) : void
      {
         this.var_2025 = param1;
      }
      
      public function get categoryId() : int
      {
         return this.var_1192;
      }
      
      public function set categoryId(param1:int) : void
      {
         this.var_1192 = param1;
      }
      
      public function get maximumVisitors() : int
      {
         return this.var_2024;
      }
      
      public function set maximumVisitors(param1:int) : void
      {
         this.var_2024 = param1;
      }
      
      public function get maximumVisitorsLimit() : int
      {
         return this.var_2552;
      }
      
      public function set maximumVisitorsLimit(param1:int) : void
      {
         this.var_2552 = param1;
      }
      
      public function get tags() : Array
      {
         return this.var_758;
      }
      
      public function set tags(param1:Array) : void
      {
         this.var_758 = param1;
      }
      
      public function get controllers() : Array
      {
         return this.var_2023;
      }
      
      public function set controllers(param1:Array) : void
      {
         this.var_2023 = param1;
      }
      
      public function get controllerCount() : int
      {
         return this.var_2553;
      }
      
      public function set controllerCount(param1:int) : void
      {
         this.var_2553 = param1;
      }
   }
}
