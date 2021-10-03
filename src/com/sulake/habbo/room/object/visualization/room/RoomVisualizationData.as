package com.sulake.habbo.room.object.visualization.room
{
   import com.sulake.habbo.room.object.visualization.room.mask.PlaneMaskManager;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.IPlaneRasterizer;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.animated.LandscapeRasterizer;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.basic.FloorRasterizer;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.basic.WallAdRasterizer;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.basic.WallRasterizer;
   import com.sulake.room.object.visualization.IRoomObjectVisualizationData;
   import com.sulake.room.object.visualization.utils.IGraphicAssetCollection;
   
   public class RoomVisualizationData implements IRoomObjectVisualizationData
   {
       
      
      private var var_442:WallRasterizer;
      
      private var var_444:FloorRasterizer;
      
      private var var_662:WallAdRasterizer;
      
      private var var_443:LandscapeRasterizer;
      
      private var var_663:PlaneMaskManager;
      
      private var var_628:Boolean = false;
      
      public function RoomVisualizationData()
      {
         super();
         this.var_442 = new WallRasterizer();
         this.var_444 = new FloorRasterizer();
         this.var_662 = new WallAdRasterizer();
         this.var_443 = new LandscapeRasterizer();
         this.var_663 = new PlaneMaskManager();
      }
      
      public function get initialized() : Boolean
      {
         return this.var_628;
      }
      
      public function get floorRasterizer() : IPlaneRasterizer
      {
         return this.var_444;
      }
      
      public function get wallRasterizer() : IPlaneRasterizer
      {
         return this.var_442;
      }
      
      public function get wallAdRasterizr() : WallAdRasterizer
      {
         return this.var_662;
      }
      
      public function get landscapeRasterizer() : IPlaneRasterizer
      {
         return this.var_443;
      }
      
      public function get maskManager() : PlaneMaskManager
      {
         return this.var_663;
      }
      
      public function dispose() : void
      {
         if(this.var_442 != null)
         {
            this.var_442.dispose();
            this.var_442 = null;
         }
         if(this.var_444 != null)
         {
            this.var_444.dispose();
            this.var_444 = null;
         }
         if(this.var_662 != null)
         {
            this.var_662.dispose();
            this.var_662 = null;
         }
         if(this.var_443 != null)
         {
            this.var_443.dispose();
            this.var_443 = null;
         }
         if(this.var_663 != null)
         {
            this.var_663.dispose();
            this.var_663 = null;
         }
      }
      
      public function clearCache() : void
      {
         if(this.var_442 != null)
         {
            this.var_442.clearCache();
         }
         if(this.var_444 != null)
         {
            this.var_444.clearCache();
         }
         if(this.var_443 != null)
         {
            this.var_443.clearCache();
         }
      }
      
      public function initialize(param1:XML) : Boolean
      {
         var _loc7_:* = null;
         var _loc8_:* = null;
         var _loc9_:* = null;
         var _loc10_:* = null;
         var _loc11_:* = null;
         this.reset();
         if(param1 == null)
         {
            return false;
         }
         var _loc2_:XMLList = param1.wallData;
         if(_loc2_.length() > 0)
         {
            _loc7_ = _loc2_[0];
            this.var_442.initialize(_loc7_);
         }
         var _loc3_:XMLList = param1.floorData;
         if(_loc3_.length() > 0)
         {
            _loc8_ = _loc3_[0];
            this.var_444.initialize(_loc8_);
         }
         var _loc4_:XMLList = param1.wallAdData;
         if(_loc4_.length() > 0)
         {
            _loc9_ = _loc4_[0];
            this.var_662.initialize(_loc9_);
         }
         var _loc5_:XMLList = param1.landscapeData;
         if(_loc5_.length() > 0)
         {
            _loc10_ = _loc5_[0];
            this.var_443.initialize(_loc10_);
         }
         var _loc6_:XMLList = param1.maskData;
         if(_loc6_.length() > 0)
         {
            _loc11_ = _loc6_[0];
            this.var_663.initialize(_loc11_);
         }
         return true;
      }
      
      public function initializeAssetCollection(param1:IGraphicAssetCollection) : void
      {
         if(this.var_628)
         {
            return;
         }
         this.var_442.initializeAssetCollection(param1);
         this.var_444.initializeAssetCollection(param1);
         this.var_662.initializeAssetCollection(param1);
         this.var_443.initializeAssetCollection(param1);
         this.var_663.initializeAssetCollection(param1);
         this.var_628 = true;
      }
      
      protected function reset() : void
      {
      }
   }
}
