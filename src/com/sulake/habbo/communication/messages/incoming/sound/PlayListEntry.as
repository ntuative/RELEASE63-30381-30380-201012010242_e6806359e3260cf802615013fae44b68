package com.sulake.habbo.communication.messages.incoming.sound
{
   public class PlayListEntry
   {
       
      
      private var var_2072:int;
      
      private var var_2074:int;
      
      private var var_2076:String;
      
      private var var_2075:String;
      
      private var var_2073:int = 0;
      
      public function PlayListEntry(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         this.var_2072 = param1;
         this.var_2074 = param2;
         this.var_2076 = param3;
         this.var_2075 = param4;
      }
      
      public function get id() : int
      {
         return this.var_2072;
      }
      
      public function get length() : int
      {
         return this.var_2074;
      }
      
      public function get name() : String
      {
         return this.var_2076;
      }
      
      public function get creator() : String
      {
         return this.var_2075;
      }
      
      public function get startPlayHeadPos() : int
      {
         return this.var_2073;
      }
      
      public function set startPlayHeadPos(param1:int) : void
      {
         this.var_2073 = param1;
      }
   }
}
