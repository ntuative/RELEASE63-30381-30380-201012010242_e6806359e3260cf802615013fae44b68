package com.sulake.habbo.widget.messages
{
   public class RoomWidgetUserActionMessage extends RoomWidgetMessage
   {
      
      public static const const_630:String = "RWUAM_WHISPER_USER";
      
      public static const const_785:String = "RWUAM_IGNORE_USER";
      
      public static const const_753:String = "RWUAM_UNIGNORE_USER";
      
      public static const const_443:String = "RWUAM_KICK_USER";
      
      public static const const_734:String = "RWUAM_BAN_USER";
      
      public static const const_605:String = "RWUAM_SEND_FRIEND_REQUEST";
      
      public static const const_698:String = "RWUAM_RESPECT_USER";
      
      public static const const_759:String = "RWUAM_GIVE_RIGHTS";
      
      public static const const_778:String = "RWUAM_TAKE_RIGHTS";
      
      public static const const_767:String = "RWUAM_START_TRADING";
      
      public static const const_794:String = "RWUAM_OPEN_HOME_PAGE";
      
      public static const const_476:String = "RWUAM_KICK_BOT";
      
      public static const const_607:String = "RWUAM_REPORT";
      
      public static const const_402:String = "RWUAM_PICKUP_PET";
      
      public static const const_1305:String = "RWUAM_TRAIN_PET";
      
      public static const const_488:String = " RWUAM_RESPECT_PET";
      
      public static const const_349:String = "RWUAM_REQUEST_PET_UPDATE";
       
      
      private var _userId:int = 0;
      
      public function RoomWidgetUserActionMessage(param1:String, param2:int = 0)
      {
         super(param1);
         this._userId = param2;
      }
      
      public function get userId() : int
      {
         return this._userId;
      }
   }
}
