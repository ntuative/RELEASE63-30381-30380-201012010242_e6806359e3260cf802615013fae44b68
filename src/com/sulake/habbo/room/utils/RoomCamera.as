package com.sulake.habbo.room.utils
{
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class RoomCamera
   {
      
      private static const const_819:int = 3;
       
      
      private var var_1947:int = -1;
      
      private var var_1951:int = -2;
      
      private var var_294:Vector3d = null;
      
      private var var_352:Vector3d = null;
      
      private var var_1954:Boolean = false;
      
      private var var_1955:Boolean = false;
      
      private var var_1946:Boolean = false;
      
      private var var_1949:Boolean = false;
      
      private var var_1950:int = 0;
      
      private var var_1952:int = 0;
      
      private var var_1948:int = 0;
      
      private var var_1953:int = 0;
      
      private var var_1182:int = 0;
      
      public function RoomCamera()
      {
         super();
      }
      
      public function get location() : IVector3d
      {
         return this.var_352;
      }
      
      public function get targetId() : int
      {
         return this.var_1947;
      }
      
      public function get targetCategory() : int
      {
         return this.var_1951;
      }
      
      public function get limitedLocationX() : Boolean
      {
         return this.var_1954;
      }
      
      public function get limitedLocationY() : Boolean
      {
         return this.var_1955;
      }
      
      public function get centeredLocX() : Boolean
      {
         return this.var_1946;
      }
      
      public function get centeredLocY() : Boolean
      {
         return this.var_1949;
      }
      
      public function get screenWd() : int
      {
         return this.var_1950;
      }
      
      public function get screenHt() : int
      {
         return this.var_1952;
      }
      
      public function get roomWd() : int
      {
         return this.var_1948;
      }
      
      public function get roomHt() : int
      {
         return this.var_1953;
      }
      
      public function set targetId(param1:int) : void
      {
         this.var_1947 = param1;
      }
      
      public function set targetCategory(param1:int) : void
      {
         this.var_1951 = param1;
      }
      
      public function set limitedLocationX(param1:Boolean) : void
      {
         this.var_1954 = param1;
      }
      
      public function set limitedLocationY(param1:Boolean) : void
      {
         this.var_1955 = param1;
      }
      
      public function set centeredLocX(param1:Boolean) : void
      {
         this.var_1946 = param1;
      }
      
      public function set centeredLocY(param1:Boolean) : void
      {
         this.var_1949 = param1;
      }
      
      public function set screenWd(param1:int) : void
      {
         this.var_1950 = param1;
      }
      
      public function set screenHt(param1:int) : void
      {
         this.var_1952 = param1;
      }
      
      public function set roomWd(param1:int) : void
      {
         this.var_1948 = param1;
      }
      
      public function set roomHt(param1:int) : void
      {
         this.var_1953 = param1;
      }
      
      public function set target(param1:IVector3d) : void
      {
         if(this.var_294 == null)
         {
            this.var_294 = new Vector3d();
         }
         if(this.var_294.x != param1.x || this.var_294.y != param1.y || this.var_294.z != param1.z)
         {
            this.var_294.assign(param1);
            this.var_1182 = 0;
         }
      }
      
      public function dispose() : void
      {
         this.var_294 = null;
         this.var_352 = null;
      }
      
      public function initializeLocation(param1:IVector3d) : void
      {
         if(this.var_352 != null)
         {
            return;
         }
         this.var_352 = new Vector3d();
         this.var_352.assign(param1);
      }
      
      public function update(param1:uint, param2:Number, param3:Number) : void
      {
         var _loc4_:* = null;
         if(this.var_294 != null && this.var_352 != null)
         {
            ++this.var_1182;
            _loc4_ = Vector3d.dif(this.var_294,this.var_352);
            if(_loc4_.length <= param2)
            {
               this.var_352 = this.var_294;
               this.var_294 = null;
            }
            else
            {
               _loc4_.div(_loc4_.length);
               if(_loc4_.length < param2 * (const_819 + 1))
               {
                  _loc4_.mul(param2);
               }
               else if(this.var_1182 <= const_819)
               {
                  _loc4_.mul(param2);
               }
               else
               {
                  _loc4_.mul(param3);
               }
               this.var_352 = Vector3d.sum(this.var_352,_loc4_);
            }
         }
      }
   }
}
