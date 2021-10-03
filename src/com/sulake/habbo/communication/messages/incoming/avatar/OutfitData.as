package com.sulake.habbo.communication.messages.incoming.avatar
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class OutfitData
   {
       
      
      private var var_1773:int;
      
      private var var_2388:String;
      
      private var var_883:String;
      
      public function OutfitData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1773 = param1.readInteger();
         this.var_2388 = param1.readString();
         this.var_883 = param1.readString();
      }
      
      public function get slotId() : int
      {
         return this.var_1773;
      }
      
      public function get figureString() : String
      {
         return this.var_2388;
      }
      
      public function get gender() : String
      {
         return this.var_883;
      }
   }
}
