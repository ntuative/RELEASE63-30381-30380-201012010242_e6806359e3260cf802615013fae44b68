package com.sulake.core.assets
{
   import com.sulake.core.assets.loaders.IAssetLoader;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.runtime.events.EventDispatcher;
   
   public class AssetLoaderStruct extends EventDispatcher implements IDisposable
   {
       
      
      private var var_770:IAssetLoader;
      
      private var var_1642:String;
      
      public function AssetLoaderStruct(param1:String, param2:IAssetLoader)
      {
         super();
         this.var_1642 = param1;
         this.var_770 = param2;
      }
      
      public function get assetName() : String
      {
         return this.var_1642;
      }
      
      public function get assetLoader() : IAssetLoader
      {
         return this.var_770;
      }
      
      override public function dispose() : void
      {
         if(!disposed)
         {
            if(this.var_770 != null)
            {
               if(!this.var_770.disposed)
               {
                  this.var_770.dispose();
                  this.var_770 = null;
               }
            }
            super.dispose();
         }
      }
   }
}
