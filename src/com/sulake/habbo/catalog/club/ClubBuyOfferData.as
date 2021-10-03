package com.sulake.habbo.catalog.club
{
   import com.sulake.habbo.catalog.IPurchasableOffer;
   import com.sulake.habbo.catalog.purse.Purse;
   import com.sulake.habbo.catalog.viewer.ICatalogPage;
   import com.sulake.habbo.catalog.viewer.IProductContainer;
   import com.sulake.habbo.catalog.viewer.Offer;
   
   public class ClubBuyOfferData implements IPurchasableOffer
   {
       
      
      private var _offerId:int;
      
      private var var_1443:String;
      
      private var var_1445:int;
      
      private var var_1944:Boolean;
      
      private var var_1939:Boolean;
      
      private var var_1941:int;
      
      private var var_1943:int;
      
      private var var_395:ICatalogPage;
      
      private var var_1940:int;
      
      private var var_1938:int;
      
      private var var_1942:int;
      
      private var var_1945:Boolean = false;
      
      public function ClubBuyOfferData(param1:int, param2:String, param3:int, param4:Boolean, param5:Boolean, param6:int, param7:int, param8:int, param9:int, param10:int)
      {
         super();
         this._offerId = param1;
         this.var_1443 = param2;
         this.var_1445 = param3;
         this.var_1944 = param4;
         this.var_1939 = param5;
         this.var_1941 = param6;
         this.var_1943 = param7;
         this.var_1940 = param8;
         this.var_1938 = param9;
         this.var_1942 = param10;
      }
      
      public function dispose() : void
      {
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
      
      public function get priceInActivityPoints() : int
      {
         return 0;
      }
      
      public function get activityPointType() : int
      {
         return Purse.const_478;
      }
      
      public function get priceInCredits() : int
      {
         return this.var_1445;
      }
      
      public function get page() : ICatalogPage
      {
         return this.var_395;
      }
      
      public function get priceType() : String
      {
         return Offer.const_487;
      }
      
      public function get productContainer() : IProductContainer
      {
         return null;
      }
      
      public function get localizationId() : String
      {
         return this.var_1443;
      }
      
      public function set page(param1:ICatalogPage) : void
      {
         this.var_395 = param1;
      }
      
      public function get upgradeHcPeriodToVip() : Boolean
      {
         return this.var_1945;
      }
      
      public function set upgradeHcPeriodToVip(param1:Boolean) : void
      {
         this.var_1945 = param1;
      }
   }
}
