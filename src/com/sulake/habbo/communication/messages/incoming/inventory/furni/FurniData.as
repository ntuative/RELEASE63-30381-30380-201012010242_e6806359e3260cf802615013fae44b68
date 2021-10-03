package com.sulake.habbo.communication.messages.incoming.inventory.furni
{
   public class FurniData
   {
       
      
      private var var_2163:int;
      
      private var var_1174:String;
      
      private var _objId:int;
      
      private var var_1728:int;
      
      private var _category:int;
      
      private var var_1867:String;
      
      private var var_2161:Boolean;
      
      private var var_2160:Boolean;
      
      private var var_2162:Boolean;
      
      private var var_2159:Boolean;
      
      private var var_2158:int;
      
      private var var_1539:int;
      
      private var var_1773:String = "";
      
      private var var_2072:int = -1;
      
      public function FurniData(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:Boolean, param8:Boolean, param9:Boolean, param10:Boolean, param11:int)
      {
         super();
         this.var_2163 = param1;
         this.var_1174 = param2;
         this._objId = param3;
         this.var_1728 = param4;
         this._category = param5;
         this.var_1867 = param6;
         this.var_2161 = param7;
         this.var_2160 = param8;
         this.var_2162 = param9;
         this.var_2159 = param10;
         this.var_2158 = param11;
      }
      
      public function setExtraData(param1:String, param2:int) : void
      {
         this.var_1773 = param1;
         this.var_1539 = param2;
      }
      
      public function get stripId() : int
      {
         return this.var_2163;
      }
      
      public function get itemType() : String
      {
         return this.var_1174;
      }
      
      public function get objId() : int
      {
         return this._objId;
      }
      
      public function get classId() : int
      {
         return this.var_1728;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get stuffData() : String
      {
         return this.var_1867;
      }
      
      public function get isGroupable() : Boolean
      {
         return this.var_2161;
      }
      
      public function get isRecyclable() : Boolean
      {
         return this.var_2160;
      }
      
      public function get isTradeable() : Boolean
      {
         return this.var_2162;
      }
      
      public function get isSellable() : Boolean
      {
         return this.var_2159;
      }
      
      public function get expiryTime() : int
      {
         return this.var_2158;
      }
      
      public function get slotId() : String
      {
         return this.var_1773;
      }
      
      public function get songId() : int
      {
         return this.var_2072;
      }
      
      public function get extra() : int
      {
         return this.var_1539;
      }
   }
}
