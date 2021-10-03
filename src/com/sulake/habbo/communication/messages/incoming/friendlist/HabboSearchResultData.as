package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class HabboSearchResultData
   {
       
      
      private var var_2138:int;
      
      private var var_1700:String;
      
      private var var_2359:String;
      
      private var var_2361:Boolean;
      
      private var var_2363:Boolean;
      
      private var var_2364:int;
      
      private var var_2362:String;
      
      private var var_2360:String;
      
      private var var_1520:String;
      
      public function HabboSearchResultData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2138 = param1.readInteger();
         this.var_1700 = param1.readString();
         this.var_2359 = param1.readString();
         this.var_2361 = param1.readBoolean();
         this.var_2363 = param1.readBoolean();
         param1.readString();
         this.var_2364 = param1.readInteger();
         this.var_2362 = param1.readString();
         this.var_2360 = param1.readString();
         this.var_1520 = param1.readString();
      }
      
      public function get avatarId() : int
      {
         return this.var_2138;
      }
      
      public function get avatarName() : String
      {
         return this.var_1700;
      }
      
      public function get avatarMotto() : String
      {
         return this.var_2359;
      }
      
      public function get isAvatarOnline() : Boolean
      {
         return this.var_2361;
      }
      
      public function get canFollow() : Boolean
      {
         return this.var_2363;
      }
      
      public function get avatarGender() : int
      {
         return this.var_2364;
      }
      
      public function get avatarFigure() : String
      {
         return this.var_2362;
      }
      
      public function get lastOnlineDate() : String
      {
         return this.var_2360;
      }
      
      public function get realName() : String
      {
         return this.var_1520;
      }
   }
}
