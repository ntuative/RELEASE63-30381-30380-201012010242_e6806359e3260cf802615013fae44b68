package com.sulake.habbo.session
{
   public class PetInfo implements IPetInfo
   {
       
      
      private var var_1614:int;
      
      private var var_1681:int;
      
      private var var_1888:int;
      
      private var var_1893:int;
      
      private var var_1894:int;
      
      private var _energy:int;
      
      private var var_1889:int;
      
      private var _nutrition:int;
      
      private var var_1890:int;
      
      private var var_1895:int;
      
      private var _ownerName:String;
      
      private var var_1892:int;
      
      private var var_1891:int;
      
      public function PetInfo()
      {
         super();
      }
      
      public function get petId() : int
      {
         return this.var_1614;
      }
      
      public function get level() : int
      {
         return this.var_1681;
      }
      
      public function get levelMax() : int
      {
         return this.var_1888;
      }
      
      public function get experience() : int
      {
         return this.var_1893;
      }
      
      public function get experienceMax() : int
      {
         return this.var_1894;
      }
      
      public function get energy() : int
      {
         return this._energy;
      }
      
      public function get energyMax() : int
      {
         return this.var_1889;
      }
      
      public function get nutrition() : int
      {
         return this._nutrition;
      }
      
      public function get nutritionMax() : int
      {
         return this.var_1890;
      }
      
      public function get ownerId() : int
      {
         return this.var_1895;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get respect() : int
      {
         return this.var_1892;
      }
      
      public function get age() : int
      {
         return this.var_1891;
      }
      
      public function set petId(param1:int) : void
      {
         this.var_1614 = param1;
      }
      
      public function set level(param1:int) : void
      {
         this.var_1681 = param1;
      }
      
      public function set levelMax(param1:int) : void
      {
         this.var_1888 = param1;
      }
      
      public function set experience(param1:int) : void
      {
         this.var_1893 = param1;
      }
      
      public function set experienceMax(param1:int) : void
      {
         this.var_1894 = param1;
      }
      
      public function set energy(param1:int) : void
      {
         this._energy = param1;
      }
      
      public function set energyMax(param1:int) : void
      {
         this.var_1889 = param1;
      }
      
      public function set nutrition(param1:int) : void
      {
         this._nutrition = param1;
      }
      
      public function set nutritionMax(param1:int) : void
      {
         this.var_1890 = param1;
      }
      
      public function set ownerId(param1:int) : void
      {
         this.var_1895 = param1;
      }
      
      public function set ownerName(param1:String) : void
      {
         this._ownerName = param1;
      }
      
      public function set respect(param1:int) : void
      {
         this.var_1892 = param1;
      }
      
      public function set age(param1:int) : void
      {
         this.var_1891 = param1;
      }
   }
}
