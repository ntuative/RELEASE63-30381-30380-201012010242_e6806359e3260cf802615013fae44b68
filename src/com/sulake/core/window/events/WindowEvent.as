package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   import flash.events.Event;
   
   public class WindowEvent extends Event
   {
      
      public static const const_1431:String = "WE_CREATE";
      
      public static const const_1459:String = "WE_CREATED";
      
      public static const const_1256:String = "WE_DESTROY";
      
      public static const const_267:String = "WE_DESTROYED";
      
      public static const const_1247:String = "WE_OPEN";
      
      public static const const_1497:String = "WE_OPENED";
      
      public static const const_1428:String = "WE_CLOSE";
      
      public static const const_1487:String = "WE_CLOSED";
      
      public static const const_1461:String = "WE_FOCUS";
      
      public static const const_168:String = "WE_FOCUSED";
      
      public static const const_1445:String = "WE_UNFOCUS";
      
      public static const const_1368:String = "WE_UNFOCUSED";
      
      public static const const_1451:String = "WE_ACTIVATE";
      
      public static const const_1321:String = "WE_ACTIVATED";
      
      public static const const_1359:String = "WE_DEACTIVATE";
      
      public static const const_970:String = "WE_DEACTIVATED";
      
      public static const const_420:String = "WE_SELECT";
      
      public static const const_59:String = "WE_SELECTED";
      
      public static const const_611:String = "WE_UNSELECT";
      
      public static const const_674:String = "WE_UNSELECTED";
      
      public static const const_1771:String = "WE_ATTACH";
      
      public static const const_1766:String = "WE_ATTACHED";
      
      public static const const_1769:String = "WE_DETACH";
      
      public static const const_1684:String = "WE_DETACHED";
      
      public static const const_1384:String = "WE_LOCK";
      
      public static const const_1294:String = "WE_LOCKED";
      
      public static const const_1360:String = "WE_UNLOCK";
      
      public static const const_1373:String = "WE_UNLOCKED";
      
      public static const const_757:String = "WE_ENABLE";
      
      public static const const_288:String = "WE_ENABLED";
      
      public static const const_775:String = "WE_DISABLE";
      
      public static const const_248:String = "WE_DISABLED";
      
      public static const const_1313:String = "WE_RELOCATE";
      
      public static const const_335:String = "WE_RELOCATED";
      
      public static const const_1417:String = "WE_RESIZE";
      
      public static const const_46:String = "WE_RESIZED";
      
      public static const const_1486:String = "WE_MINIMIZE";
      
      public static const const_1258:String = "WE_MINIMIZED";
      
      public static const const_1410:String = "WE_MAXIMIZE";
      
      public static const const_1257:String = "WE_MAXIMIZED";
      
      public static const const_1467:String = "WE_RESTORE";
      
      public static const const_1273:String = "WE_RESTORED";
      
      public static const const_1718:String = "WE_ARRANGE";
      
      public static const const_1699:String = "WE_ARRANGED";
      
      public static const const_98:String = "WE_UPDATE";
      
      public static const const_1574:String = "WE_UPDATED";
      
      public static const const_1657:String = "WE_CHILD_RELOCATE";
      
      public static const const_522:String = "WE_CHILD_RELOCATED";
      
      public static const const_1779:String = "WE_CHILD_RESIZE";
      
      public static const const_298:String = "WE_CHILD_RESIZED";
      
      public static const const_1572:String = "WE_CHILD_REMOVE";
      
      public static const const_471:String = "WE_CHILD_REMOVED";
      
      public static const const_1565:String = "WE_PARENT_RELOCATE";
      
      public static const const_1723:String = "WE_PARENT_RELOCATED";
      
      public static const const_1727:String = "WE_PARENT_RESIZE";
      
      public static const const_1310:String = "WE_PARENT_RESIZED";
      
      public static const const_184:String = "WE_OK";
      
      public static const const_800:String = "WE_CANCEL";
      
      public static const const_104:String = "WE_CHANGE";
      
      public static const WINDOW_EVENT_MESSAGE:String = "WE_MESSAGE";
      
      public static const const_411:String = "WE_SCROLL";
      
      public static const const_150:String = "";
       
      
      protected var _type:String = "";
      
      protected var _window:IWindow;
      
      protected var var_1855:IWindow;
      
      protected var var_1854:Boolean;
      
      public function WindowEvent(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false, param5:Boolean = false)
      {
         this._type = param1;
         this._window = param2;
         this.var_1855 = param3;
         this.var_1854 = false;
         super(param1,param4,param5);
      }
      
      public function set type(param1:String) : void
      {
         this._type = param1;
      }
      
      override public function get type() : String
      {
         return this._type;
      }
      
      public function get window() : IWindow
      {
         return this._window;
      }
      
      public function get related() : IWindow
      {
         return this.var_1855;
      }
      
      override public function clone() : Event
      {
         return new WindowEvent(this._type,this.window,this.related,bubbles,cancelable);
      }
      
      public function preventWindowOperation() : void
      {
         if(cancelable)
         {
            this.var_1854 = true;
            stopImmediatePropagation();
            return;
         }
         throw new Error("Attempted to prevent window operation that is not canceable!");
      }
      
      public function isWindowOperationPrevented() : Boolean
      {
         return this.var_1854;
      }
      
      override public function toString() : String
      {
         return formatToString("WindowEvent","type","bubbles","cancelable","window");
      }
   }
}
