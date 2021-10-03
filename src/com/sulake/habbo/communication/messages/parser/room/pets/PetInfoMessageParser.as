package com.sulake.habbo.communication.messages.parser.room.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetInfoMessageParser implements IMessageParser
   {
       
      
      private var var_1614:int;
      
      private var _name:String;
      
      private var var_1681:int;
      
      private var var_2286:int;
      
      private var var_1893:int;
      
      private var _energy:int;
      
      private var _nutrition:int;
      
      private var var_598:String;
      
      private var var_2285:int;
      
      private var var_2284:int;
      
      private var var_2287:int;
      
      private var var_1892:int;
      
      private var var_1895:int;
      
      private var _ownerName:String;
      
      private var var_1891:int;
      
      public function PetInfoMessageParser()
      {
         super();
      }
      
      public function get petId() : int
      {
         return this.var_1614;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get level() : int
      {
         return this.var_1681;
      }
      
      public function get maxLevel() : int
      {
         return this.var_2286;
      }
      
      public function get experience() : int
      {
         return this.var_1893;
      }
      
      public function get energy() : int
      {
         return this._energy;
      }
      
      public function get nutrition() : int
      {
         return this._nutrition;
      }
      
      public function get figure() : String
      {
         return this.var_598;
      }
      
      public function get experienceRequiredToLevel() : int
      {
         return this.var_2285;
      }
      
      public function get maxEnergy() : int
      {
         return this.var_2284;
      }
      
      public function get maxNutrition() : int
      {
         return this.var_2287;
      }
      
      public function get respect() : int
      {
         return this.var_1892;
      }
      
      public function get ownerId() : int
      {
         return this.var_1895;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get age() : int
      {
         return this.var_1891;
      }
      
      public function flush() : Boolean
      {
         this.var_1614 = -1;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         this.var_1614 = param1.readInteger();
         this._name = param1.readString();
         this.var_1681 = param1.readInteger();
         this.var_2286 = param1.readInteger();
         this.var_1893 = param1.readInteger();
         this.var_2285 = param1.readInteger();
         this._energy = param1.readInteger();
         this.var_2284 = param1.readInteger();
         this._nutrition = param1.readInteger();
         this.var_2287 = param1.readInteger();
         this.var_598 = param1.readString();
         this.var_1892 = param1.readInteger();
         this.var_1895 = param1.readInteger();
         this.var_1891 = param1.readInteger();
         this._ownerName = param1.readString();
         return true;
      }
   }
}
