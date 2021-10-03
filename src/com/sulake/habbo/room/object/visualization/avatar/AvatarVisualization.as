package com.sulake.habbo.room.object.visualization.avatar
{
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.utils.Map;
   import com.sulake.habbo.avatar.IAvatarImage;
   import com.sulake.habbo.avatar.IAvatarImageListener;
   import com.sulake.habbo.avatar.animation.IAnimationLayerData;
   import com.sulake.habbo.avatar.animation.ISpriteDataContainer;
   import com.sulake.habbo.avatar.enum.AvatarAction;
   import com.sulake.habbo.avatar.enum.AvatarSetType;
   import com.sulake.habbo.room.object.RoomObjectVariableEnum;
   import com.sulake.room.object.IRoomObject;
   import com.sulake.room.object.IRoomObjectModel;
   import com.sulake.room.object.visualization.IRoomObjectSprite;
   import com.sulake.room.object.visualization.IRoomObjectVisualizationData;
   import com.sulake.room.object.visualization.RoomObjectSpriteVisualization;
   import com.sulake.room.utils.IRoomGeometry;
   import flash.display.BitmapData;
   import flash.display.BlendMode;
   
   public class AvatarVisualization extends RoomObjectSpriteVisualization implements IAvatarImageListener
   {
      
      private static const const_859:String = "avatar";
      
      private static const const_549:Number = -0.01;
      
      private static const const_550:Number = -0.409;
      
      private static const const_860:int = 2;
      
      private static const const_1201:Array = [0,0,0];
       
      
      private var var_557:AvatarVisualizationData = null;
      
      private var var_470:Map;
      
      private var var_1061:int = 0;
      
      private var var_824:Boolean;
      
      private var var_598:String;
      
      private var var_883:String;
      
      private var var_1062:int = 0;
      
      private var var_559:BitmapDataAsset;
      
      private var var_842:BitmapDataAsset;
      
      private var var_1606:int = -1;
      
      private var var_1601:int = -1;
      
      private var var_1603:int = -1;
      
      private const const_861:int = 0;
      
      private const const_1549:int = 1;
      
      private const const_1544:int = 2;
      
      private const const_1543:int = 3;
      
      private const const_1202:int = 4;
      
      private var var_1699:int = -1;
      
      private var var_229:String = "";
      
      private var _postureParameter:String = "";
      
      private var var_1604:Boolean = false;
      
      private var var_1605:Boolean = false;
      
      private var var_1602:Boolean = false;
      
      private var var_1273:Boolean = false;
      
      private var var_821:Boolean = false;
      
      private var var_1276:int = 0;
      
      private var var_1272:int = 0;
      
      private var var_2276:int = 0;
      
      private var var_1275:int = 0;
      
      private var var_682:int = 0;
      
      private var var_558:int = 0;
      
      private var var_1274:int = 0;
      
      private var var_1029:Boolean = false;
      
      private var var_1599:Boolean = false;
      
      private var var_1030:int = 0;
      
      private var var_683:int = 0;
      
      private var var_1600:Boolean = false;
      
      private var var_1031:int = 0;
      
      private var var_53:IAvatarImage = null;
      
      private var var_708:Boolean;
      
      public function AvatarVisualization()
      {
         super();
         this.var_470 = new Map();
         this.var_824 = false;
      }
      
      override public function dispose() : void
      {
         if(this.var_470 != null)
         {
            this.resetImages();
            this.var_470.dispose();
            this.var_470 = null;
         }
         this.var_557 = null;
         this.var_559 = null;
         this.var_842 = null;
         super.dispose();
         this.var_708 = true;
      }
      
      public function get disposed() : Boolean
      {
         return this.var_708;
      }
      
      override public function initialize(param1:IRoomObjectVisualizationData) : Boolean
      {
         this.var_557 = param1 as AvatarVisualizationData;
         createSprites(this.const_1202);
         return true;
      }
      
      private function updateModel(param1:IRoomObjectModel, param2:Number, param3:Boolean) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:* = false;
         var _loc6_:int = 0;
         var _loc7_:* = null;
         var _loc8_:* = null;
         if(param1.getUpdateID() != var_216)
         {
            _loc4_ = false;
            _loc5_ = false;
            _loc6_ = 0;
            _loc7_ = "";
            _loc5_ = Boolean(param1.getNumber(RoomObjectVariableEnum.const_246) > 0 && param3);
            if(_loc5_ != this.var_1604)
            {
               this.var_1604 = _loc5_;
               _loc4_ = true;
            }
            _loc5_ = param1.getNumber(RoomObjectVariableEnum.const_234) > 0;
            if(_loc5_ != this.var_1605)
            {
               this.var_1605 = _loc5_;
               _loc4_ = true;
            }
            _loc5_ = param1.getNumber(RoomObjectVariableEnum.const_504) > 0;
            if(_loc5_ != this.var_1602)
            {
               this.var_1602 = _loc5_;
               _loc4_ = true;
            }
            _loc5_ = Boolean(param1.getNumber(RoomObjectVariableEnum.const_765) > 0 && param3);
            if(_loc5_ != this.var_1273)
            {
               this.var_1273 = _loc5_;
               _loc4_ = true;
            }
            _loc5_ = param1.getNumber(RoomObjectVariableEnum.const_923) > 0;
            if(_loc5_ != this.var_821)
            {
               this.var_821 = _loc5_;
               _loc4_ = true;
               this.updateTypingBubble(param2);
            }
            _loc6_ = param1.getNumber(RoomObjectVariableEnum.const_261);
            if(_loc6_ != this.var_1276)
            {
               this.var_1276 = _loc6_;
               _loc4_ = true;
            }
            _loc7_ = param1.getString(RoomObjectVariableEnum.const_495);
            if(_loc7_ != this.var_229)
            {
               this.var_229 = _loc7_;
               _loc4_ = true;
            }
            _loc7_ = param1.getString(RoomObjectVariableEnum.const_781);
            if(_loc7_ != this._postureParameter)
            {
               this._postureParameter = _loc7_;
               _loc4_ = true;
            }
            _loc6_ = param1.getNumber(RoomObjectVariableEnum.const_997);
            if(_loc6_ != this.var_1272)
            {
               this.var_1272 = _loc6_;
               _loc4_ = true;
            }
            _loc6_ = param1.getNumber(RoomObjectVariableEnum.const_398);
            if(_loc6_ != this.var_1275)
            {
               this.var_1275 = _loc6_;
               _loc4_ = true;
            }
            _loc6_ = param1.getNumber(RoomObjectVariableEnum.const_470);
            if(_loc6_ != this.var_682)
            {
               this.var_682 = _loc6_;
               _loc4_ = true;
            }
            _loc6_ = param1.getNumber(RoomObjectVariableEnum.const_373);
            if(_loc6_ != this.var_558)
            {
               this.var_558 = _loc6_;
               _loc4_ = true;
            }
            _loc6_ = param1.getNumber(RoomObjectVariableEnum.const_357);
            if(_loc6_ != this.var_1606)
            {
               this.var_1606 = _loc6_;
               _loc4_ = true;
            }
            if(this.var_682 > 0 && param1.getNumber(RoomObjectVariableEnum.const_373) > 0)
            {
               if(this.var_558 != this.var_682)
               {
                  this.var_558 = this.var_682;
                  _loc4_ = true;
               }
            }
            else if(this.var_558 != 0)
            {
               this.var_558 = 0;
               _loc4_ = true;
            }
            _loc6_ = param1.getNumber(RoomObjectVariableEnum.const_793);
            if(_loc6_ != this.var_1030)
            {
               this.var_1030 = _loc6_;
               _loc4_ = true;
               this.updateNumberBubble(param2);
            }
            this.validateActions(param2);
            _loc7_ = param1.getString(RoomObjectVariableEnum.const_934);
            if(_loc7_ != this.var_883)
            {
               this.var_883 = _loc7_;
               _loc4_ = true;
            }
            _loc8_ = param1.getString(RoomObjectVariableEnum.const_171);
            if(this.updateFigure(_loc8_))
            {
               _loc4_ = true;
            }
            var_216 = param1.getUpdateID();
            return _loc4_;
         }
         return false;
      }
      
      private function updateFigure(param1:String) : Boolean
      {
         if(this.var_598 != param1)
         {
            this.var_598 = param1;
            this.resetImages();
            return true;
         }
         return false;
      }
      
      private function resetImages() : void
      {
         var _loc1_:* = null;
         var _loc2_:* = null;
         for each(_loc1_ in this.var_470)
         {
            if(_loc1_)
            {
               _loc1_.dispose();
            }
         }
         this.var_470.reset();
         this.var_53 = null;
         _loc2_ = getSprite(this.const_861);
         if(_loc2_ != null)
         {
            _loc2_.asset = null;
            _loc2_.alpha = 255;
         }
      }
      
      private function validateActions(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(param1 < 48)
         {
            this.var_1273 = false;
         }
         if(this.var_229 == "sit" || this.var_229 == "lay")
         {
            this.var_1274 = param1 / 2;
         }
         else
         {
            this.var_1274 = 0;
         }
         this.var_1599 = false;
         this.var_1029 = false;
         if(this.var_229 == "lay")
         {
            this.var_1029 = true;
            _loc2_ = int(this._postureParameter);
            if(_loc2_ < 0)
            {
               this.var_1599 = true;
            }
         }
      }
      
      private function getAvatarImage(param1:Number) : IAvatarImage
      {
         var _loc2_:String = "avatarImage" + param1.toString();
         var _loc3_:IAvatarImage = this.var_470.getValue(_loc2_) as IAvatarImage;
         if(_loc3_ == null)
         {
            _loc3_ = this.var_557.getAvatar(this.var_598,param1,this.var_883,this);
            if(_loc3_ != null)
            {
               this.var_470.add(_loc2_,_loc3_);
            }
         }
         return _loc3_;
      }
      
      private function updateObject(param1:IRoomObject, param2:IRoomGeometry, param3:Boolean, param4:Boolean = false) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         if(param4 || var_414 != param1.getUpdateID() || this.var_1699 != param2.updateId)
         {
            _loc5_ = param3;
            _loc6_ = param1.getDirection().x - param2.direction.x;
            _loc6_ = (_loc6_ % 360 + 360) % 360;
            _loc7_ = this.var_1606;
            if(this.var_229 == "float")
            {
               _loc7_ = _loc6_;
            }
            else
            {
               _loc7_ -= param2.direction.x;
            }
            _loc7_ = (_loc7_ % 360 + 360) % 360;
            if(_loc6_ != this.var_1601 || param4)
            {
               _loc5_ = true;
               this.var_1601 = _loc6_;
               _loc6_ -= 112.5;
               _loc6_ = (_loc6_ + 360) % 360;
               this.var_53.setDirectionAngle(AvatarSetType.const_32,_loc6_);
            }
            if(_loc7_ != this.var_1603 || param4)
            {
               _loc5_ = true;
               this.var_1603 = _loc7_;
               if(this.var_1603 != this.var_1601)
               {
                  _loc7_ -= 112.5;
                  _loc7_ = (_loc7_ + 360) % 360;
                  this.var_53.setDirectionAngle(AvatarSetType.const_43,_loc7_);
               }
            }
            var_414 = param1.getUpdateID();
            this.var_1699 = param2.updateId;
            return _loc5_;
         }
         return false;
      }
      
      private function updateShadow(param1:Number) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc2_:IRoomObjectSprite = getSprite(this.const_1549);
         this.var_559 = null;
         if(this.var_229 == "mv" || this.var_229 == "std")
         {
            _loc2_.visible = true;
            if(this.var_559 == null || param1 != var_256)
            {
               _loc3_ = 0;
               _loc4_ = 0;
               if(param1 < 48)
               {
                  this.var_559 = this.var_53.getAsset("sh_std_sd_1_0_0");
                  _loc3_ = -8;
                  _loc4_ = -3;
               }
               else
               {
                  this.var_559 = this.var_53.getAsset("h_std_sd_1_0_0");
                  _loc3_ = -17;
                  _loc4_ = -7;
               }
               if(this.var_559 != null)
               {
                  _loc2_.asset = this.var_559.content as BitmapData;
                  _loc2_.offsetX = _loc3_;
                  _loc2_.offsetY = _loc4_;
                  _loc2_.alpha = 50;
                  _loc2_.relativeDepth = 1;
               }
               else
               {
                  _loc2_.visible = false;
               }
            }
         }
         else
         {
            this.var_559 = null;
            _loc2_.visible = false;
         }
      }
      
      private function updateTypingBubble(param1:Number) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         this.var_842 = null;
         var _loc2_:IRoomObjectSprite = getSprite(this.const_1544);
         if(this.var_821)
         {
            _loc2_.visible = true;
            _loc5_ = 64;
            if(param1 < 48)
            {
               this.var_842 = this.var_557.getAvatarRendererAsset("user_typing_small_png") as BitmapDataAsset;
               _loc3_ = 3;
               _loc4_ = -42;
               _loc5_ = 32;
            }
            else
            {
               this.var_842 = this.var_557.getAvatarRendererAsset("user_typing_png") as BitmapDataAsset;
               _loc3_ = 14;
               _loc4_ = -83;
            }
            if(this.var_229 == "sit")
            {
               _loc4_ += _loc5_ / 2;
            }
            else if(this.var_229 == "lay")
            {
               _loc4_ += _loc5_;
            }
            if(this.var_842 != null)
            {
               _loc2_.asset = this.var_842.content as BitmapData;
               _loc2_.offsetX = _loc3_;
               _loc2_.offsetY = _loc4_;
               _loc2_.relativeDepth = -0.02;
            }
         }
         else
         {
            _loc2_.visible = false;
         }
      }
      
      private function updateNumberBubble(param1:Number) : void
      {
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc2_:* = null;
         var _loc3_:IRoomObjectSprite = getSprite(this.const_1543);
         if(this.var_1030 > 0)
         {
            _loc6_ = 64;
            if(param1 < 48)
            {
               _loc2_ = this.var_557.getAvatarRendererAsset("number_" + this.var_1030 + "_small_png") as BitmapDataAsset;
               _loc4_ = -6;
               _loc5_ = -52;
               _loc6_ = 32;
            }
            else
            {
               _loc2_ = this.var_557.getAvatarRendererAsset("number_" + this.var_1030 + "_png") as BitmapDataAsset;
               _loc4_ = -8;
               _loc5_ = -105;
            }
            if(this.var_229 == "sit")
            {
               _loc5_ += _loc6_ / 2;
            }
            else if(this.var_229 == "lay")
            {
               _loc5_ += _loc6_;
            }
            if(_loc2_ != null)
            {
               _loc3_.visible = true;
               _loc3_.asset = _loc2_.content as BitmapData;
               _loc3_.offsetX = _loc4_;
               _loc3_.offsetY = _loc5_;
               _loc3_.relativeDepth = -0.01;
               this.var_683 = 1;
               this.var_1600 = true;
               this.var_1031 = 0;
               _loc3_.alpha = 0;
            }
            else
            {
               _loc3_.visible = false;
            }
         }
         else if(_loc3_.visible)
         {
            this.var_683 = -1;
         }
      }
      
      private function animateNumberBubble(param1:int) : Boolean
      {
         var _loc5_:int = 0;
         var _loc2_:IRoomObjectSprite = getSprite(this.const_1543);
         var _loc3_:int = _loc2_.alpha;
         var _loc4_:Boolean = false;
         if(this.var_1600)
         {
            ++this.var_1031;
            if(this.var_1031 < 10)
            {
               return false;
            }
            if(this.var_683 < 0)
            {
               if(param1 < 48)
               {
                  _loc2_.offsetY -= 2;
               }
               else
               {
                  _loc2_.offsetY -= 4;
               }
            }
            else
            {
               _loc5_ = 4;
               if(param1 < 48)
               {
                  _loc5_ = 8;
               }
               if(this.var_1031 % _loc5_ == 0)
               {
                  --_loc2_.offsetY;
                  _loc4_ = true;
               }
            }
         }
         if(this.var_683 > 0)
         {
            if(_loc3_ < 255)
            {
               _loc3_ += 32;
            }
            if(_loc3_ >= 255)
            {
               _loc3_ = 255;
               this.var_683 = 0;
            }
            _loc2_.alpha = _loc3_;
            return true;
         }
         if(this.var_683 < 0)
         {
            if(_loc3_ >= 0)
            {
               _loc3_ -= 32;
            }
            if(_loc3_ <= 0)
            {
               this.var_683 = 0;
               this.var_1600 = false;
               _loc3_ = 0;
               _loc2_.visible = false;
            }
            _loc2_.alpha = _loc3_;
            return true;
         }
         return _loc4_;
      }
      
      override public function update(param1:IRoomGeometry, param2:int, param3:Boolean) : void
      {
         var _loc13_:* = null;
         var _loc14_:* = null;
         var _loc15_:* = null;
         var _loc16_:int = 0;
         var _loc17_:* = null;
         var _loc18_:* = null;
         var _loc19_:* = null;
         var _loc20_:int = 0;
         var _loc21_:int = 0;
         var _loc22_:* = null;
         var _loc23_:int = 0;
         var _loc24_:int = 0;
         var _loc25_:int = 0;
         var _loc26_:int = 0;
         var _loc27_:int = 0;
         var _loc28_:* = null;
         var _loc29_:* = null;
         var _loc4_:IRoomObject = object;
         if(_loc4_ == null)
         {
            return;
         }
         if(param1 == null)
         {
            return;
         }
         if(this.var_557 == null)
         {
            return;
         }
         var _loc5_:IRoomObjectModel = _loc4_.getModel();
         var _loc6_:Number = param1.scale;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = this.updateModel(_loc5_,_loc6_,param3);
         if(this.animateNumberBubble(_loc6_))
         {
            increaseUpdateId();
         }
         if(_loc10_ || _loc6_ != var_256 || this.var_53 == null)
         {
            if(_loc6_ != var_256)
            {
               _loc8_ = true;
               this.validateActions(_loc6_);
            }
            if(_loc8_ || this.var_53 == null)
            {
               this.var_53 = this.getAvatarImage(_loc6_);
               if(this.var_53 == null)
               {
                  return;
               }
               _loc7_ = true;
               _loc13_ = getSprite(this.const_861);
               if(_loc13_ && this.var_53 && this.var_53.isPlaceholder())
               {
                  _loc13_.alpha = 150;
               }
               else if(_loc13_)
               {
                  _loc13_.alpha = 255;
               }
            }
            if(this.var_53 == null)
            {
               return;
            }
            this.updateShadow(_loc6_);
            if(_loc8_)
            {
               this.updateTypingBubble(_loc6_);
               this.updateNumberBubble(_loc6_);
            }
            _loc9_ = this.updateObject(_loc4_,param1,param3,true);
            this.updateActions(this.var_53);
            var_256 = _loc6_;
         }
         else
         {
            _loc9_ = this.updateObject(_loc4_,param1,param3);
         }
         var _loc11_:Boolean = _loc9_ || _loc10_ || _loc8_;
         var _loc12_:Boolean = (this.var_824 || this.var_1062 > 0) && param3;
         if(_loc11_)
         {
            this.var_1062 = const_860;
         }
         if(_loc11_ || _loc12_)
         {
            increaseUpdateId();
            --this.var_1062;
            --this.var_1061;
            if(!(this.var_1061 <= 0 || _loc8_ || _loc10_ || _loc7_))
            {
               return;
            }
            this.var_53.updateAnimationByFrames(1);
            this.var_1061 = const_860;
            _loc15_ = this.var_53.getCanvasOffsets();
            if(_loc15_ == null || _loc15_.length < 3)
            {
               _loc15_ = const_1201;
            }
            _loc14_ = getSprite(this.const_861);
            if(_loc14_ != null)
            {
               _loc18_ = this.var_53.getImage(AvatarSetType.const_32,false);
               if(_loc18_ != null)
               {
                  _loc14_.asset = _loc18_;
               }
               if(_loc14_.asset)
               {
                  _loc14_.offsetX = -1 * _loc6_ / 2 + _loc15_[0];
                  _loc14_.offsetY = -_loc14_.asset.height + _loc6_ / 4 + _loc15_[1] + this.var_1274;
               }
               if(this.var_1029)
               {
                  if(this.var_1599)
                  {
                     _loc14_.relativeDepth = -0.5;
                  }
                  else
                  {
                     _loc14_.relativeDepth = const_550 + _loc15_[2];
                  }
               }
               else
               {
                  _loc14_.relativeDepth = const_549 + _loc15_[2];
               }
            }
            _loc14_ = getSprite(this.const_1544);
            if(_loc14_ != null && _loc14_.visible)
            {
               if(!this.var_1029)
               {
                  _loc14_.relativeDepth = const_549 - 0.01 + _loc15_[2];
               }
               else
               {
                  _loc14_.relativeDepth = const_550 - 0.01 + _loc15_[2];
               }
            }
            this.var_824 = this.var_53.isAnimating();
            _loc16_ = this.const_1202;
            for each(_loc17_ in this.var_53.getSprites())
            {
               if(_loc17_.id == const_859)
               {
                  _loc14_ = getSprite(this.const_861);
                  _loc19_ = this.var_53.getLayerData(_loc17_);
                  _loc20_ = _loc17_.getDirectionOffsetX(this.var_53.getDirection());
                  _loc21_ = _loc17_.getDirectionOffsetY(this.var_53.getDirection());
                  if(_loc19_ != null)
                  {
                     _loc20_ += _loc19_.dx;
                     _loc21_ += _loc19_.dy;
                  }
                  if(_loc6_ < 48)
                  {
                     _loc20_ /= 2;
                     _loc21_ /= 2;
                  }
                  _loc14_.offsetX += _loc20_;
                  _loc14_.offsetY += _loc21_;
               }
               else
               {
                  _loc14_ = getSprite(_loc16_);
                  if(_loc14_ != null)
                  {
                     _loc14_.capturesMouse = false;
                     _loc14_.visible = true;
                     _loc22_ = this.var_53.getLayerData(_loc17_);
                     _loc23_ = 0;
                     _loc24_ = _loc17_.getDirectionOffsetX(this.var_53.getDirection());
                     _loc25_ = _loc17_.getDirectionOffsetY(this.var_53.getDirection());
                     _loc26_ = _loc17_.getDirectionOffsetZ(this.var_53.getDirection());
                     _loc27_ = 0;
                     if(_loc17_.hasDirections)
                     {
                        _loc27_ = this.var_53.getDirection();
                     }
                     if(_loc22_ != null)
                     {
                        _loc23_ = _loc22_.animationFrame;
                        _loc24_ += _loc22_.dx;
                        _loc25_ += _loc22_.dy;
                        _loc27_ += _loc22_.directionOffset;
                     }
                     if(_loc6_ < 48)
                     {
                        _loc24_ /= 2;
                        _loc25_ /= 2;
                     }
                     if(_loc27_ < 0)
                     {
                        _loc27_ += 8;
                     }
                     else if(_loc27_ > 7)
                     {
                        _loc27_ -= 8;
                     }
                     _loc28_ = this.var_53.getScale() + "_" + _loc17_.member + "_" + _loc27_ + "_" + _loc23_;
                     _loc29_ = this.var_53.getAsset(_loc28_);
                     if(_loc29_ == null)
                     {
                        continue;
                     }
                     _loc14_.asset = _loc29_.content as BitmapData;
                     _loc14_.offsetX = -_loc29_.offset.x - _loc6_ / 2 + _loc24_;
                     _loc14_.offsetY = -_loc29_.offset.y + _loc25_ + this.var_1274;
                     if(this.var_1029)
                     {
                        _loc14_.relativeDepth = const_550 - 0.001 * spriteCount * _loc26_;
                     }
                     else
                     {
                        _loc14_.relativeDepth = const_549 - 0.001 * spriteCount * _loc26_;
                     }
                     if(_loc17_.ink == 33)
                     {
                        _loc14_.blendMode = BlendMode.ADD;
                     }
                     else
                     {
                        _loc14_.blendMode = BlendMode.NORMAL;
                     }
                  }
                  _loc16_++;
               }
            }
         }
      }
      
      private function updateActions(param1:IAvatarImage) : void
      {
         var _loc3_:* = null;
         if(param1 == null)
         {
            return;
         }
         param1.initActionAppends();
         param1.appendAction(AvatarAction.const_345,this.var_229,this._postureParameter);
         if(this.var_1276 > 0)
         {
            param1.appendAction(AvatarAction.const_296,AvatarAction.const_1367[this.var_1276]);
         }
         if(this.var_1272 > 0)
         {
            param1.appendAction(AvatarAction.const_751,this.var_1272);
         }
         if(this.var_2276 > 0)
         {
            param1.appendAction(AvatarAction.const_722,this.var_2276);
         }
         if(this.var_682 > 0)
         {
            param1.appendAction(AvatarAction.const_629,this.var_682);
         }
         if(this.var_558 > 0)
         {
            param1.appendAction(AvatarAction.const_710,this.var_558);
         }
         if(this.var_1604)
         {
            param1.appendAction(AvatarAction.const_283);
         }
         if(this.var_1602 || this.var_1273)
         {
            param1.appendAction(AvatarAction.const_460);
         }
         if(this.var_1605)
         {
            param1.appendAction(AvatarAction.const_220);
         }
         if(this.var_1275 > 0)
         {
            param1.appendAction(AvatarAction.const_308,this.var_1275);
         }
         param1.endActionAppends();
         this.var_824 = param1.isAnimating();
         var _loc2_:int = this.const_1202;
         for each(_loc3_ in this.var_53.getSprites())
         {
            if(_loc3_.id != const_859)
            {
               _loc2_++;
            }
         }
         if(_loc2_ != spriteCount)
         {
            createSprites(_loc2_);
         }
      }
      
      public function avatarImageReady(param1:String) : void
      {
         this.resetImages();
      }
   }
}
