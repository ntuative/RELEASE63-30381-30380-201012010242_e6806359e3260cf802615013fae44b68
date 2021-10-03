package com.sulake.core.assets.loaders
{
   import flash.events.Event;
   
   public class AssetLoaderEvent extends Event
   {
      
      public static const const_30:String = "AssetLoaderEventComplete";
      
      public static const const_1024:String = "AssetLoaderEventProgress";
      
      public static const const_929:String = "AssetLoaderEventUnload";
      
      public static const const_1106:String = "AssetLoaderEventStatus";
      
      public static const const_44:String = "AssetLoaderEventError";
      
      public static const const_895:String = "AssetLoaderEventOpen";
       
      
      private var var_347:int;
      
      public function AssetLoaderEvent(param1:String, param2:int)
      {
         this.var_347 = param2;
         super(param1,false,false);
      }
      
      public function get status() : int
      {
         return this.var_347;
      }
      
      override public function clone() : Event
      {
         return new AssetLoaderEvent(type,this.var_347);
      }
   }
}
