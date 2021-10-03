package com.sulake.habbo.communication.messages.parser.users
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ScrSendUserInfoMessageParser implements IMessageParser
   {
      
      public static const const_1726:int = 1;
      
      public static const const_1328:int = 2;
       
      
      private var var_857:String;
      
      private var var_2433:int;
      
      private var var_2435:int;
      
      private var var_2439:int;
      
      private var var_2440:int;
      
      private var var_2434:Boolean;
      
      private var var_1896:Boolean;
      
      private var var_1899:int;
      
      private var var_1897:int;
      
      private var var_2437:Boolean;
      
      private var var_2438:int;
      
      private var var_2436:int;
      
      public function ScrSendUserInfoMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_857 = param1.readString();
         this.var_2433 = param1.readInteger();
         this.var_2435 = param1.readInteger();
         this.var_2439 = param1.readInteger();
         this.var_2440 = param1.readInteger();
         this.var_2434 = param1.readBoolean();
         this.var_1896 = param1.readBoolean();
         this.var_1899 = param1.readInteger();
         this.var_1897 = param1.readInteger();
         this.var_2437 = param1.readBoolean();
         this.var_2438 = param1.readInteger();
         this.var_2436 = param1.readInteger();
         return true;
      }
      
      public function get productName() : String
      {
         return this.var_857;
      }
      
      public function get method_2() : int
      {
         return this.var_2433;
      }
      
      public function get memberPeriods() : int
      {
         return this.var_2435;
      }
      
      public function get periodsSubscribedAhead() : int
      {
         return this.var_2439;
      }
      
      public function get responseType() : int
      {
         return this.var_2440;
      }
      
      public function get hasEverBeenMember() : Boolean
      {
         return this.var_2434;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_1896;
      }
      
      public function get pastClubDays() : int
      {
         return this.var_1899;
      }
      
      public function get pastVipDays() : int
      {
         return this.var_1897;
      }
      
      public function get isShowBasicPromo() : Boolean
      {
         return this.var_2437;
      }
      
      public function get basicNormalPrice() : int
      {
         return this.var_2438;
      }
      
      public function get basicPromoPrice() : int
      {
         return this.var_2436;
      }
   }
}
