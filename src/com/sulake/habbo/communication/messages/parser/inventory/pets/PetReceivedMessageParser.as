package com.sulake.habbo.communication.messages.parser.inventory.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetReceivedMessageParser implements IMessageParser
   {
       
      
      private var var_1549:Boolean;
      
      private var var_997:PetData;
      
      public function PetReceivedMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1549 = param1.readBoolean();
         this.var_997 = new PetData(param1);
         Logger.log("Got PetReceived: " + this.var_1549 + ", " + this.var_997.id + ", " + this.var_997.name + ", " + this.pet.figure + ", " + this.var_997.type);
         return true;
      }
      
      public function get boughtAsGift() : Boolean
      {
         return this.var_1549;
      }
      
      public function get pet() : PetData
      {
         return this.var_997;
      }
   }
}
