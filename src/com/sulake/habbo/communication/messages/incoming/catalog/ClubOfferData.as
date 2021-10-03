package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ClubOfferData
   {
       
      
      private var _offerId:int;
      
      private var var_1443:String;
      
      private var var_1445:int;
      
      private var var_1944:Boolean;
      
      private var var_1939:Boolean;
      
      private var var_1941:int;
      
      private var var_1943:int;
      
      private var var_1940:int;
      
      private var var_1938:int;
      
      private var var_1942:int;
      
      public function ClubOfferData(param1:IMessageDataWrapper)
      {
         super();
         this._offerId = param1.readInteger();
         this.var_1443 = param1.readString();
         this.var_1445 = param1.readInteger();
         this.var_1944 = param1.readBoolean();
         this.var_1939 = param1.readBoolean();
         this.var_1941 = param1.readInteger();
         this.var_1943 = param1.readInteger();
         this.var_1940 = param1.readInteger();
         this.var_1938 = param1.readInteger();
         this.var_1942 = param1.readInteger();
      }
      
      public function get offerId() : int
      {
         return this._offerId;
      }
      
      public function get productCode() : String
      {
         return this.var_1443;
      }
      
      public function get price() : int
      {
         return this.var_1445;
      }
      
      public function get upgrade() : Boolean
      {
         return this.var_1944;
      }
      
      public function get vip() : Boolean
      {
         return this.var_1939;
      }
      
      public function get periods() : int
      {
         return this.var_1941;
      }
      
      public function get daysLeftAfterPurchase() : int
      {
         return this.var_1943;
      }
      
      public function get year() : int
      {
         return this.var_1940;
      }
      
      public function get month() : int
      {
         return this.var_1938;
      }
      
      public function get day() : int
      {
         return this.var_1942;
      }
   }
}
