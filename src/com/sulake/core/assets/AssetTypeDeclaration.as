package com.sulake.core.assets
{
   public class AssetTypeDeclaration
   {
       
      
      private var var_2533:String;
      
      private var var_2532:Class;
      
      private var var_2531:Class;
      
      private var var_1788:Array;
      
      public function AssetTypeDeclaration(param1:String, param2:Class, param3:Class, ... rest)
      {
         super();
         this.var_2533 = param1;
         this.var_2532 = param2;
         this.var_2531 = param3;
         if(rest == null)
         {
            this.var_1788 = new Array();
         }
         else
         {
            this.var_1788 = rest;
         }
      }
      
      public function get mimeType() : String
      {
         return this.var_2533;
      }
      
      public function get assetClass() : Class
      {
         return this.var_2532;
      }
      
      public function get loaderClass() : Class
      {
         return this.var_2531;
      }
      
      public function get fileTypes() : Array
      {
         return this.var_1788;
      }
   }
}
