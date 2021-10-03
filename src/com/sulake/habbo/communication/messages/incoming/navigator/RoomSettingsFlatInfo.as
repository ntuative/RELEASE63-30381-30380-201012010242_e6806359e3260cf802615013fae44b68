package com.sulake.habbo.communication.messages.incoming.navigator
{
   public class RoomSettingsFlatInfo
   {
      
      public static const const_446:int = 0;
      
      public static const const_182:int = 1;
      
      public static const const_113:int = 2;
      
      public static const const_664:Array = ["open","closed","password"];
       
      
      private var var_2340:Boolean;
      
      private var var_2025:int;
      
      private var _id:int;
      
      private var _ownerName:String;
      
      private var _type:String;
      
      private var _name:String;
      
      private var var_1524:String;
      
      private var var_2339:Boolean;
      
      private var var_2192:Boolean;
      
      private var var_2338:Boolean;
      
      private var _password:String;
      
      public function RoomSettingsFlatInfo()
      {
         super();
      }
      
      public function get allowFurniMoving() : Boolean
      {
         return this.var_2340;
      }
      
      public function get doorMode() : int
      {
         return this.var_2025;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get description() : String
      {
         return this.var_1524;
      }
      
      public function get showOwnerName() : Boolean
      {
         return this.var_2339;
      }
      
      public function get allowTrading() : Boolean
      {
         return this.var_2192;
      }
      
      public function get categoryAlertKey() : Boolean
      {
         return this.var_2338;
      }
      
      public function get password() : String
      {
         return this._password;
      }
      
      public function set allowFurniMoving(param1:Boolean) : void
      {
         this.var_2340 = param1;
      }
      
      public function set doorMode(param1:int) : void
      {
         this.var_2025 = param1;
      }
      
      public function set id(param1:int) : void
      {
         this._id = param1;
      }
      
      public function set ownerName(param1:String) : void
      {
         this._ownerName = param1;
      }
      
      public function set type(param1:String) : void
      {
         this._type = param1;
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function set description(param1:String) : void
      {
         this.var_1524 = param1;
      }
      
      public function set showOwnerName(param1:Boolean) : void
      {
         this.var_2339 = param1;
      }
      
      public function set allowTrading(param1:Boolean) : void
      {
         this.var_2192 = param1;
      }
      
      public function set categoryAlertKey(param1:Boolean) : void
      {
         this.var_2338 = param1;
      }
      
      public function set password(param1:String) : void
      {
         this._password = param1;
      }
   }
}
