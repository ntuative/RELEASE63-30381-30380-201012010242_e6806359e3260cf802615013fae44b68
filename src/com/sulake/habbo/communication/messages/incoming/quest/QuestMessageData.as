package com.sulake.habbo.communication.messages.incoming.quest
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class QuestMessageData
   {
       
      
      private var _id:int;
      
      private var var_347:int;
      
      private var _type:String;
      
      private var var_1621:String;
      
      private var var_1622:int;
      
      private var var_1623:String;
      
      private var _localizationCode:String;
      
      private var var_1620:String;
      
      private var var_2295:uint;
      
      public function QuestMessageData(param1:IMessageDataWrapper)
      {
         super();
         this._id = param1.readInteger();
         this.var_347 = param1.readInteger();
         this._type = param1.readString();
         this.var_1621 = param1.readString();
         this.var_1622 = param1.readInteger();
         this.var_1623 = param1.readString();
         this._localizationCode = param1.readString();
         var _loc2_:String = "";
         var _loc3_:int = this._localizationCode.length - 1;
         while(_loc3_ > 0 && this.isNumber(this._localizationCode.charAt(_loc3_)))
         {
            _loc2_ = this._localizationCode.charAt(_loc3_) + _loc2_;
            _loc3_--;
         }
         if(_loc3_ > 0)
         {
            this.var_1620 = this._localizationCode.substring(0,_loc3_ + 1);
         }
         else
         {
            this.var_1620 = this._localizationCode;
         }
         this.var_2295 = uint(_loc2_);
      }
      
      private function getNumber(param1:String) : int
      {
         var _loc2_:int = param1.charCodeAt(0);
         return _loc2_ - 48;
      }
      
      private function isNumber(param1:String) : Boolean
      {
         var _loc2_:int = param1.charCodeAt(0);
         return _loc2_ >= 48 && _loc2_ <= 57;
      }
      
      public function dispose() : void
      {
         this._id = 0;
         this.var_347 = 0;
         this._type = "";
         this.var_1621 = "";
         this.var_1622 = 0;
         this.var_1623 = "";
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get status() : int
      {
         return this.var_347;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get roomItemTypeName() : String
      {
         return this.var_1621;
      }
      
      public function get rewardCurrencyAmount() : int
      {
         return this.var_1622;
      }
      
      public function get endDateTimeStamp() : String
      {
         return this.var_1623;
      }
      
      public function get localizationCode() : String
      {
         return this._localizationCode;
      }
      
      public function get sortCode() : uint
      {
         return this.var_2295;
      }
      
      public function get localizationPrefix() : String
      {
         return this.var_1620;
      }
   }
}
