package com.sulake.habbo.communication.messages.parser.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetLevelNotificationParser implements IMessageParser
   {
       
      
      private var var_1614:int;
      
      private var var_2128:String;
      
      private var var_1681:int;
      
      private var var_598:String;
      
      private var var_1303:int;
      
      public function PetLevelNotificationParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1614 = param1.readInteger();
         this.var_2128 = param1.readString();
         this.var_1681 = param1.readInteger();
         this.var_598 = param1.readString();
         this.var_1303 = param1.readInteger();
         return true;
      }
      
      public function get petId() : int
      {
         return this.var_1614;
      }
      
      public function get petName() : String
      {
         return this.var_2128;
      }
      
      public function get level() : int
      {
         return this.var_1681;
      }
      
      public function get figure() : String
      {
         return this.var_598;
      }
      
      public function get petType() : int
      {
         return this.var_1303;
      }
   }
}
