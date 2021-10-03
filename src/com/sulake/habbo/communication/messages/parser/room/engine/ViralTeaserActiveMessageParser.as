package com.sulake.habbo.communication.messages.parser.room.engine
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.room.engine.ObjectMessageData;
   
   public class ViralTeaserActiveMessageParser implements IMessageParser
   {
       
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      private var _data:ObjectMessageData;
      
      public function ViralTeaserActiveMessageParser()
      {
         super();
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function get roomCategory() : int
      {
         return this._roomCategory;
      }
      
      public function flush() : Boolean
      {
         this._data = null;
         this._roomId = 0;
         this._roomCategory = 0;
         return true;
      }
      
      public function get data() : ObjectMessageData
      {
         return this._data;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         this._data = new ObjectMessageData(-1);
         this._data.x = 10;
         this._data.y = 11;
         this._data.z = 1;
         this._data.dir = 0;
         this._data.type = param1.readInteger();
         this._data.data = "TYPE_INJECTED";
         return true;
      }
   }
}
