package com.sulake.habbo.avatar.animation
{
   public class AddDataContainer
   {
       
      
      private var _id:String;
      
      private var var_1721:String;
      
      private var var_1122:String;
      
      private var var_1419:String;
      
      private var var_657:Number = 1;
      
      public function AddDataContainer(param1:XML)
      {
         super();
         this._id = String(param1.@id);
         this.var_1721 = String(param1.@align);
         this.var_1122 = String(param1.@base);
         this.var_1419 = String(param1.@ink);
         var _loc2_:String = String(param1.@blend);
         if(_loc2_.length > 0)
         {
            this.var_657 = Number(_loc2_);
            if(this.var_657 > 1)
            {
               this.var_657 /= 100;
            }
         }
      }
      
      public function get id() : String
      {
         return this._id;
      }
      
      public function get align() : String
      {
         return this.var_1721;
      }
      
      public function get base() : String
      {
         return this.var_1122;
      }
      
      public function get ink() : String
      {
         return this.var_1419;
      }
      
      public function get blend() : Number
      {
         return this.var_657;
      }
      
      public function get isBlended() : Boolean
      {
         return this.var_657 != 1;
      }
   }
}
