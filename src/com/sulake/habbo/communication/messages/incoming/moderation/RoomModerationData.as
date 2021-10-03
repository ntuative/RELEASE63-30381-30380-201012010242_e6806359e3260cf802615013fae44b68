package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class RoomModerationData implements IDisposable
   {
       
      
      private var var_317:int;
      
      private var var_2045:int;
      
      private var var_2046:Boolean;
      
      private var var_1895:int;
      
      private var _ownerName:String;
      
      private var var_101:RoomData;
      
      private var var_722:RoomData;
      
      private var _disposed:Boolean;
      
      public function RoomModerationData(param1:IMessageDataWrapper)
      {
         super();
         this.var_317 = param1.readInteger();
         this.var_2045 = param1.readInteger();
         this.var_2046 = param1.readBoolean();
         this.var_1895 = param1.readInteger();
         this._ownerName = param1.readString();
         this.var_101 = new RoomData(param1);
         this.var_722 = new RoomData(param1);
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         if(this.var_101 != null)
         {
            this.var_101.dispose();
            this.var_101 = null;
         }
         if(this.var_722 != null)
         {
            this.var_722.dispose();
            this.var_722 = null;
         }
      }
      
      public function get flatId() : int
      {
         return this.var_317;
      }
      
      public function get userCount() : int
      {
         return this.var_2045;
      }
      
      public function get ownerInRoom() : Boolean
      {
         return this.var_2046;
      }
      
      public function get ownerId() : int
      {
         return this.var_1895;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get room() : RoomData
      {
         return this.var_101;
      }
      
      public function get event() : RoomData
      {
         return this.var_722;
      }
   }
}
