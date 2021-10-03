package com.sulake.habbo.quest
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.habbo.communication.messages.incoming.quest.QuestMessageData;
   import com.sulake.habbo.communication.messages.outgoing.quest.ActivateQuestMessageComposer;
   import flash.utils.Dictionary;
   
   public class QuestController implements IDisposable
   {
       
      
      private var _questEngine:HabboQuestEngine;
      
      private var var_725:Dictionary;
      
      private var var_338:QuestCampaign;
      
      private var var_708:Boolean = false;
      
      public function QuestController(param1:HabboQuestEngine)
      {
         this.var_725 = new Dictionary();
         super();
         this._questEngine = param1;
      }
      
      public function dispose() : void
      {
         var _loc1_:* = null;
         for each(_loc1_ in this.var_725)
         {
            _loc1_.dispose();
         }
         this.var_725 = null;
         this.var_708 = true;
      }
      
      public function get disposed() : Boolean
      {
         return this.var_708;
      }
      
      private function reset() : void
      {
         if(this.var_338)
         {
            this.var_338.dispose();
            this.var_338 = null;
         }
      }
      
      public function isVisible() : Boolean
      {
         return this.var_338 != null && this.var_338.isVisible();
      }
      
      public function close() : void
      {
         if(this.var_338)
         {
            this.var_338.close();
         }
      }
      
      public function questAccepted(param1:String, param2:QuestMessageData) : void
      {
         var _loc3_:QuestCampaign = this.var_725[param1];
         if(_loc3_)
         {
            _loc3_.questAccepted(param2);
         }
      }
      
      public function questCompleted(param1:String, param2:QuestMessageData) : void
      {
         var _loc3_:QuestCampaign = this.var_725[param1];
         if(_loc3_)
         {
            _loc3_.questCompleted(param2);
         }
      }
      
      public function activateQuest(param1:Quest) : void
      {
         if(param1)
         {
            this._questEngine.communication.getHabboMainConnection(null).send(new ActivateQuestMessageComposer(param1.id));
         }
      }
      
      public function get questEngine() : HabboQuestEngine
      {
         return this._questEngine;
      }
      
      public function openCampaign(param1:String, param2:int, param3:Array) : void
      {
         var _loc4_:QuestCampaign = this.var_725[param1];
         if(!_loc4_)
         {
            _loc4_ = new QuestCampaign(this,param1,param2);
            this.var_725[param1] = _loc4_;
         }
         this.var_338 = _loc4_;
         this.var_338.openCampaign(param3);
      }
      
      public function updatePurse() : void
      {
         if(!this.var_338)
         {
            return;
         }
         this.var_338.updatePurse();
      }
   }
}
