package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class OfficialRoomEntryData implements IDisposable
   {
      
      public static const const_1089:int = 1;
      
      public static const const_601:int = 2;
      
      public static const const_643:int = 3;
      
      public static const const_1398:int = 4;
       
      
      private var _index:int;
      
      private var var_2185:String;
      
      private var var_2188:String;
      
      private var var_2187:Boolean;
      
      private var var_2186:String;
      
      private var var_844:String;
      
      private var var_2189:int;
      
      private var var_2045:int;
      
      private var _type:int;
      
      private var var_1996:String;
      
      private var var_814:GuestRoomData;
      
      private var var_813:PublicRoomData;
      
      private var _open:Boolean;
      
      private var _disposed:Boolean;
      
      public function OfficialRoomEntryData(param1:IMessageDataWrapper)
      {
         super();
         this._index = param1.readInteger();
         this.var_2185 = param1.readString();
         this.var_2188 = param1.readString();
         this.var_2187 = param1.readInteger() == 1;
         this.var_2186 = param1.readString();
         this.var_844 = param1.readString();
         this.var_2189 = param1.readInteger();
         this.var_2045 = param1.readInteger();
         this._type = param1.readInteger();
         if(this._type == const_1089)
         {
            this.var_1996 = param1.readString();
         }
         else if(this._type == const_643)
         {
            this.var_813 = new PublicRoomData(param1);
         }
         else if(this._type == const_601)
         {
            this.var_814 = new GuestRoomData(param1);
         }
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         if(this.var_814 != null)
         {
            this.var_814.dispose();
            this.var_814 = null;
         }
         if(this.var_813 != null)
         {
            this.var_813.dispose();
            this.var_813 = null;
         }
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get index() : int
      {
         return this._index;
      }
      
      public function get popupCaption() : String
      {
         return this.var_2185;
      }
      
      public function get popupDesc() : String
      {
         return this.var_2188;
      }
      
      public function get showDetails() : Boolean
      {
         return this.var_2187;
      }
      
      public function get picText() : String
      {
         return this.var_2186;
      }
      
      public function get picRef() : String
      {
         return this.var_844;
      }
      
      public function get folderId() : int
      {
         return this.var_2189;
      }
      
      public function get tag() : String
      {
         return this.var_1996;
      }
      
      public function get userCount() : int
      {
         return this.var_2045;
      }
      
      public function get guestRoomData() : GuestRoomData
      {
         return this.var_814;
      }
      
      public function get publicRoomData() : PublicRoomData
      {
         return this.var_813;
      }
      
      public function get open() : Boolean
      {
         return this._open;
      }
      
      public function toggleOpen() : void
      {
         this._open = !this._open;
      }
      
      public function get maxUsers() : int
      {
         if(this.type == const_1089)
         {
            return 0;
         }
         if(this.type == const_601)
         {
            return this.var_814.maxUserCount;
         }
         if(this.type == const_643)
         {
            return this.var_813.maxUsers;
         }
         return 0;
      }
   }
}
