package com.sulake.habbo.communication.messages.outgoing.room.furniture
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class RoomDimmerSavePresetMessageComposer implements IMessageComposer
   {
       
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      private var var_1878:int;
      
      private var var_1880:int;
      
      private var var_1882:String;
      
      private var var_1879:int;
      
      private var var_1881:Boolean;
      
      public function RoomDimmerSavePresetMessageComposer(param1:int, param2:int, param3:String, param4:int, param5:Boolean, param6:int = 0, param7:int = 0)
      {
         super();
         this._roomId = param6;
         this._roomCategory = param7;
         this.var_1878 = param1;
         this.var_1880 = param2;
         this.var_1882 = param3;
         this.var_1879 = param4;
         this.var_1881 = param5;
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_1878,this.var_1880,this.var_1882,this.var_1879,int(this.var_1881)];
      }
      
      public function dispose() : void
      {
      }
   }
}
