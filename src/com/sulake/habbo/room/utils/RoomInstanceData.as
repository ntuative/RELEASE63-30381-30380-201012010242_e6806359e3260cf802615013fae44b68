package com.sulake.habbo.room.utils
{
   public class RoomInstanceData
   {
       
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      private var var_625:TileHeightMap = null;
      
      private var var_930:LegacyWallGeometry = null;
      
      private var var_931:RoomCamera = null;
      
      private var var_624:SelectedRoomObjectData = null;
      
      private var var_623:SelectedRoomObjectData = null;
      
      private var var_1885:String = null;
      
      public function RoomInstanceData(param1:int, param2:int)
      {
         super();
         this._roomId = param1;
         this._roomCategory = param2;
         this.var_930 = new LegacyWallGeometry();
         this.var_931 = new RoomCamera();
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function get roomCategory() : int
      {
         return this._roomCategory;
      }
      
      public function get tileHeightMap() : TileHeightMap
      {
         return this.var_625;
      }
      
      public function set tileHeightMap(param1:TileHeightMap) : void
      {
         if(this.var_625 != null)
         {
            this.var_625.dispose();
         }
         this.var_625 = param1;
      }
      
      public function get legacyGeometry() : LegacyWallGeometry
      {
         return this.var_930;
      }
      
      public function get roomCamera() : RoomCamera
      {
         return this.var_931;
      }
      
      public function get worldType() : String
      {
         return this.var_1885;
      }
      
      public function set worldType(param1:String) : void
      {
         this.var_1885 = param1;
      }
      
      public function get selectedObject() : SelectedRoomObjectData
      {
         return this.var_624;
      }
      
      public function set selectedObject(param1:SelectedRoomObjectData) : void
      {
         if(this.var_624 != null)
         {
            this.var_624.dispose();
         }
         this.var_624 = param1;
      }
      
      public function get placedObject() : SelectedRoomObjectData
      {
         return this.var_623;
      }
      
      public function set placedObject(param1:SelectedRoomObjectData) : void
      {
         if(this.var_623 != null)
         {
            this.var_623.dispose();
         }
         this.var_623 = param1;
      }
      
      public function dispose() : void
      {
         if(this.var_625 != null)
         {
            this.var_625.dispose();
            this.var_625 = null;
         }
         if(this.var_930 != null)
         {
            this.var_930.dispose();
            this.var_930 = null;
         }
         if(this.var_931 != null)
         {
            this.var_931.dispose();
            this.var_931 = null;
         }
         if(this.var_624 != null)
         {
            this.var_624.dispose();
            this.var_624 = null;
         }
         if(this.var_623 != null)
         {
            this.var_623.dispose();
            this.var_623 = null;
         }
      }
   }
}
