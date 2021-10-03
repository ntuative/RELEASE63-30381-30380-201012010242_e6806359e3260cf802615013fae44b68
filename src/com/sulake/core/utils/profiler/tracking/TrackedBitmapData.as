package com.sulake.core.utils.profiler.tracking
{
   import flash.display.BitmapData;
   
   public class TrackedBitmapData extends BitmapData
   {
      
      private static var var_460:uint = 0;
      
      private static var var_459:uint = 0;
      
      private static const const_1542:uint = 16777215;
       
      
      private var var_384:Object;
      
      private var _disposed:Boolean = false;
      
      public function TrackedBitmapData(param1:*, param2:int, param3:int, param4:Boolean = true, param5:uint = 4.294967295E9)
      {
         super(param2,param3,param4,param5);
         ++var_460;
         var_459 += param2 * param3 * 4;
         this.var_384 = param1;
      }
      
      public static function get numInstances() : uint
      {
         return var_460;
      }
      
      public static function get allocatedByteCount() : uint
      {
         return var_459;
      }
      
      override public function dispose() : void
      {
         if(!this._disposed)
         {
            var_459 -= width * height * 4;
            --var_460;
            super.dispose();
            this._disposed = true;
            this.var_384 = null;
         }
      }
   }
}
