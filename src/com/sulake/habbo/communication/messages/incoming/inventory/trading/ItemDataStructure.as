package com.sulake.habbo.communication.messages.incoming.inventory.trading
{
   public class ItemDataStructure
   {
       
      
      private var var_2165:int;
      
      private var var_1174:String;
      
      private var var_2169:int;
      
      private var var_2172:int;
      
      private var _category:int;
      
      private var var_1867:String;
      
      private var var_1539:int;
      
      private var var_2170:int;
      
      private var var_2171:int;
      
      private var var_2168:int;
      
      private var var_2166:int;
      
      private var var_2167:Boolean;
      
      private var var_2653:int;
      
      public function ItemDataStructure(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:int, param8:int, param9:int, param10:int, param11:int, param12:Boolean)
      {
         super();
         this.var_2165 = param1;
         this.var_1174 = param2;
         this.var_2169 = param3;
         this.var_2172 = param4;
         this._category = param5;
         this.var_1867 = param6;
         this.var_1539 = param7;
         this.var_2170 = param8;
         this.var_2171 = param9;
         this.var_2168 = param10;
         this.var_2166 = param11;
         this.var_2167 = param12;
      }
      
      public function get itemID() : int
      {
         return this.var_2165;
      }
      
      public function get itemType() : String
      {
         return this.var_1174;
      }
      
      public function get roomItemID() : int
      {
         return this.var_2169;
      }
      
      public function get itemTypeID() : int
      {
         return this.var_2172;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get stuffData() : String
      {
         return this.var_1867;
      }
      
      public function get extra() : int
      {
         return this.var_1539;
      }
      
      public function get timeToExpiration() : int
      {
         return this.var_2170;
      }
      
      public function get creationDay() : int
      {
         return this.var_2171;
      }
      
      public function get creationMonth() : int
      {
         return this.var_2168;
      }
      
      public function get creationYear() : int
      {
         return this.var_2166;
      }
      
      public function get groupable() : Boolean
      {
         return this.var_2167;
      }
      
      public function get songID() : int
      {
         return this.var_1539;
      }
   }
}
