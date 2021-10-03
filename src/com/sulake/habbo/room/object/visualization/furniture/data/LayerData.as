package com.sulake.habbo.room.object.visualization.furniture.data
{
   public class LayerData
   {
      
      public static const const_754:String = "";
      
      public static const const_413:int = 0;
      
      public static const const_501:int = 255;
      
      public static const const_787:Boolean = false;
      
      public static const const_521:int = 0;
      
      public static const const_492:int = 0;
      
      public static const const_429:int = 0;
      
      public static const const_1032:int = 1;
      
      public static const const_1107:int = 2;
      
      public static const INK_DARKEN:int = 3;
       
      
      private var var_1996:String = "";
      
      private var var_1419:int = 0;
      
      private var var_2069:int = 255;
      
      private var var_2068:Boolean = false;
      
      private var var_2067:int = 0;
      
      private var var_2066:int = 0;
      
      private var var_2070:Number = 0;
      
      public function LayerData()
      {
         super();
      }
      
      public function set tag(param1:String) : void
      {
         this.var_1996 = param1;
      }
      
      public function get tag() : String
      {
         return this.var_1996;
      }
      
      public function set ink(param1:int) : void
      {
         this.var_1419 = param1;
      }
      
      public function get ink() : int
      {
         return this.var_1419;
      }
      
      public function set alpha(param1:int) : void
      {
         this.var_2069 = param1;
      }
      
      public function get alpha() : int
      {
         return this.var_2069;
      }
      
      public function set ignoreMouse(param1:Boolean) : void
      {
         this.var_2068 = param1;
      }
      
      public function get ignoreMouse() : Boolean
      {
         return this.var_2068;
      }
      
      public function set xOffset(param1:int) : void
      {
         this.var_2067 = param1;
      }
      
      public function get xOffset() : int
      {
         return this.var_2067;
      }
      
      public function set yOffset(param1:int) : void
      {
         this.var_2066 = param1;
      }
      
      public function get yOffset() : int
      {
         return this.var_2066;
      }
      
      public function set zOffset(param1:Number) : void
      {
         this.var_2070 = param1;
      }
      
      public function get zOffset() : Number
      {
         return this.var_2070;
      }
      
      public function copyValues(param1:LayerData) : void
      {
         if(param1 != null)
         {
            this.tag = param1.tag;
            this.ink = param1.ink;
            this.alpha = param1.alpha;
            this.ignoreMouse = param1.ignoreMouse;
            this.xOffset = param1.xOffset;
            this.yOffset = param1.yOffset;
            this.zOffset = param1.zOffset;
         }
      }
   }
}
