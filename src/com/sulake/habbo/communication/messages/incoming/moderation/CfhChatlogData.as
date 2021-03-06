package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CfhChatlogData
   {
       
      
      private var var_1650:int;
      
      private var var_2336:int;
      
      private var var_1370:int;
      
      private var var_2254:int;
      
      private var var_101:RoomChatlogData;
      
      public function CfhChatlogData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1650 = param1.readInteger();
         this.var_2336 = param1.readInteger();
         this.var_1370 = param1.readInteger();
         this.var_2254 = param1.readInteger();
         this.var_101 = new RoomChatlogData(param1);
         Logger.log("READ CFHCHATLOGDATA: callId: " + this.var_1650);
      }
      
      public function get callId() : int
      {
         return this.var_1650;
      }
      
      public function get callerUserId() : int
      {
         return this.var_2336;
      }
      
      public function get reportedUserId() : int
      {
         return this.var_1370;
      }
      
      public function get chatRecordId() : int
      {
         return this.var_2254;
      }
      
      public function get room() : RoomChatlogData
      {
         return this.var_101;
      }
   }
}
