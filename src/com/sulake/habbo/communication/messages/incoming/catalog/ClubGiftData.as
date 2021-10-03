package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ClubGiftData
   {
       
      
      private var _offerId:int;
      
      private var var_2398:Boolean;
      
      private var var_1924:Boolean;
      
      private var var_2399:int;
      
      public function ClubGiftData(param1:IMessageDataWrapper)
      {
         super();
         this._offerId = param1.readInteger();
         this.var_2398 = param1.readBoolean();
         this.var_2399 = param1.readInteger();
         this.var_1924 = param1.readBoolean();
      }
      
      public function get offerId() : int
      {
         return this._offerId;
      }
      
      public function get isVip() : Boolean
      {
         return this.var_2398;
      }
      
      public function get isSelectable() : Boolean
      {
         return this.var_1924;
      }
      
      public function get daysRequired() : int
      {
         return this.var_2399;
      }
   }
}
