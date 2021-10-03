package com.sulake.habbo.navigator.inroom
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IButtonWindow;
   import com.sulake.core.window.components.IContainerButtonWindow;
   import com.sulake.core.window.components.ITextFieldWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomEventData;
   import com.sulake.habbo.communication.messages.outgoing.navigator.AddFavouriteRoomMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.CanCreateEventMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.DeleteFavouriteRoomMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.RateFlatMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.UpdateNavigatorSettingsMessageComposer;
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.SimpleAlertView;
   import com.sulake.habbo.navigator.TagRenderer;
   import com.sulake.habbo.navigator.Util;
   import com.sulake.habbo.navigator.events.HabboRoomSettingsTrackingEvent;
   import com.sulake.habbo.navigator.roomsettings.IRoomSettingsCtrlOwner;
   import com.sulake.habbo.navigator.roomsettings.RoomSettingsCtrl;
   import com.sulake.habbo.navigator.roomthumbnails.RoomThumbnailCtrl;
   import com.sulake.habbo.toolbar.HabboToolbarIconEnum;
   import com.sulake.habbo.toolbar.events.HabboToolbarEvent;
   import com.sulake.habbo.toolbar.events.HabboToolbarSetIconEvent;
   import com.sulake.habbo.toolbar.events.HabboToolbarShowMenuEvent;
   import com.sulake.habbo.utils.HabboWebTools;
   import com.sulake.habbo.window.enum.HabboWindowParam;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class RoomInfoViewCtrl implements IRoomSettingsCtrlOwner
   {
       
      
      private var _navigator:HabboNavigator;
      
      private var _window:IWindowContainer;
      
      private var var_2619:int;
      
      private var var_316:RoomEventViewCtrl;
      
      private var var_231:Timer;
      
      private var var_163:RoomSettingsCtrl;
      
      private var var_233:RoomThumbnailCtrl;
      
      private var var_1013:TagRenderer;
      
      private var var_266:IWindowContainer;
      
      private var var_465:IWindowContainer;
      
      private var var_685:IWindowContainer;
      
      private var var_2298:IWindowContainer;
      
      private var var_2300:IWindowContainer;
      
      private var var_1285:IWindowContainer;
      
      private var var_801:ITextWindow;
      
      private var var_1038:ITextWindow;
      
      private var _ownerName:ITextWindow;
      
      private var var_848:ITextWindow;
      
      private var var_1284:ITextWindow;
      
      private var var_1037:ITextWindow;
      
      private var var_850:ITextWindow;
      
      private var var_1628:ITextWindow;
      
      private var var_232:IWindowContainer;
      
      private var var_849:IWindowContainer;
      
      private var var_1625:IWindowContainer;
      
      private var var_2302:ITextWindow;
      
      private var var_686:ITextWindow;
      
      private var _rateButton:IContainerButtonWindow;
      
      private var var_1286:IContainerButtonWindow;
      
      private var var_1287:IContainerButtonWindow;
      
      private var var_1282:IContainerButtonWindow;
      
      private var var_1288:IContainerButtonWindow;
      
      private var var_1283:IContainerButtonWindow;
      
      private var var_1629:IButtonWindow;
      
      private var var_1627:IButtonWindow;
      
      private var var_1626:IButtonWindow;
      
      private var var_851:IWindowContainer;
      
      private var var_1289:ITextWindow;
      
      private var var_1036:ITextFieldWindow;
      
      private var var_62:IWindowContainer;
      
      private var var_1035:IButtonWindow;
      
      private var var_852:IButtonWindow;
      
      private var var_2301:String;
      
      private var var_2299:String;
      
      public function RoomInfoViewCtrl(param1:HabboNavigator)
      {
         super();
         this._navigator = param1;
         this.var_316 = new RoomEventViewCtrl(this._navigator);
         this.var_163 = new RoomSettingsCtrl(this._navigator,this,true);
         this.var_233 = new RoomThumbnailCtrl(this._navigator);
         this.var_1013 = new TagRenderer(this._navigator);
         this._navigator.roomSettingsCtrls.push(this.var_163);
         this.var_231 = new Timer(6000,1);
         this.var_231.addEventListener(TimerEvent.TIMER,this.hideInfo);
      }
      
      public function dispose() : void
      {
         if(this._navigator.toolbar)
         {
            this._navigator.toolbar.events.removeEventListener(HabboToolbarSetIconEvent.const_101,this.onToolbarIconState);
         }
         if(this.var_231)
         {
            this.var_231.removeEventListener(TimerEvent.TIMER,this.hideInfo);
            this.var_231.reset();
            this.var_231 = null;
         }
      }
      
      public function roomSettingsRefreshNeeded() : void
      {
         this.refresh();
      }
      
      public function startEventEdit() : void
      {
         this.var_231.reset();
         this.var_316.active = true;
         this.var_163.active = false;
         this.var_233.active = false;
         this.reload();
      }
      
      public function startRoomSettingsEdit(param1:int) : void
      {
         this.var_231.reset();
         this.var_163.load(param1);
         this.var_163.active = true;
         this.var_316.active = false;
         this.var_233.active = false;
         this._navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_DEFAULT));
      }
      
      public function backToRoomSettings() : void
      {
         this.var_163.active = true;
         this.var_316.active = false;
         this.var_233.active = false;
         this.reload();
         this._navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_DEFAULT));
      }
      
      public function startThumbnailEdit() : void
      {
         this.var_231.reset();
         this.var_163.active = false;
         this.var_316.active = false;
         this.var_233.active = true;
         this.reload();
         this._navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_THUMBS));
      }
      
      public function close() : void
      {
         this._navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_921,HabboToolbarIconEnum.ROOMINFO,this._window,false));
         if(this._window == null)
         {
            return;
         }
         this._window.visible = false;
         this._navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_CLOSED));
      }
      
      public function reload() : void
      {
         if(this._window != null && this._window.visible)
         {
            this.refresh();
         }
      }
      
      public function open(param1:Boolean) : void
      {
         this.var_231.reset();
         this.var_316.active = false;
         this.var_163.active = false;
         this.var_233.active = false;
         if(param1)
         {
            this.startRoomSettingsEdit(this._navigator.data.enteredGuestRoom.flatId);
         }
         this.refresh();
         this._window.visible = true;
         this._navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_48,HabboToolbarIconEnum.ROOMINFO,this._window,false));
         this._window.parent.activate();
         this._window.activate();
         if(!param1)
         {
            this.var_231.start();
         }
      }
      
      public function toggle() : void
      {
         this.var_231.reset();
         this.var_316.active = false;
         this.var_163.active = false;
         this.var_233.active = false;
         this.refresh();
         if(!this._window.visible)
         {
            this._navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_48,HabboToolbarIconEnum.ROOMINFO,this._window,false));
            this._window.parent.activate();
         }
         else
         {
            this._navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_468,HabboToolbarIconEnum.ROOMINFO,this._window,false));
         }
      }
      
      private function refresh() : void
      {
         this.prepareWindow();
         this.refreshRoom();
         this.refreshEvent();
         this.refreshEmbed();
         this.refreshButtons();
         Util.moveChildrenToColumn(this._window,["room_info","event_info","embed_info","buttons_container"],0,2);
         this._window.height = Util.getLowestPoint(this._window);
         this._window.y = this._window.desktop.height - this._window.height - 5;
         Logger.log("MAIN: " + this.var_266.rectangle + ", " + this.var_232.rectangle + ", " + this._window.rectangle);
      }
      
      private function refreshRoom() : void
      {
         Util.hideChildren(this.var_266);
         this.var_266.findChildByName("close").visible = true;
         var _loc1_:GuestRoomData = this._navigator.data.enteredGuestRoom;
         var _loc2_:Boolean = _loc1_ != null && _loc1_.flatId == this._navigator.data.homeRoomId;
         this.refreshRoomDetails(_loc1_,_loc2_);
         this.refreshPublicSpaceDetails(this._navigator.data.enteredPublicSpace);
         this.refreshRoomButtons(_loc2_);
         this.var_163.refresh(this.var_266);
         this.var_233.refresh(this.var_266);
         Util.moveChildrenToColumn(this.var_266,["room_details","room_buttons"],0,2);
         this.var_266.height = Util.getLowestPoint(this.var_266);
         this.var_266.visible = true;
         Logger.log("XORP: " + this.var_465.visible + ", " + this.var_1285.visible + ", " + this.var_685.visible + ", " + this.var_685.rectangle + ", " + this.var_266.rectangle);
      }
      
      private function refreshEvent() : void
      {
         Util.hideChildren(this.var_232);
         var _loc1_:RoomEventData = this._navigator.data.roomEventData;
         this.refreshEventDetails(_loc1_);
         this.refreshEventButtons(_loc1_);
         this.var_316.refresh(this.var_232);
         if(Util.hasVisibleChildren(this.var_232) && !(this.var_163.active || this.var_233.active))
         {
            Util.moveChildrenToColumn(this.var_232,["event_details","event_buttons"],0,2);
            this.var_232.height = Util.getLowestPoint(this.var_232);
            this.var_232.visible = true;
         }
         else
         {
            this.var_232.visible = false;
         }
         Logger.log("EVENT: " + this.var_232.visible + ", " + this.var_232.rectangle);
      }
      
      private function refreshEmbed() : void
      {
         var _loc1_:* = this._navigator.configuration.getKey("embed.showInRoomInfo","false") == "true";
         var _loc2_:* = this._navigator.data.enteredGuestRoom != null;
         if(_loc2_ && _loc1_ && !this.var_163.active && !this.var_233.active && !this.var_316.active)
         {
            this.var_851.visible = true;
            this.var_1036.text = this.getEmbedData();
         }
         else
         {
            this.var_851.visible = false;
         }
      }
      
      private function refreshButtons() : void
      {
         var _loc1_:* = false;
         if(!this.var_62)
         {
            return;
         }
         if(this.var_163.active)
         {
            this.var_62.visible = false;
            return;
         }
         this.var_62.visible = true;
         if(this.var_1035)
         {
            if(this.var_2301 == "exit_homeroom")
            {
               this.var_1035.caption = "${navigator.homeroom}";
            }
            else
            {
               this.var_1035.caption = "${navigator.hotelview}";
            }
         }
         if(this.var_852)
         {
            _loc1_ = this._navigator.data.enteredGuestRoom != null;
            this.var_852.visible = _loc1_;
            if(this.var_2299 == "0")
            {
               this.var_852.caption = "${navigator.zoom.in}";
            }
            else
            {
               this.var_852.caption = "${navigator.zoom.out}";
            }
         }
      }
      
      private function refreshRoomDetails(param1:GuestRoomData, param2:Boolean) : void
      {
         if(param1 == null || this.var_163.active || this.var_233.active)
         {
            return;
         }
         this.var_801.text = param1.roomName;
         this.var_801.height = this.var_801.textHeight + 5;
         this._ownerName.text = param1.ownerName;
         this.var_848.text = param1.description;
         this.var_1013.refreshTags(this.var_465,param1.tags);
         this.var_848.visible = false;
         if(param1.description != "")
         {
            this.var_848.height = this.var_848.textHeight + 5;
            this.var_848.visible = true;
         }
         var _loc3_:Boolean = Boolean(this._navigator.configuration.getKey("client.allow.facebook.like") == "1");
         this._navigator.refreshButton(this.var_1286,"facebook_logo_small",_loc3_,null,0);
         this.var_1286.visible = _loc3_;
         var _loc4_:* = this._navigator.data.currentRoomRating == -1;
         this._navigator.refreshButton(this._rateButton,"thumb_up",_loc4_,null,0);
         this._rateButton.visible = _loc4_;
         this.var_850.visible = !_loc4_;
         this.var_1628.visible = !_loc4_;
         this.var_1628.text = "" + this._navigator.data.currentRoomRating;
         this._navigator.refreshButton(this.var_465,"home",param2,null,0);
         this._navigator.refreshButton(this.var_465,"favourite",!param2 && this._navigator.data.isCurrentRoomFavourite(),null,0);
         Util.moveChildrenToColumn(this.var_465,["room_name","owner_name_cont","tags","room_desc","rating_cont"],this.var_801.y,0);
         this.var_465.visible = true;
         this.var_465.height = Util.getLowestPoint(this.var_465);
      }
      
      private function refreshPublicSpaceDetails(param1:PublicRoomShortData) : void
      {
         if(param1 == null || this.var_163.active || this.var_233.active)
         {
            return;
         }
         this.var_1038.text = this._navigator.getPublicSpaceName(param1.unitPropertySet,param1.worldId);
         this.var_1038.height = this.var_1038.textHeight + 5;
         this.var_1284.text = this._navigator.getPublicSpaceDesc(param1.unitPropertySet,param1.worldId);
         this.var_1284.height = this.var_1284.textHeight + 5;
         Util.moveChildrenToColumn(this.var_685,["public_space_name","public_space_desc"],this.var_1038.y,0);
         this.var_685.visible = true;
         this.var_685.height = Math.max(86,Util.getLowestPoint(this.var_685));
      }
      
      private function refreshEventDetails(param1:RoomEventData) : void
      {
         if(param1 == null || this.var_316.active)
         {
            return;
         }
         this.var_2302.text = param1.eventName;
         this.var_686.text = param1.eventDescription;
         this.var_1013.refreshTags(this.var_849,[this._navigator.getText("roomevent_type_" + param1.eventType),param1.tags[0],param1.tags[1]]);
         this.var_686.visible = false;
         if(param1.eventDescription != "")
         {
            this.var_686.height = this.var_686.textHeight + 5;
            this.var_686.y = Util.getLowestPoint(this.var_849) + 2;
            this.var_686.visible = true;
         }
         this.var_849.visible = true;
         this.var_849.height = Util.getLowestPoint(this.var_849);
      }
      
      private function refreshRoomButtons(param1:Boolean) : void
      {
         if(this._navigator.data.enteredGuestRoom == null || this.var_163.active || this.var_233.active)
         {
            return;
         }
         this.var_1629.visible = this._navigator.data.canEditRoomSettings;
         var _loc2_:Boolean = this._navigator.data.isCurrentRoomFavourite();
         this.var_1287.visible = this._navigator.data.canAddFavourite && !_loc2_;
         this.var_1282.visible = this._navigator.data.canAddFavourite && _loc2_;
         this.var_1288.visible = this._navigator.data.canEditRoomSettings && !param1;
         this.var_1283.visible = this._navigator.data.canEditRoomSettings && param1;
         this.var_1285.visible = Util.hasVisibleChildren(this.var_1285);
      }
      
      private function refreshEventButtons(param1:RoomEventData) : void
      {
         if(this.var_316.active)
         {
            return;
         }
         this.var_1627.visible = param1 == null && this._navigator.data.currentRoomOwner;
         this.var_1626.visible = param1 != null && (this._navigator.data.currentRoomOwner || this._navigator.data.eventMod);
         this.var_1625.visible = Util.hasVisibleChildren(this.var_1625);
      }
      
      private function prepareWindow() : void
      {
         if(this._window != null)
         {
            return;
         }
         this._window = IWindowContainer(this._navigator.getXmlWindow("iro_room_details"));
         this._window.setParamFlag(HabboWindowParam.const_61,false);
         this._window.setParamFlag(HabboWindowParam.const_1455,true);
         this._window.visible = false;
         this.var_266 = IWindowContainer(this.find("room_info"));
         this.var_465 = IWindowContainer(this.find("room_details"));
         this.var_685 = IWindowContainer(this.find("public_space_details"));
         this.var_2298 = IWindowContainer(this.find("owner_name_cont"));
         this.var_2300 = IWindowContainer(this.find("rating_cont"));
         this.var_1285 = IWindowContainer(this.find("room_buttons"));
         this.var_801 = ITextWindow(this.find("room_name"));
         this.var_1038 = ITextWindow(this.find("public_space_name"));
         this._ownerName = ITextWindow(this.find("owner_name"));
         this.var_848 = ITextWindow(this.find("room_desc"));
         this.var_1284 = ITextWindow(this.find("public_space_desc"));
         this.var_1037 = ITextWindow(this.find("owner_caption"));
         this.var_850 = ITextWindow(this.find("rating_caption"));
         this.var_1628 = ITextWindow(this.find("rating_txt"));
         this.var_232 = IWindowContainer(this.find("event_info"));
         this.var_849 = IWindowContainer(this.find("event_details"));
         this.var_1625 = IWindowContainer(this.find("event_buttons"));
         this.var_2302 = ITextWindow(this.find("event_name"));
         this.var_686 = ITextWindow(this.find("event_desc"));
         this.var_1286 = IContainerButtonWindow(this.find("facebook_like_button"));
         this._rateButton = IContainerButtonWindow(this.find("rate_up_button"));
         this.var_1287 = IContainerButtonWindow(this.find("add_favourite_button"));
         this.var_1282 = IContainerButtonWindow(this.find("rem_favourite_button"));
         this.var_1288 = IContainerButtonWindow(this.find("make_home_button"));
         this.var_1283 = IContainerButtonWindow(this.find("unmake_home_button"));
         this.var_1629 = IButtonWindow(this.find("room_settings_button"));
         this.var_1627 = IButtonWindow(this.find("create_event_button"));
         this.var_1626 = IButtonWindow(this.find("edit_event_button"));
         this.var_851 = IWindowContainer(this.find("embed_info"));
         this.var_1289 = ITextWindow(this.find("embed_info_txt"));
         this.var_1036 = ITextFieldWindow(this.find("embed_src_txt"));
         this.var_62 = IWindowContainer(this.find("buttons_container"));
         this.var_1035 = IButtonWindow(this.find("exit_room_button"));
         this.var_852 = IButtonWindow(this.find("zoom_button"));
         Util.setProcDirectly(this.var_1287,this.onAddFavouriteClick);
         Util.setProcDirectly(this.var_1282,this.onRemoveFavouriteClick);
         Util.setProcDirectly(this.var_1629,this.onRoomSettingsClick);
         Util.setProcDirectly(this.var_1288,this.onMakeHomeClick);
         Util.setProcDirectly(this.var_1283,this.onUnmakeHomeClick);
         Util.setProcDirectly(this.var_1627,this.onEventSettingsClick);
         Util.setProcDirectly(this.var_1626,this.onEventSettingsClick);
         Util.setProcDirectly(this.var_1036,this.onEmbedSrcClick);
         Util.setProcDirectly(this._rateButton,this.onThumbUp);
         Util.setProcDirectly(this.var_1286,this.onFacebookLike);
         Util.setProcDirectly(this.var_852,this.onZoomClick);
         Util.setProcDirectly(this.var_1035,this.onExitRoomClick);
         this._navigator.refreshButton(this.var_1287,"favourite",true,null,0);
         this._navigator.refreshButton(this.var_1282,"favourite",true,null,0);
         this._navigator.refreshButton(this.var_1288,"home",true,null,0);
         this._navigator.refreshButton(this.var_1283,"home",true,null,0);
         this._window.findChildByName("close").procedure = this.onCloseButtonClick;
         Util.setProcDirectly(this.var_266,this.onHover);
         Util.setProcDirectly(this.var_232,this.onHover);
         this.var_1037.width = this.var_1037.textWidth;
         Util.moveChildrenToRow(this.var_2298,["owner_caption","owner_name"],this.var_1037.x,this.var_1037.y,3);
         this.var_850.width = this.var_850.textWidth;
         Util.moveChildrenToRow(this.var_2300,["rating_caption","rating_txt"],this.var_850.x,this.var_850.y,3);
         this.var_1289.height = this.var_1289.textHeight + 5;
         Util.moveChildrenToColumn(this.var_851,["embed_info_txt","embed_src_txt"],this.var_1289.y,2);
         this.var_851.height = Util.getLowestPoint(this.var_851) + 5;
         this.var_2619 = this._window.y + this._window.height;
      }
      
      private function find(param1:String) : IWindow
      {
         var _loc2_:IWindow = this._window.findChildByName(param1);
         if(_loc2_ == null)
         {
            throw new Error("Window element with name: " + param1 + " cannot be found!");
         }
         return _loc2_;
      }
      
      private function getButtonsMinHeight() : int
      {
         return !!this._navigator.data.currentRoomOwner ? 0 : 21;
      }
      
      private function getRoomInfoMinHeight() : int
      {
         return 37;
      }
      
      private function getEventInfoMinHeight() : int
      {
         return 18;
      }
      
      public function onAddFavouriteClick(param1:WindowEvent, param2:IWindow) : void
      {
         var _loc3_:* = null;
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         if(this._navigator.data.enteredGuestRoom == null)
         {
            return;
         }
         if(this._navigator.data.isFavouritesFull())
         {
            _loc3_ = new SimpleAlertView(this._navigator,"${navigator.favouritesfull.title}","${navigator.favouritesfull.body}");
            _loc3_.show();
         }
         else
         {
            this._navigator.send(new AddFavouriteRoomMessageComposer(this._navigator.data.enteredGuestRoom.flatId));
         }
      }
      
      public function onRemoveFavouriteClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         if(this._navigator.data.enteredGuestRoom == null)
         {
            return;
         }
         this._navigator.send(new DeleteFavouriteRoomMessageComposer(this._navigator.data.enteredGuestRoom.flatId));
      }
      
      private function onEventSettingsClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         if(this._navigator.data.roomEventData == null)
         {
            if(this._navigator.data.currentRoomOwner)
            {
               this._navigator.send(new CanCreateEventMessageComposer());
            }
         }
         else
         {
            this.startEventEdit();
         }
      }
      
      private function onRoomSettingsClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var _loc3_:GuestRoomData = this._navigator.data.enteredGuestRoom;
         if(_loc3_ == null)
         {
            Logger.log("No entered room data?!");
            return;
         }
         this.startRoomSettingsEdit(_loc3_.flatId);
      }
      
      private function onMakeHomeClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var _loc3_:GuestRoomData = this._navigator.data.enteredGuestRoom;
         if(_loc3_ == null)
         {
            Logger.log("No entered room data?!");
            return;
         }
         Logger.log("SETTING HOME ROOM TO: " + _loc3_.flatId);
         this._navigator.send(new UpdateNavigatorSettingsMessageComposer(_loc3_.flatId));
      }
      
      private function onUnmakeHomeClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         Logger.log("CLEARING HOME ROOM:");
         this._navigator.send(new UpdateNavigatorSettingsMessageComposer(0));
      }
      
      private function onCloseButtonClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         this.hideInfo(null);
      }
      
      private function onThumbUp(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         this._navigator.send(new RateFlatMessageComposer(1));
      }
      
      private function onThumbDown(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         this._navigator.send(new RateFlatMessageComposer(-1));
      }
      
      private function onFacebookLike(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         HabboWebTools.facebookLike(this._navigator.data.enteredGuestRoom.flatId);
      }
      
      private function onEmbedSrcClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         this.var_1036.setSelection(0,this.var_1036.text.length);
      }
      
      private function onZoomClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var _loc3_:HabboToolbarEvent = new HabboToolbarEvent(HabboToolbarEvent.const_39);
         _loc3_.iconId = HabboToolbarIconEnum.ZOOM;
         _loc3_.iconName = "ZOOM";
         this._navigator.toolbar.events.dispatchEvent(_loc3_);
      }
      
      private function onExitRoomClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var _loc3_:HabboToolbarEvent = new HabboToolbarEvent(HabboToolbarEvent.const_39);
         _loc3_.iconId = HabboToolbarIconEnum.EXITROOM;
         _loc3_.iconName = "EXITROOM";
         this._navigator.toolbar.events.dispatchEvent(_loc3_);
      }
      
      private function onToolbarIconState(param1:HabboToolbarSetIconEvent) : void
      {
         if(param1.type != HabboToolbarSetIconEvent.const_101)
         {
            return;
         }
         switch(param1.iconId)
         {
            case HabboToolbarIconEnum.ZOOM:
               this.var_2299 = param1.iconState;
               this.refreshButtons();
               break;
            case HabboToolbarIconEnum.EXITROOM:
               this.var_2301 = param1.iconState;
               this.refreshButtons();
         }
      }
      
      private function onHover(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER)
         {
            return;
         }
         this.var_231.reset();
      }
      
      private function hideInfo(param1:Event) : void
      {
         this._navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_468,HabboToolbarIconEnum.ROOMINFO,this._window,false));
      }
      
      private function getEmbedData() : String
      {
         var _loc1_:* = null;
         var _loc2_:* = null;
         if(this._navigator.data.enteredGuestRoom != null)
         {
            _loc1_ = "private";
            _loc2_ = "" + this._navigator.data.enteredGuestRoom.flatId;
         }
         else
         {
            _loc1_ = "public";
            _loc2_ = "" + this._navigator.data.publicSpaceNodeId;
            Logger.log("Node id is: " + _loc2_);
         }
         var _loc3_:String = this._navigator.configuration.getKey("user.hash","");
         this._navigator.registerParameter("navigator.embed.src","roomType",_loc1_);
         this._navigator.registerParameter("navigator.embed.src","embedCode",_loc3_);
         this._navigator.registerParameter("navigator.embed.src","roomId",_loc2_);
         return this._navigator.getText("navigator.embed.src");
      }
      
      public function registerToolbarEvents() : void
      {
         if(this._navigator.toolbar)
         {
            this._navigator.toolbar.events.addEventListener(HabboToolbarSetIconEvent.const_101,this.onToolbarIconState);
         }
      }
   }
}
