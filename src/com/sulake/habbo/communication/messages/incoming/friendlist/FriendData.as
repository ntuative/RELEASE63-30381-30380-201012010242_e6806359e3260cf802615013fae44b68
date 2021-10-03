package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FriendData
   {
       
      
      private var _id:int;
      
      private var _name:String;
      
      private var var_883:int;
      
      private var var_707:Boolean;
      
      private var var_1519:Boolean;
      
      private var var_598:String;
      
      private var var_1192:int;
      
      private var var_1518:String;
      
      private var var_1517:String;
      
      private var var_1520:String;
      
      public function FriendData(param1:IMessageDataWrapper)
      {
         super();
         this._id = param1.readInteger();
         this._name = param1.readString();
         this.var_883 = param1.readInteger();
         this.var_707 = param1.readBoolean();
         this.var_1519 = param1.readBoolean();
         this.var_598 = param1.readString();
         this.var_1192 = param1.readInteger();
         this.var_1518 = param1.readString();
         this.var_1517 = param1.readString();
         this.var_1520 = param1.readString();
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get gender() : int
      {
         return this.var_883;
      }
      
      public function get online() : Boolean
      {
         return this.var_707;
      }
      
      public function get followingAllowed() : Boolean
      {
         return this.var_1519;
      }
      
      public function get figure() : String
      {
         return this.var_598;
      }
      
      public function get categoryId() : int
      {
         return this.var_1192;
      }
      
      public function get motto() : String
      {
         return this.var_1518;
      }
      
      public function get lastAccess() : String
      {
         return this.var_1517;
      }
      
      public function get realName() : String
      {
         return this.var_1520;
      }
   }
}
