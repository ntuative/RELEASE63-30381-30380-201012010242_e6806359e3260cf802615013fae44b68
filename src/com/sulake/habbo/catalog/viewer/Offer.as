package com.sulake.habbo.catalog.viewer
{
   import com.sulake.habbo.catalog.IPurchasableOffer;
   import com.sulake.habbo.communication.messages.incoming.catalog.CatalogPageMessageOfferData;
   import com.sulake.habbo.communication.messages.incoming.catalog.CatalogPageMessageProductData;
   import com.sulake.habbo.session.furniture.IFurnitureData;
   import com.sulake.habbo.session.product.IProductData;
   
   public class Offer implements IPurchasableOffer
   {
      
      public static const const_1449:String = "pricing_model_unknown";
      
      public static const const_425:String = "pricing_model_single";
      
      public static const const_455:String = "pricing_model_multi";
      
      public static const const_437:String = "pricing_model_bundle";
      
      public static const const_1081:String = "price_type_none";
      
      public static const const_487:String = "price_type_credits";
      
      public static const const_725:String = "price_type_activitypoints";
      
      public static const const_578:String = "price_type_credits_and_activitypoints";
       
      
      private var var_717:String;
      
      private var var_1107:String;
      
      private var _offerId:int;
      
      private var var_1740:String;
      
      private var var_1105:int;
      
      private var var_1106:int;
      
      private var var_1674:int;
      
      private var var_395:ICatalogPage;
      
      private var var_716:IProductContainer;
      
      private var var_2450:int;
      
      public function Offer(param1:CatalogPageMessageOfferData, param2:ICatalogPage)
      {
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         super();
         this._offerId = param1.offerId;
         this.var_1740 = param1.localizationId;
         this.var_1105 = param1.priceInCredits;
         this.var_1106 = param1.priceInActivityPoints;
         this.var_1674 = param1.activityPointType;
         this.var_395 = param2;
         var _loc3_:Array = new Array();
         for each(_loc4_ in param1.products)
         {
            _loc5_ = param2.viewer.catalog.getProductData(param1.localizationId);
            _loc6_ = param2.viewer.catalog.getFurnitureData(_loc4_.furniClassId,_loc4_.productType);
            _loc7_ = new Product(_loc4_,_loc5_,_loc6_);
            _loc3_.push(_loc7_);
         }
         this.analyzePricingModel(_loc3_);
         this.analyzePriceType();
         this.createProductContainer(_loc3_);
      }
      
      public function get page() : ICatalogPage
      {
         return this.var_395;
      }
      
      public function get offerId() : int
      {
         return this._offerId;
      }
      
      public function get localizationId() : String
      {
         return this.var_1740;
      }
      
      public function get priceInCredits() : int
      {
         return this.var_1105;
      }
      
      public function get priceInActivityPoints() : int
      {
         return this.var_1106;
      }
      
      public function get activityPointType() : int
      {
         return this.var_1674;
      }
      
      public function get productContainer() : IProductContainer
      {
         return this.var_716;
      }
      
      public function get pricingModel() : String
      {
         return this.var_717;
      }
      
      public function get priceType() : String
      {
         return this.var_1107;
      }
      
      public function get previewCallbackId() : int
      {
         return this.var_2450;
      }
      
      public function set previewCallbackId(param1:int) : void
      {
         this.var_2450 = param1;
      }
      
      public function dispose() : void
      {
         this._offerId = 0;
         this.var_1740 = "";
         this.var_1105 = 0;
         this.var_1106 = 0;
         this.var_1674 = 0;
         this.var_395 = null;
         if(this.var_716 != null)
         {
            this.var_716.dispose();
            this.var_716 = null;
         }
      }
      
      private function createProductContainer(param1:Array) : void
      {
         switch(this.var_717)
         {
            case const_425:
               this.var_716 = new SingleProductContainer(this,param1);
               break;
            case const_455:
               this.var_716 = new MultiProductContainer(this,param1);
               break;
            case const_437:
               this.var_716 = new BundleProductContainer(this,param1);
               break;
            default:
               Logger.log("[Offer] Unknown pricing model" + this.var_717);
         }
      }
      
      private function analyzePricingModel(param1:Array) : void
      {
         var _loc2_:* = null;
         if(param1.length == 1)
         {
            _loc2_ = param1[0];
            if(_loc2_.productCount == 1)
            {
               this.var_717 = const_425;
            }
            else
            {
               this.var_717 = const_455;
            }
         }
         else if(param1.length > 1)
         {
            this.var_717 = const_437;
         }
         else
         {
            this.var_717 = const_1449;
         }
      }
      
      private function analyzePriceType() : void
      {
         if(this.var_1105 > 0 && this.var_1106 > 0)
         {
            this.var_1107 = const_578;
         }
         else if(this.var_1105 > 0)
         {
            this.var_1107 = const_487;
         }
         else if(this.var_1106 > 0)
         {
            this.var_1107 = const_725;
         }
         else
         {
            this.var_1107 = const_1081;
         }
      }
   }
}
