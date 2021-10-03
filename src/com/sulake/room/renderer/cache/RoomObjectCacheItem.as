package com.sulake.room.renderer.cache
{
   public class RoomObjectCacheItem
   {
       
      
      private var var_915:RoomObjectLocationCacheItem = null;
      
      private var var_184:RoomObjectSortableSpriteCacheItem = null;
      
      public function RoomObjectCacheItem(param1:String)
      {
         super();
         this.var_915 = new RoomObjectLocationCacheItem(param1);
         this.var_184 = new RoomObjectSortableSpriteCacheItem();
      }
      
      public function get location() : RoomObjectLocationCacheItem
      {
         return this.var_915;
      }
      
      public function get sprites() : RoomObjectSortableSpriteCacheItem
      {
         return this.var_184;
      }
      
      public function dispose() : void
      {
         if(this.var_915 != null)
         {
            this.var_915.dispose();
            this.var_915 = null;
         }
         if(this.var_184 != null)
         {
            this.var_184.dispose();
            this.var_184 = null;
         }
      }
   }
}
