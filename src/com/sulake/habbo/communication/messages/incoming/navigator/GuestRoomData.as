package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class GuestRoomData implements IDisposable
   {
       
      
      private var var_317:int;
      
      private var var_722:Boolean;
      
      private var var_801:String;
      
      private var _ownerName:String;
      
      private var var_2025:int;
      
      private var var_2045:int;
      
      private var var_2191:int;
      
      private var var_1524:String;
      
      private var var_2190:int;
      
      private var var_2192:Boolean;
      
      private var var_432:int;
      
      private var var_1192:int;
      
      private var var_2194:String;
      
      private var var_758:Array;
      
      private var var_2193:RoomThumbnailData;
      
      private var var_2029:Boolean;
      
      private var _disposed:Boolean;
      
      public function GuestRoomData(param1:IMessageDataWrapper)
      {
         var _loc4_:* = null;
         this.var_758 = new Array();
         super();
         this.var_317 = param1.readInteger();
         this.var_722 = param1.readBoolean();
         this.var_801 = param1.readString();
         this._ownerName = param1.readString();
         this.var_2025 = param1.readInteger();
         this.var_2045 = param1.readInteger();
         this.var_2191 = param1.readInteger();
         this.var_1524 = param1.readString();
         this.var_2190 = param1.readInteger();
         this.var_2192 = param1.readBoolean();
         this.var_432 = param1.readInteger();
         this.var_1192 = param1.readInteger();
         this.var_2194 = param1.readString();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = param1.readString();
            this.var_758.push(_loc4_);
            _loc3_++;
         }
         this.var_2193 = new RoomThumbnailData(param1);
         this.var_2029 = param1.readBoolean();
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         this.var_758 = null;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get flatId() : int
      {
         return this.var_317;
      }
      
      public function get event() : Boolean
      {
         return this.var_722;
      }
      
      public function get roomName() : String
      {
         return this.var_801;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get doorMode() : int
      {
         return this.var_2025;
      }
      
      public function get userCount() : int
      {
         return this.var_2045;
      }
      
      public function get maxUserCount() : int
      {
         return this.var_2191;
      }
      
      public function get description() : String
      {
         return this.var_1524;
      }
      
      public function get srchSpecPrm() : int
      {
         return this.var_2190;
      }
      
      public function get allowTrading() : Boolean
      {
         return this.var_2192;
      }
      
      public function get score() : int
      {
         return this.var_432;
      }
      
      public function get categoryId() : int
      {
         return this.var_1192;
      }
      
      public function get eventCreationTime() : String
      {
         return this.var_2194;
      }
      
      public function get tags() : Array
      {
         return this.var_758;
      }
      
      public function get thumbnail() : RoomThumbnailData
      {
         return this.var_2193;
      }
      
      public function get allowPets() : Boolean
      {
         return this.var_2029;
      }
   }
}
