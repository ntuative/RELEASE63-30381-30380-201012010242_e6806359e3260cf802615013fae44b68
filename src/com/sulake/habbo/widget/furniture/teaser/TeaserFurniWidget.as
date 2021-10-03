package com.sulake.habbo.widget.furniture.teaser
{
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.assets.XmlAsset;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.components.IFrameWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.widget.RoomWidgetBase;
   import com.sulake.habbo.widget.events.RoomWidgetTeaserDataUpdateEvent;
   import com.sulake.habbo.widget.messages.RoomWidgetViralFurniMessage;
   import com.sulake.habbo.window.IHabboWindowManager;
   import flash.events.IEventDispatcher;
   
   public class TeaserFurniWidget extends RoomWidgetBase
   {
       
      
      private var _window:IFrameWindow;
      
      private var _type:int = -1;
      
      private var var_2617:String;
      
      private const const_1820:String = "TYPE_INJECTED";
      
      private const const_1546:int = 0;
      
      private const const_1821:int = 1;
      
      public function TeaserFurniWidget(param1:IHabboWindowManager, param2:IAssetLibrary = null)
      {
         super(param1,param2);
      }
      
      override public function dispose() : void
      {
         this.hideInterface();
         super.dispose();
      }
      
      override public function registerUpdateEvents(param1:IEventDispatcher) : void
      {
         if(param1 == null)
         {
            return;
         }
         param1.addEventListener(RoomWidgetTeaserDataUpdateEvent.const_560,this.onObjectUpdate);
         super.registerUpdateEvents(param1);
      }
      
      override public function unregisterUpdateEvents(param1:IEventDispatcher) : void
      {
         if(param1 == null)
         {
            return;
         }
         param1.removeEventListener(RoomWidgetTeaserDataUpdateEvent.const_560,this.onObjectUpdate);
      }
      
      private function onObjectUpdate(param1:RoomWidgetTeaserDataUpdateEvent) : void
      {
         var _loc2_:int = 0;
         if(param1.data == this.const_1820)
         {
            _loc2_ = this.const_1546;
         }
         else
         {
            _loc2_ = this.const_1821;
            this.var_2617 = param1.data;
         }
         if(this._type != _loc2_ && this._window)
         {
            this._window.dispose();
            this._window = null;
         }
         this._type = _loc2_;
         this.mainWindow;
         this.showInterface();
      }
      
      override public function get mainWindow() : IWindow
      {
         var _loc1_:* = null;
         var _loc2_:* = null;
         if(this._type == -1)
         {
            return null;
         }
         if(!this._window)
         {
            if(this._type == this.const_1546)
            {
               _loc1_ = assets.getAssetByName("notification_teaser") as XmlAsset;
            }
            else
            {
               _loc1_ = assets.getAssetByName("notification_gift") as XmlAsset;
            }
            if(_loc1_ == null)
            {
               return null;
            }
            this._window = windowManager.buildFromXML(_loc1_.content as XML) as IFrameWindow;
            this._window.header.controls.visible = false;
            this._window.visible = false;
            _loc2_ = this._window.findChildByName("ok_btn");
            if(_loc2_ != null)
            {
               _loc2_.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,this.onOkButton);
            }
            _loc2_ = this._window.findChildByName("skip_btn");
            if(_loc2_ != null)
            {
               _loc2_.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,this.onSkipButton);
            }
            _loc2_ = this._window.findChildByName("post_btn");
            if(_loc2_ != null)
            {
               _loc2_.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,this.onPostButton);
            }
         }
         return this._window;
      }
      
      private function showInterface() : void
      {
         if(this._window == null)
         {
            return;
         }
         this._window.visible = true;
      }
      
      private function hideInterface() : void
      {
         if(this._window)
         {
            this._window.visible = false;
         }
      }
      
      private function onOkButton(param1:WindowEvent) : void
      {
         var _loc2_:* = null;
         if(messageListener != null)
         {
            _loc2_ = new RoomWidgetViralFurniMessage(RoomWidgetViralFurniMessage.const_568);
            messageListener.processWidgetMessage(_loc2_);
         }
         this.hideInterface();
      }
      
      private function onSkipButton(param1:WindowEvent) : void
      {
         this.hideInterface();
      }
      
      private function onPostButton(param1:WindowEvent) : void
      {
         this.hideInterface();
      }
   }
}
