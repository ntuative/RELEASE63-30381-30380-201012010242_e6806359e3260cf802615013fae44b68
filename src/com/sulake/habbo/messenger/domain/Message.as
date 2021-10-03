package com.sulake.habbo.messenger.domain
{
   public class Message
   {
      
      public static const const_768:int = 1;
      
      public static const const_763:int = 2;
      
      public static const const_565:int = 3;
      
      public static const const_962:int = 4;
      
      public static const const_796:int = 5;
      
      public static const const_984:int = 6;
       
      
      private var _type:int;
      
      private var var_1103:int;
      
      private var var_1887:String;
      
      private var var_2441:String;
      
      public function Message(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         this._type = param1;
         this.var_1103 = param2;
         this.var_1887 = param3;
         this.var_2441 = param4;
      }
      
      public function get messageText() : String
      {
         return this.var_1887;
      }
      
      public function get time() : String
      {
         return this.var_2441;
      }
      
      public function get senderId() : int
      {
         return this.var_1103;
      }
      
      public function get type() : int
      {
         return this._type;
      }
   }
}
