package com.sulake.habbo.widget.messages
{
   public class RoomWidgetChatTypingMessage extends RoomWidgetMessage
   {
      
      public static const const_639:String = "RWCTM_TYPING_STATUS";
       
      
      private var var_821:Boolean;
      
      public function RoomWidgetChatTypingMessage(param1:Boolean)
      {
         super(const_639);
         this.var_821 = param1;
      }
      
      public function get isTyping() : Boolean
      {
         return this.var_821;
      }
   }
}
