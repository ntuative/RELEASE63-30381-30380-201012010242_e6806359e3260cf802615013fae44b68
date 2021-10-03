package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageProductData
   {
      
      public static const const_80:String = "i";
      
      public static const const_87:String = "s";
      
      public static const const_257:String = "e";
       
      
      private var var_1746:String;
      
      private var var_2289:int;
      
      private var var_1345:String;
      
      private var var_1344:int;
      
      private var var_1748:int;
      
      public function CatalogPageMessageProductData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1746 = param1.readString();
         this.var_2289 = param1.readInteger();
         this.var_1345 = param1.readString();
         this.var_1344 = param1.readInteger();
         this.var_1748 = param1.readInteger();
      }
      
      public function get productType() : String
      {
         return this.var_1746;
      }
      
      public function get furniClassId() : int
      {
         return this.var_2289;
      }
      
      public function get extraParam() : String
      {
         return this.var_1345;
      }
      
      public function get productCount() : int
      {
         return this.var_1344;
      }
      
      public function get expiration() : int
      {
         return this.var_1748;
      }
   }
}
