package com.sulake.habbo.communication.messages.parser.room.engine
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   
   public class RoomEntryInfoMessageParser implements IMessageParser
   {
       
      
      private var var_1661:Boolean;
      
      private var var_2356:int;
      
      private var var_384:Boolean;
      
      private var var_1068:PublicRoomShortData;
      
      public function RoomEntryInfoMessageParser()
      {
         super();
      }
      
      public function get guestRoom() : Boolean
      {
         return this.var_1661;
      }
      
      public function get guestRoomId() : int
      {
         return this.var_2356;
      }
      
      public function get publicSpace() : PublicRoomShortData
      {
         return this.var_1068;
      }
      
      public function get owner() : Boolean
      {
         return this.var_384;
      }
      
      public function flush() : Boolean
      {
         if(this.var_1068 != null)
         {
            this.var_1068.dispose();
            this.var_1068 = null;
         }
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1661 = param1.readBoolean();
         if(this.var_1661)
         {
            this.var_2356 = param1.readInteger();
            this.var_384 = param1.readBoolean();
         }
         else
         {
            this.var_1068 = new PublicRoomShortData(param1);
         }
         return true;
      }
   }
}
