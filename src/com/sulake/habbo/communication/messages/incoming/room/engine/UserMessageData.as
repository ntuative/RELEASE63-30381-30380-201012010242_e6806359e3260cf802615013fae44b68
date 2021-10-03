package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserMessageData
   {
      
      public static const const_1079:String = "M";
      
      public static const const_1479:String = "F";
       
      
      private var _id:int = 0;
      
      private var _x:Number = 0;
      
      private var var_165:Number = 0;
      
      private var var_164:Number = 0;
      
      private var var_242:int = 0;
      
      private var _name:String = "";
      
      private var var_2093:int = 0;
      
      private var var_764:String = "";
      
      private var var_598:String = "";
      
      private var var_2091:String = "";
      
      private var var_1901:int;
      
      private var var_2094:int = 0;
      
      private var var_2092:String = "";
      
      private var var_2088:int = 0;
      
      private var var_2090:int = 0;
      
      private var var_2089:String = "";
      
      private var var_155:Boolean = false;
      
      public function UserMessageData(param1:int)
      {
         super();
         this._id = param1;
      }
      
      public function setReadOnly() : void
      {
         this.var_155 = true;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get x() : Number
      {
         return this._x;
      }
      
      public function set x(param1:Number) : void
      {
         if(!this.var_155)
         {
            this._x = param1;
         }
      }
      
      public function get y() : Number
      {
         return this.var_165;
      }
      
      public function set y(param1:Number) : void
      {
         if(!this.var_155)
         {
            this.var_165 = param1;
         }
      }
      
      public function get z() : Number
      {
         return this.var_164;
      }
      
      public function set z(param1:Number) : void
      {
         if(!this.var_155)
         {
            this.var_164 = param1;
         }
      }
      
      public function get dir() : int
      {
         return this.var_242;
      }
      
      public function set dir(param1:int) : void
      {
         if(!this.var_155)
         {
            this.var_242 = param1;
         }
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         if(!this.var_155)
         {
            this._name = param1;
         }
      }
      
      public function get userType() : int
      {
         return this.var_2093;
      }
      
      public function set userType(param1:int) : void
      {
         if(!this.var_155)
         {
            this.var_2093 = param1;
         }
      }
      
      public function get sex() : String
      {
         return this.var_764;
      }
      
      public function set sex(param1:String) : void
      {
         if(!this.var_155)
         {
            this.var_764 = param1;
         }
      }
      
      public function get figure() : String
      {
         return this.var_598;
      }
      
      public function set figure(param1:String) : void
      {
         if(!this.var_155)
         {
            this.var_598 = param1;
         }
      }
      
      public function get custom() : String
      {
         return this.var_2091;
      }
      
      public function set custom(param1:String) : void
      {
         if(!this.var_155)
         {
            this.var_2091 = param1;
         }
      }
      
      public function get achievementScore() : int
      {
         return this.var_1901;
      }
      
      public function set achievementScore(param1:int) : void
      {
         if(!this.var_155)
         {
            this.var_1901 = param1;
         }
      }
      
      public function get webID() : int
      {
         return this.var_2094;
      }
      
      public function set webID(param1:int) : void
      {
         if(!this.var_155)
         {
            this.var_2094 = param1;
         }
      }
      
      public function get groupID() : String
      {
         return this.var_2092;
      }
      
      public function set groupID(param1:String) : void
      {
         if(!this.var_155)
         {
            this.var_2092 = param1;
         }
      }
      
      public function get groupStatus() : int
      {
         return this.var_2088;
      }
      
      public function set groupStatus(param1:int) : void
      {
         if(!this.var_155)
         {
            this.var_2088 = param1;
         }
      }
      
      public function get xp() : int
      {
         return this.var_2090;
      }
      
      public function set xp(param1:int) : void
      {
         if(!this.var_155)
         {
            this.var_2090 = param1;
         }
      }
      
      public function get subType() : String
      {
         return this.var_2089;
      }
      
      public function set subType(param1:String) : void
      {
         if(!this.var_155)
         {
            this.var_2089 = param1;
         }
      }
   }
}
