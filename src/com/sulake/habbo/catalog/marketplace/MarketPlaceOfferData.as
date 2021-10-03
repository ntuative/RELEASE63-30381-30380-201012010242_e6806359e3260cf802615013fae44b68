package com.sulake.habbo.catalog.marketplace
{
   import flash.display.BitmapData;
   
   public class MarketPlaceOfferData
   {
       
      
      private var _offerId:int;
      
      private var _furniId:int;
      
      private var var_2331:int;
      
      private var var_1867:String;
      
      private var var_1445:int;
      
      private var var_2325:int;
      
      private var var_2551:int;
      
      private var var_347:int;
      
      private var var_2330:int = -1;
      
      private var var_1810:int;
      
      private var var_38:BitmapData;
      
      public function MarketPlaceOfferData(param1:int, param2:int, param3:int, param4:String, param5:int, param6:int, param7:int, param8:int = -1)
      {
         super();
         this._offerId = param1;
         this._furniId = param2;
         this.var_2331 = param3;
         this.var_1867 = param4;
         this.var_1445 = param5;
         this.var_347 = param6;
         this.var_2325 = param7;
         this.var_1810 = param8;
      }
      
      public function dispose() : void
      {
         if(this.var_38)
         {
            this.var_38.dispose();
            this.var_38 = null;
         }
      }
      
      public function get offerId() : int
      {
         return this._offerId;
      }
      
      public function get furniId() : int
      {
         return this._furniId;
      }
      
      public function get furniType() : int
      {
         return this.var_2331;
      }
      
      public function get stuffData() : String
      {
         return this.var_1867;
      }
      
      public function get price() : int
      {
         return this.var_1445;
      }
      
      public function get averagePrice() : int
      {
         return this.var_2325;
      }
      
      public function get image() : BitmapData
      {
         return this.var_38;
      }
      
      public function set image(param1:BitmapData) : void
      {
         if(this.var_38 != null)
         {
            this.var_38.dispose();
         }
         this.var_38 = param1;
      }
      
      public function set imageCallback(param1:int) : void
      {
         this.var_2551 = param1;
      }
      
      public function get imageCallback() : int
      {
         return this.var_2551;
      }
      
      public function get status() : int
      {
         return this.var_347;
      }
      
      public function get timeLeftMinutes() : int
      {
         return this.var_2330;
      }
      
      public function set timeLeftMinutes(param1:int) : void
      {
         this.var_2330 = param1;
      }
      
      public function set price(param1:int) : void
      {
         this.var_1445 = param1;
      }
      
      public function set offerId(param1:int) : void
      {
         this._offerId = param1;
      }
      
      public function get offerCount() : int
      {
         return this.var_1810;
      }
      
      public function set offerCount(param1:int) : void
      {
         this.var_1810 = param1;
      }
   }
}
