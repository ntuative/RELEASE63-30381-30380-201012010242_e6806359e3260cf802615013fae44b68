package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   import flash.events.Event;
   
   public class WindowNotifyEvent extends WindowEvent
   {
      
      public static const const_1324:String = "WN_CRETAE";
      
      public static const const_1458:String = "WN_CREATED";
      
      public static const const_1104:String = "WN_DESTROY";
      
      public static const const_1108:String = "WN_DESTROYED";
      
      public static const const_1052:String = "WN_OPEN";
      
      public static const const_1059:String = "WN_OPENED";
      
      public static const const_916:String = "WN_CLOSE";
      
      public static const const_994:String = "WN_CLOSED";
      
      public static const const_1020:String = "WN_FOCUS";
      
      public static const const_1044:String = "WN_FOCUSED";
      
      public static const const_1038:String = "WN_UNFOCUS";
      
      public static const const_904:String = "WN_UNFOCUSED";
      
      public static const const_903:String = "WN_ACTIVATE";
      
      public static const const_350:String = "WN_ACTVATED";
      
      public static const const_972:String = "WN_DEACTIVATE";
      
      public static const const_886:String = "WN_DEACTIVATED";
      
      public static const const_491:String = "WN_SELECT";
      
      public static const const_344:String = "WN_SELECTED";
      
      public static const const_559:String = "WN_UNSELECT";
      
      public static const const_684:String = "WN_UNSELECTED";
      
      public static const const_1098:String = "WN_LOCK";
      
      public static const const_919:String = "WN_LOCKED";
      
      public static const const_906:String = "WN_UNLOCK";
      
      public static const const_965:String = "WN_UNLOCKED";
      
      public static const const_901:String = "WN_ENABLE";
      
      public static const const_575:String = "WN_ENABLED";
      
      public static const const_975:String = "WN_DISABLE";
      
      public static const const_583:String = "WN_DISABLED";
      
      public static const const_571:String = "WN_RESIZE";
      
      public static const const_180:String = "WN_RESIZED";
      
      public static const const_945:String = "WN_RELOCATE";
      
      public static const const_394:String = "WN_RELOCATED";
      
      public static const const_939:String = "WN_MINIMIZE";
      
      public static const const_1022:String = "WN_MINIMIZED";
      
      public static const const_910:String = "WN_MAXIMIZE";
      
      public static const const_1016:String = "WN_MAXIMIZED";
      
      public static const const_1008:String = "WN_RESTORE";
      
      public static const const_1063:String = "WN_RESTORED";
      
      public static const const_1573:String = "WN_ARRANGE";
      
      public static const const_1624:String = "WN_ARRANGED";
      
      public static const const_1640:String = "WN_UPDATE";
      
      public static const const_1688:String = "WN_UPDATED";
      
      public static const const_355:String = "WN_CHILD_ADDED";
      
      public static const const_700:String = "WN_CHILD_REMOVED";
      
      public static const WINDOW_NOTIFY_CHILD_RESIZED:String = "WN_CHILD_RESIZED";
      
      public static const const_294:String = "WN_CHILD_RELOCATED";
      
      public static const const_210:String = "WN_CHILD_ACTIVATED";
      
      public static const const_453:String = "WN_PARENT_ADDED";
      
      public static const const_1046:String = "WN_PARENT_REMOVED";
      
      public static const const_415:String = "WN_PARENT_RESIZED";
      
      public static const const_1068:String = "WN_PARENT_RELOCATED";
      
      public static const const_732:String = "WN_PARENT_ACTIVATED";
      
      public static const const_532:String = "WN_STATE_UPDATED";
      
      public static const const_526:String = "WN_STYLE_UPDATED";
      
      public static const const_408:String = "WN_PARAM_UPDATED";
      
      public static const const_1720:String = "";
       
      
      public function WindowNotifyEvent(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false)
      {
         super(param1,param2,param3,false,param4);
      }
      
      override public function clone() : Event
      {
         return new WindowNotifyEvent(type,_window,var_1855,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("WindowNotifyEvent","type","cancelable");
      }
   }
}
