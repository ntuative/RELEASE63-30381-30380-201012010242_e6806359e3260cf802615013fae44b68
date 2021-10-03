package com.sulake.habbo.communication.messages.parser.users
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.parser.inventory.pets.PetData;
   
   public class PetRespectNotificationParser implements IMessageParser
   {
       
      
      private var var_1892:int;
      
      private var var_2369:int;
      
      private var var_1197:PetData;
      
      public function PetRespectNotificationParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         this.var_1197 = null;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1892 = param1.readInteger();
         this.var_2369 = param1.readInteger();
         this.var_1197 = new PetData(param1);
         return true;
      }
      
      public function get petOwnerId() : int
      {
         return this.var_2369;
      }
      
      public function get respect() : int
      {
         return this.var_1892;
      }
      
      public function get petData() : PetData
      {
         return this.var_1197;
      }
   }
}
