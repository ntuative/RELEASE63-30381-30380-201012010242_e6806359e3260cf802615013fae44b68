package com.sulake.habbo.avatar
{
   import com.sulake.core.utils.Map;
   import com.sulake.habbo.avatar.alias.AssetAliasCollection;
   import com.sulake.habbo.avatar.cache.AvatarImageCache;
   import com.sulake.habbo.avatar.enum.AvatarAction;
   import flash.display.BitmapData;
   
   public class PlaceholderAvatarImage extends AvatarImage
   {
      
      static var var_639:Map = new Map();
       
      
      public function PlaceholderAvatarImage(param1:AvatarStructure, param2:AssetAliasCollection, param3:AvatarFigureContainer, param4:String)
      {
         super(param1,param2,param3,param4);
      }
      
      override public function dispose() : void
      {
         var _loc1_:* = null;
         if(!var_708)
         {
            _structure = null;
            _assets = null;
            var_230 = null;
            var_252 = null;
            var_598 = null;
            var_503 = null;
            var_288 = null;
            if(!var_1149 && var_38)
            {
               var_38.dispose();
            }
            var_38 = null;
            _loc1_ = getCache();
            if(_loc1_)
            {
               _loc1_.dispose();
               _loc1_ = null;
            }
            var_660 = null;
            var_708 = true;
         }
      }
      
      override protected function getFullImage(param1:String) : BitmapData
      {
         return var_639[param1];
      }
      
      override protected function cacheFullImage(param1:String, param2:BitmapData) : void
      {
         var_639[param1] = param2;
      }
      
      override public function appendAction(param1:String, ... rest) : Boolean
      {
         var _loc3_:* = null;
         if(rest != null && rest.length > 0)
         {
            _loc3_ = rest[0];
         }
         switch(param1)
         {
            case AvatarAction.const_345:
               switch(_loc3_)
               {
                  case AvatarAction.const_558:
                  case AvatarAction.const_518:
                  case AvatarAction.const_371:
                  case AvatarAction.const_673:
                  case AvatarAction.const_353:
                  case AvatarAction.const_811:
                     super.appendAction.apply(null,[param1].concat(rest));
               }
               break;
            case AvatarAction.const_308:
            case AvatarAction.const_751:
            case AvatarAction.const_220:
            case AvatarAction.const_722:
            case AvatarAction.const_629:
            case AvatarAction.const_710:
               super.addActionData.apply(null,[param1].concat(rest));
         }
         return true;
      }
      
      override public function isPlaceholder() : Boolean
      {
         return true;
      }
   }
}
